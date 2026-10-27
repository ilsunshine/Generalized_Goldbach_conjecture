"""Reconstruct finite certificates from the PDF's mathematical specifications.

Requires NumPy. This is a new generator, not a recovered original attachment.
Run verify_certificates.py independently after generation. No Lean proofs here.
"""
from __future__ import annotations

import csv
import gzip
import hashlib
import io
import json
from math import gcd, isqrt, prod
from pathlib import Path

import numpy as np

ROOT = Path(__file__).resolve().parents[1]
DEST = ROOT / "certificates"
Q = [11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59]
ELLS = [3, 5, 3, 5, 3, 3, 7, 5, 3, 5, 3, 3, 3]
LIMIT = max(128 * q * q * (q - 1) for q in Q)


def factors(n: int) -> list[int]:
    result = []
    for p in range(2, isqrt(n) + 1):
        if n % p == 0:
            result.append(p)
            while n % p == 0:
                n //= p
        if p * p > n:
            break
    if n > 1:
        result.append(n)
    return result


def isprime(n: int) -> bool:
    return n >= 2 and factors(n) == [n]


def radical(n: int) -> int:
    return prod(factors(n))


def prefix(q: int) -> int:
    return prod(p for p in range(3, q) if isprime(p))


def threshold(q: int) -> int:
    return 128 * radical(q - 1) * q**2 * (q - 1)**2


def make_sign_table(limit: int) -> tuple[np.ndarray, np.ndarray]:
    composite = np.zeros(limit + 1, dtype=np.bool_)
    composite[:2] = True
    for p in range(2, isqrt(limit) + 1):
        if not composite[p]:
            composite[p * p::p] = True
    primes = np.flatnonzero(~composite)
    signs = np.ones(limit + 1, dtype=np.int8)
    for p in primes:
        signs[int(p)::int(p)] *= -1
    return signs, primes


def product_signs(base: np.ndarray, c: int, limit: int) -> np.ndarray:
    # For each prime of c, toggle precisely where it is absent from j.
    values = base[:limit + 1].copy()
    for p in factors(c):
        values *= -1
        values[p::p] *= -1
    return values


