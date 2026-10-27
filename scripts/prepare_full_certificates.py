"""Untrusted, resumable preprocessing of the unchanged full certificate data.

The generated factor lists and Pocklington data are inputs to Lean, not proof
assumptions. Intermediate files live in ignored tmp/full-cert-cache/.
"""
from pathlib import Path
import csv
import gzip
import hashlib
import json
from math import gcd, isqrt
import time

import numpy as np

ROOT = Path(__file__).resolve().parents[1]
CACHE = ROOT / 'tmp/full-cert-cache'


class FastFactors:
    def __init__(self, limit=25842944):
        self.limit = limit
        self.spf = np.zeros(limit + 1, dtype=np.uint32)
        for p in range(2, isqrt(limit) + 1):
            if not self.spf[p]:
                multiples = self.spf[p*p::p]
                multiples[multiples == 0] = p
        self.trial = [p for p in range(2, 60000) if not self.spf[p]]

    def __call__(self, n):
        if n < 1 or n >= 60000**2:
            raise ValueError(('factorization range', n))
        out = []
        if n > self.limit:
            for p in self.trial:
                if p*p > n or n <= self.limit:
                    break
                while n % p == 0:
                    out.append(p)
                    n //= p
        if n > self.limit:
            out.append(n)
        else:
            while n > 1:
                p = int(self.spf[n]) or n
                out.append(p)
                n //= p
        return out


def save(name, value):
    with gzip.open(CACHE / name, 'wt', encoding='utf-8', compresslevel=1) as stream:
        json.dump(value, stream, separators=(',', ':'))


def main():
    CACHE.mkdir(parents=True, exist_ok=True)
    started = time.monotonic()
    sources = {name: hashlib.sha256((ROOT/'certificates'/name).read_bytes()).hexdigest()
               for name in ['rebuilt_uniform.json.gz', 'rebuilt_finite.csv']}
    factor = FastFactors()
    primes = set()

    def factors(n):
        fs = factor(n)
        primes.update(p for p in fs if p >= 100000)
        return fs

    with gzip.open(ROOT/'certificates/rebuilt_uniform.json.gz', 'rt', encoding='utf-8') as stream:
        uniform = json.load(stream)
    metadata = []
    for item in uniform:
        q, d, ell = item['q'], item['d'], item['ell']
        result = dict(q=q, d=d, ell=ell, T=item['T'], prefix=factors(d*ell), oddPrefix=factors(d))
        result['chains'] = [[r, s, [[j, factors(j)] for j in js]] for r, s, js in item['chains']]
        result['odd'] = [[r, s, k, factors(k)] for r, s, k in item['odd']]
        save(f'uniform-{q}.json.gz', result)
        metadata.append(dict(q=q, chains=len(result['chains']),
                             points=sum(len(row[2]) for row in result['chains']), odd=len(result['odd'])))
        print(f'Prepared uniform q={q}; {len(primes)} large factor primes; {time.monotonic()-started:.1f}s', flush=True)
    rows = {item['q']: [] for item in uniform}
    with (ROOT/'certificates/rebuilt_finite.csv').open(newline='', encoding='utf-8') as stream:
        for row in csv.DictReader(stream):
            q, n = int(row['q']), int(row['N'])
            values = [int(row[key]) for key in ['a_minus_minus', 'a_plus_plus', 'a_minus_plus']]
            rows[q].append([n, values, [[factors(a), factors(n-a)] for a in values]])
    for q, records in rows.items():
        save(f'csv-{q}.json.gz', records)
        print(f'Prepared CSV q={q}: {len(records)} rows', flush=True)
    save('large-primes.json.gz', sorted(primes))
    memo = {}

    def prime_expression(p):
        if p < 100000:
            return f'.small {p}'
        if p in memo:
            return memo[p]
        counts = {}
        for q in factor(p-1):
            counts[q] = counts.get(q, 0) + 1
        entries = []
        for q, exponent in sorted(counts.items()):
            child = prime_expression(q)
            base = next((a for a in range(2, 4098) if pow(a, p-1, p) == 1
                         and gcd((pow(a, (p-1)//q, p)-1) % p, p) == 1), None)
            if base is None:
                raise RuntimeError(('Pocklington search exhausted', p, q))
            entries.append(f'({base},{exponent-1},({child}))')
        memo[p] = f'.pock {p} [{",".join(entries)}]'
        return memo[p]

    with gzip.open(CACHE/'prime-certificates.jsonl.gz', 'wt', encoding='utf-8', compresslevel=1) as stream:
        for index, p in enumerate(sorted(primes)):
            stream.write(json.dumps([p, prime_expression(p)], separators=(',', ':'))+'\n')
            if index % 10000 == 0:
                print(f'Prepared {index}/{len(primes)} Pocklington certificates', flush=True)
    report = dict(sources=sources, uniform=metadata, large_primes=len(primes),
                  csv_rows=sum(map(len, rows.values())), seconds=time.monotonic()-started)
    (CACHE/'prepared.json').write_text(json.dumps(report, indent=2), encoding='utf-8')
    print(json.dumps(report), flush=True)


if __name__ == '__main__':
    main()
