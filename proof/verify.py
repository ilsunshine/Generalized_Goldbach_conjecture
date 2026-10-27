"""独立检验论文配套的六个 CSV；仅用 Python 标准库，所有条件均为精确整数。

运行：python proof/verify.py。外部检验不代替 Lean 内核中的证书证明。
omega 计不同素因子；g(c*j) 必须使用素因子集合的并，不能假设完全乘法性。
"""
from __future__ import annotations

import argparse
from array import array
import csv
import hashlib
import json
from math import gcd, isqrt, prod
from pathlib import Path

PROOF = Path(__file__).resolve().parent
QS = (11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59)
LIMIT = 25842944
FILES = {
    'uniform_parameters.csv': ['q', 'd', 'ell', 'T'],
    'uniform_even_chains.csv': ['q', 'residue', 'sign', 'coefficients'],
    'uniform_odd_witnesses.csv': ['q', 'residue', 'sign', 'k'],
    'small_even_chains.csv': ['q', 'stage', 'residue', 'sign', 'points'],
    'small_odd_witnesses.csv': ['q', 'residue', 'sign', 'A'],
    'finite_witnesses.csv': ['N', 'q', 'a_minus_minus', 'a_plus_plus', 'a_minus_plus'],
}


def require(ok, context):
    if not ok:
        raise ValueError(context)  # 不使用 assert，python -O 也不能跳过数学检验。


def rows(directory, name):
    with (directory / 'data' / name).open(encoding='utf-8', newline='') as stream:
        reader = csv.reader(stream)
        require(next(reader, None) == FILES[name], ('CSV header', name))
        for index, row in enumerate(reader, 2):
            require(len(row) == len(FILES[name]), ('CSV columns', name, index))
            yield row


class Arithmetic:
    def __init__(self):
        # 最小素因子表约 104 MB；不复用生成器的符号筛，逐个素因子除尽全部幂。
        self.spf = array('I', [0]) * (LIMIT + 1)
        for p in range(2, isqrt(LIMIT) + 1):
            if self.spf[p] == 0:
                for n in range(p * p, LIMIT + 1, p):
                    if self.spf[n] == 0:
                        self.spf[n] = p
        self.trial = [p for p in range(2, 60000) if self.spf[p] == 0]
        self.small = {}

    def support(self, n):
        require(n > 0, ('nonpositive factorization', n))
        factors = set()
        if n > LIMIT:
            require(n < 60000**2, ('outside complete trial-division range', n))
            for p in self.trial:
                if p * p > n:
                    break
                if n % p == 0:
                    factors.add(p)
                    while n % p == 0:
                        n //= p
            if n > 1:
                factors.add(n)
        else:
            while n > 1:
                p = self.spf[n] or n
                factors.add(p)
                while n % p == 0:
                    n //= p
        return factors

    def prime(self, n):
        return n >= 2 and self.support(n) == {n}

    def sign(self, n):
        return (-1) ** len(self.support(n))

    def product_sign(self, c, j):
        if c not in self.small:
            self.small[c] = self.support(c)
        return (-1) ** len(self.small[c] | self.support(j))


def check_chain(arith, q, modulus, residue, sign, points, c, lower, upper, divisor):
    require(isinstance(points, list) and points and all(type(j) is int for j in points), 'integer chain')
    require((q - 1) * c * points[0] < lower < q * c * points[0], ('strict start', q, residue))
    require(q * c * points[-1] > upper, ('strict end', q, residue))
    for j in points:
        require(0 < j <= LIMIT, ('chain coefficient', q, j))
        require(c * j % modulus == residue and c * j % divisor == 0, ('chain congruence/divisor', q, j))
        require(arith.product_sign(c, j) == sign, ('chain sign', q, residue, j))
    require(all(a < b and (q - 1) * b < q * a for a, b in zip(points, points[1:])), ('strict overlap', q, residue))


def unique_key(seen, expected, key):
    require(key in expected and key not in seen, ('extra/duplicate key', key))
    seen.add(key)