def greedy_chain(q: int, step: int, residue: int, s: int, lower: int,
                 upper: int, coefficient: int, signs: np.ndarray) -> list[int]:
    """Store j, representing n=coefficient*j, in one progression modulo step."""
    t = q - 1

    def largest(bound: int) -> int:
        j = bound - ((bound - residue) % step)
        while j > 0 and int(signs[j]) != s:
            j -= step
        return j

    first = largest((lower - 1) // (t * coefficient))
    if first <= 0 or coefficient * q * first <= lower:
        raise ValueError(("start", q, step, residue, s, lower))
    chain = [first]
    while coefficient * q * chain[-1] <= upper:
        nxt = largest((q * chain[-1] - 1) // t)
        if nxt <= chain[-1]:
            raise ValueError(("gap", q, step, residue, s, chain[-1]))
        chain.append(nxt)
    return chain


def small_data(base: np.ndarray) -> dict:
    result = {}
    for q, m, ell in [(3, 12, 5), (5, 40, 3)]:
        chains = []
        values = product_signs(base, ell, 500000)
        for r in range(m):
            if r % 2 == 0 and r % q:
                for s in [-1, 1]:
                    j = greedy_chain(q, m, r * pow(ell, -1, m) % m,
                                     s, 100000, ell * 100000, ell, values)
                    chains.append([r, s, [ell * a for a in j]])
        odd = []
        bound = {3: 64, 5: 312}[q]
        for r in range(q*q):
            if r % q:
                for s in [-1, 1]:
                    a = next(a for a in range(2, bound + 1, 2)
                             if a % (q*q) == r and int(base[a]) == s)
                    odd.append([r, s, a])
        result[str(q)] = {"m": m, "ell": ell, "chains": chains, "odd": odd}
    q7 = {"m": 252, "ell": 5, "stages": [], "odd": []}
    for lower, upper, coefficient in [(100000, 1000000, 1),
                                      (1000000, 5000000, 5)]:
        chains = []
        values = product_signs(base, coefficient, 1000000)
        for r in range(252):
            if r % 6 == 0 and r % 7:
                for s in [-1, 1]:
                    j = greedy_chain(7, 252, r * pow(coefficient, -1, 252) % 252,
                                     s, lower, upper, coefficient, values)
                    chains.append([r, s, [coefficient * a for a in j]])
        q7["stages"].append({"lower": lower, "upper": upper, "chains": chains})
    for r in range(49):
        if r % 7:
            for s in [-1, 1]:
                a = next(a for a in range(6, 2911, 6)
                         if a % 49 == r and int(base[a]) == s)
                q7["odd"].append([r, s, a])
    result["7"] = q7
    return result


def main() -> None:
    DEST.mkdir(exist_ok=True)
    print(f"Building exact signs through {LIMIT}", flush=True)
    base, primes = make_sign_table(LIMIT)
    all_uniform = []
    chain_points = 0
    for q, ell in zip(Q, ELLS):
        d, t, T = radical(q - 1), q - 1, threshold(q)
        h = t * q
        coefficient = d * ell
        max_j = 128 * q*q*t
        values = product_signs(base, coefficient, max_j)
        chains = []
        for r in range(h):
            if r % q:
                for s in [-1, 1]:
                    js = greedy_chain(q, h, r * pow(ell, -1, h) % h,
                                      s, T, ell*T, coefficient, values)
                    chains.append([r, s, js])
                    chain_points += len(js)
        odd_values = product_signs(base, d, 128*q*q)
        odd = []
        for r in range(q*q):
            if r % q:
                for s in [-1, 1]:
                    k = next(k for k in range(r, 128*q*q, q*q)
                             if k > 0 and int(odd_values[k]) == s)
                    odd.append([r, s, k])
        all_uniform.append({"q": q, "d": d, "ell": ell, "T": T,
                            "chains": chains, "odd": odd})
        print(f"q={q}: {len(chains)} chains, {len(odd)} odd witnesses", flush=True)
    # Suppress timestamp and path headers so regeneration is byte-reproducible.
    with (DEST / "rebuilt_uniform.json.gz").open("wb") as raw:
        with gzip.GzipFile(filename="", fileobj=raw, mode="wb", mtime=0) as compressed:
            with io.TextIOWrapper(compressed, encoding="utf-8", newline="\n") as f:
                json.dump(all_uniform, f, separators=(",", ":"))
    (DEST / "rebuilt_small.json").write_text(
        json.dumps(small_data(base), separators=(",", ":")) + "\n", encoding="utf-8")

    trial_primes = [int(p) for p in primes if p <= 60000]

    def sign(n: int) -> int:
        if n <= LIMIT:
            return int(base[n])
        parity = 0
        for p in trial_primes:
            if p*p > n:
                break
            if n % p == 0:
                parity ^= 1
                while n % p == 0:
                    n //= p
        if n > 1:
            parity ^= 1
        return 1 - 2*parity

    candidates = []
    rows = []
    with (DEST / "rebuilt_finite.csv").open("w", newline="", encoding="utf-8") as f:
        writer = csv.writer(f)
        writer.writerow(["N", "q", "a_minus_minus", "a_plus_plus", "a_minus_plus"])
        for q in Q:
            P, T = prefix(q), threshold(q)
            lo, hi = (100000 + P-1)//P, (T-1)//P
            count = 0
            for k in range(lo, hi+1):
                if k % q == 0:
                    continue
                N = P*k
                found = {}
                for a in range(1, N):
                    pair = (sign(a), sign(N-a))
                    if pair in [(-1, -1), (1, 1), (-1, 1)]:
                        found.setdefault(pair, a)
                    if len(found) == 3:
                        break
                writer.writerow([N, q, found[-1, -1], found[1, 1], found[-1, 1]])
                count += 1
                candidates.append(N)
            rows.append({"q": q, "d": radical(q-1), "ell": ELLS[Q.index(q)],
                         "P": P, "T": T, "count": count})
            print(f"Finite q={q}: {count}", flush=True)
    manifest = {"origin": "independently rebuilt from the PDF; not original attachments",
                "generator": "scripts/rebuild_certificates.py", "sign_table_limit": LIMIT,
                "even_chain_points": chain_points,
                "max_chain_coefficient": max(j for x in all_uniform
                                             for r, s, js in x["chains"] for j in js),
                "odd_witnesses": sum(len(x["odd"]) for x in all_uniform),
                "finite_candidates": len(candidates), "finite_witnesses": 3*len(candidates),
                "max_candidate": max(candidates), "rows": rows}
    manifest["sha256"] = {p.name: hashlib.sha256(p.read_bytes()).hexdigest()
                          for p in sorted(DEST.iterdir()) if p.suffix in [".gz", ".json", ".csv"]
                          and p.name != "manifest.json"}
    (DEST / "manifest.json").write_text(json.dumps(manifest, ensure_ascii=False, indent=2)+"\n",
                                         encoding="utf-8")
    print(json.dumps({k: v for k, v in manifest.items() if k != "rows"}), flush=True)


if __name__ == "__main__":
    main()