def main(directory=PROOF):
    record = json.loads((directory / 'manifest.json').read_text(encoding='utf-8'))
    required = {'paper.pdf'} | {'data/' + name for name in FILES}
    require(set(record['sha256']) == required, 'published file inventory')
    require({p.name for p in (directory / 'data').glob('*.csv')} == set(FILES), 'CSV inventory')
    for name, digest in record['sha256'].items():
        require(hashlib.sha256((directory / name).read_bytes()).hexdigest() == digest, ('SHA256', name))
    print('Building independent least-prime-factor table...', flush=True)
    a = Arithmetic()
    parameters = {}
    # uniform_parameters.csv：正文 §4 的统一参数定义及 §7 表 1；d=rad(q-1)，T=128*d*q²*(q-1)²。
    for row in rows(directory, 'uniform_parameters.csv'):
        q, d, ell, threshold = map(int, row)
        require(q in QS and q not in parameters, ('parameter key', q))
        require(a.prime(q) and d == prod(a.support(q - 1)), ('radical', q))
        require(threshold == 128 * d * q*q * (q-1)**2, ('threshold', q))
        require(a.prime(ell) and gcd(ell, d * q * (q - 1)) == 1, ('scaling prime', q))
        parameters[q] = d, ell, threshold
    require(set(parameters) == set(QS), 'parameter coverage')

    # uniform_even_chains.csv：§4 偶表 eq:uniform-even-data；点 n=d*ell*j，覆盖 [T,ell*T]。
    expected = {(q, r, s) for q in QS for r in range((q-1)*q) if r % q for s in (-1, 1)}
    seen, point_count, maximum = set(), 0, 0
    for q, r, s, js in rows(directory, 'uniform_even_chains.csv'):
        q, r, s, js = int(q), int(r), int(s), json.loads(js)
        unique_key(seen, expected, (q, r, s))
        d, ell, threshold = parameters[q]
        check_chain(a, q, d*q*(q-1), d*r, s, js, d*ell, threshold, ell*threshold, ell)
        point_count += len(js)
        maximum = max(maximum, max(js))
    require(seen == expected and len(seen) == 31672 and point_count == 1770208, 'uniform chain coverage/count')
    require(maximum == 25839274, 'maximum coefficient')
    print('Uniform even chains: 31672 chains / 1770208 points passed.', flush=True)

    # uniform_odd_witnesses.csv：§4 奇表 eq:uniform-odd-data；0<k<128*q²，k≡r mod q²，g(d*k)=s。
    expected = {(q, r, s) for q in QS for r in range(q*q) if r % q for s in (-1, 1)}
    seen = set()
    for row in rows(directory, 'uniform_odd_witnesses.csv'):
        q, r, s, k = map(int, row)
        unique_key(seen, expected, (q, r, s))
        require(0 < k < 128*q*q and k % (q*q) == r and a.product_sign(parameters[q][0], k) == s,
                ('uniform odd witness', q, r, s))
    require(seen == expected and len(seen) == 32492, 'uniform odd coverage')

    # small_even_chains.csv：命题 5.1、5.3；q=3,5 单阶段，q=7 两阶段；points 直接是 n。
    stages = {(3, 0): (12, 2, 100000, 500000, 5), (5, 0): (40, 2, 100000, 300000, 3),
              (7, 1): (252, 6, 100000, 1000000, 1), (7, 2): (252, 6, 1000000, 5000000, 5)}
    expected = {(q, stage, r, s) for (q, stage), (m, d, *_) in stages.items()
                for r in range(m) if r % d == 0 and r % q for s in (-1, 1)}
    seen, small_points = set(), 0
    for q, stage, r, s, ns in rows(directory, 'small_even_chains.csv'):
        q, stage, r, s, ns = int(q), int(stage), int(r), int(s), json.loads(ns)
        unique_key(seen, expected, (q, stage, r, s))
        m, _, lower, upper, divisor = stages[q, stage]
        check_chain(a, q, m, r, s, ns, 1, lower, upper, divisor)
        small_points += len(ns)
    require(seen == expected and len(seen) == 184 and small_points == 2203, 'small chain coverage/count')

    # small_odd_witnesses.csv：命题 5.1、5.3；偶/6倍数 A 的模 q² 类、符号和明确上界。
    expected = {(q, r, s) for q in (3, 5, 7) for r in range(q*q) if r % q for s in (-1, 1)}
    seen = set()
    for row in rows(directory, 'small_odd_witnesses.csv'):
        q, r, s, n = map(int, row)
        unique_key(seen, expected, (q, r, s))
        bound = {3: 64, 5: 312}.get(q, 1074 if s == -1 else 2910 if r == 19 else 2777)
        require(0 < n <= bound and n % (6 if q == 7 else 2) == 0 and n % (q*q) == r and a.sign(n) == s,
                ('small odd witness', q, r, s))
    require(seen == expected and len(seen) == 136, 'small odd coverage')
    # 引理 5.2 的三个例外：必须另外检验正正分解，不能从缺失的正号合法参数推出。
    require([n for n in range(100000, 104761) if n % 2 and n % 15 == 0 and n % 49 == 19]
            == [100665, 102135, 103605], 'q7 exceptional class')
    for n, x, y in ((100665, 1, 100664), (102135, 18, 102117), (103605, 6, 103599)):
        require(n == x + y and a.sign(x) == a.sign(y) == 1, ('q7 exception', n))
    print('Odd witnesses, small chains and three exceptions passed.', flush=True)

    # finite_witnesses.csv：命题 7.1–7.3、eq:csv-signs、附录 C.6。
    # 完整枚举 P(q)*k 的候选集合；三个 a 检验 --、++、-+，交换最后一项得到 +-。
    prefixes = {q: prod(p for p in range(3, q) if a.prime(p)) for q in QS}
    expected = {(prefixes[q]*k, q) for q in QS
                for k in range((100000 + prefixes[q] - 1)//prefixes[q], (parameters[q][2]-1)//prefixes[q]+1)
                if k % q}
    seen, maximum = set(), 0
    for row in rows(directory, 'finite_witnesses.csv'):
        n, q, *addends = map(int, row)
        unique_key(seen, expected, (n, q))
        for x, pair in zip(addends, ((-1, -1), (1, 1), (-1, 1))):
            require(0 < x < n and (a.sign(x), a.sign(n-x)) == pair, ('finite decomposition', n, q, x))
        maximum = max(maximum, n)
    require(seen == expected and len(seen) == 149753 and maximum == 3234846615, 'finite coverage/count/maximum')
    print('PASS: all six CSVs; 149753 finite rows / 449259 decompositions. External check, not a Lean proof.', flush=True)


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--proof-dir', type=Path, default=PROOF)
    main(parser.parse_args().proof_dir)
