"""Independent, exact audit of the rebuilt data (does not import the generator).

Requires NumPy only for an independently constructed least-prime-factor table
and a second enumeration scanning ALL multiples of 105 in the finite range.
All proof-relevant endpoint calculations use Python integers; no floats.
Checks deliberately use exceptions, so python -O cannot disable them.
"""
from __future__ import annotations

import csv
import argparse
import gzip
import hashlib
import json
from math import gcd, isqrt, prod
from pathlib import Path

import numpy as np

ROOT = Path(__file__).resolve().parents[1]
DEST = ROOT / "certificates"
Q = [11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59]


def require(ok: bool, context: object) -> None:
    if not ok:
        raise ValueError(context)


def main(dest: Path) -> None:
    manifest = json.loads((dest / "manifest.json").read_text(encoding="utf-8"))
    for filename, digest in manifest["sha256"].items():
        require(hashlib.sha256((dest / filename).read_bytes()).hexdigest() == digest,
                ("SHA256", filename))
    limit = 25842944
    # Independently mark the LEAST prime, unlike the generator's sign toggles.
    spf = np.zeros(limit + 1, dtype=np.uint32)
    for p in range(2, isqrt(limit) + 1):
        if spf[p] == 0:
            spf[p] = p
            multiples = spf[p*p::p]
            multiples[multiples == 0] = p

    def support(n: int) -> set[int]:
        require(n > 0, ("nonpositive factorization", n))
        out = set()
        if n > limit:
            require(n < 60000**2, ("outside complete trial-division range", n))
            for p in trial_primes:
                if p*p > n:
                    break
                if n % p == 0:
                    out.add(p)
                    while n % p == 0:
                        n //= p
            if n > 1:
                out.add(n)
            return out
        while n > 1:
            p = int(spf[n]) or n
            out.add(p)
            while n % p == 0:
                n //= p
        return out

    trial_primes = [p for p in range(2, 60000) if int(spf[p]) in [0, p]]

    def prime(n: int) -> bool:
        return n >= 2 and support(n) == {n}

    def sign(n: int) -> int:
        return 1 if len(support(n)) % 2 == 0 else -1

    def product_sign(c: int, j: int) -> int:
        return 1 if len(support(c) | support(j)) % 2 == 0 else -1

    def P(q: int) -> int:
        return prod(p for p in range(3, q) if prime(p))

    def T(q: int) -> int:
        return 128 * prod(support(q-1)) * q*q * (q-1)**2

    def check_chain(q: int, modulus: int, residue: int, s: int, js: list[int],
                    coefficient: int, lower: int, upper: int,
                    required_divisor: int = 1) -> None:
        require(bool(js), ("empty chain", q, residue, s))
        require((q-1)*coefficient*js[0] < lower < q*coefficient*js[0],
                ("start", q, residue, s))
        require(q*coefficient*js[-1] > upper, ("end", q, residue, s))
        for j in js:
            require(0 < j <= limit, ("coefficient outside independently factored range", q, j))
            require(j > 0 and coefficient*j % modulus == residue % modulus,
                    ("residue", q, residue, j))
            require(coefficient*j % required_divisor == 0, ("scaling divisor", q, j))
            require(product_sign(coefficient, j) == s, ("sign", q, residue, j))
        for a, b in zip(js, js[1:]):
            require(a < b and (q-1)*b < q*a, ("strict overlap", q, a, b))

    with gzip.open(dest / "rebuilt_uniform.json.gz", "rt", encoding="utf-8") as f:
        uniform = json.load(f)
    require([x["q"] for x in uniform] == Q, "uniform q coverage")
    even_points, odd_count = 0, 0
    for data in uniform:
        q, d, ell, th = (data[k] for k in ["q", "d", "ell", "T"])
        h, m = (q-1)*q, (q-1)*q*d
        require(prime(q) and d == prod(support(q-1)) and th == T(q), ("parameters", q))
        require(prime(ell) and gcd(ell, m) == 1, ("scaling prime", q))
        expected = {(r, s) for r in range(h) if r % q for s in [-1, 1]}
        seen = set()
        for r, s, js in data["chains"]:
            require((r, s) in expected and (r, s) not in seen, ("even key", q, r, s))
            seen.add((r, s))
            check_chain(q, m, d*r, s, js, d*ell, th, ell*th, ell)
            even_points += len(js)
        require(seen == expected, ("even coverage", q))
        expected = {(r, s) for r in range(q*q) if r % q for s in [-1, 1]}
        seen = set()
        for r, s, k in data["odd"]:
            require((r, s) in expected and (r, s) not in seen, ("odd key", q, r, s))
            seen.add((r, s))
            require(0 < k < 128*q*q and k % (q*q) == r and product_sign(d, k) == s,
                    ("odd witness", q, r, s, k))
            odd_count += 1
        require(seen == expected, ("odd coverage", q))
        print(f"Uniform q={q}: exact coverage and endpoints passed", flush=True)
    require(even_points == 1770208 and odd_count == 32492, "uniform counts")
    require(max(j for x in uniform for r, s, js in x["chains"] for j in js) ==
            manifest["max_chain_coefficient"] == 25839274, "maximum chain coefficient")

    small = json.loads((dest / "rebuilt_small.json").read_text(encoding="utf-8"))
    small_counts = {}
    for q, m, ell in [(3, 12, 5), (5, 40, 3)]:
        data = small[str(q)]
        require(data["m"] == m and data["ell"] == ell, ("small parameters", q))
        expected = {(r, s) for r in range(m) if r % 2 == 0 and r % q for s in [-1, 1]}
        seen = set()
        for r, s, ns in data["chains"]:
            require((r, s) in expected and (r, s) not in seen, ("small key", q, r, s))
            seen.add((r, s))
            check_chain(q, m, r, s, ns, 1, 100000, ell*100000, ell)
        require(seen == expected, ("small even coverage", q))
        expected = {(r, s) for r in range(q*q) if r % q for s in [-1, 1]}
        seen = set()
        for r, s, a in data["odd"]:
            require((r, s) in expected and (r, s) not in seen, ("small odd key", q))
            seen.add((r, s))
            require(0 < a <= {3: 64, 5: 312}[q] and a % 2 == 0 and
                    a % (q*q) == r and sign(a) == s, ("small odd", q, r, s))
        require(seen == expected, ("small odd coverage", q))
        small_counts[str(q)] = sum(len(x[2]) for x in data["chains"])
    q7 = small["7"]
    require(q7["m"] == 252 and q7["ell"] == 5, "q7 parameters")
    require([(st["lower"], st["upper"]) for st in q7["stages"]] ==
            [(100000, 1000000), (1000000, 5000000)], "q7 stage coverage")
    for stage in q7["stages"]:
        expected = {(r, s) for r in range(252) if r % 6 == 0 and r % 7 for s in [-1, 1]}
        seen = set()
        for r, s, ns in stage["chains"]:
            require((r, s) in expected and (r, s) not in seen, ("q7 even key", r, s))
            seen.add((r, s))
            check_chain(7, 252, r, s, ns, 1, stage["lower"], stage["upper"],
                        5 if stage["lower"] == 1000000 else 1)
        require(seen == expected, "q7 even coverage")
    expected = {(r, s) for r in range(49) if r % 7 for s in [-1, 1]}
    seen = set()
    for r, s, a in q7["odd"]:
        require((r, s) in expected and (r, s) not in seen, ("q7 odd key", r, s))
        seen.add((r, s))
        bound = 1074 if s == -1 else 2910 if r == 19 else 2777
        require(0 < a <= bound and a % 6 == 0 and a % 49 == r and sign(a) == s,
                ("q7 odd", r, s, a))
    require(seen == expected, "q7 odd coverage")
    exceptions = [100665, 102135, 103605]
    require(all(prime(p) for p in [12583, 34039, 1279]), "q7 exceptional prime factors")
    require([n for n in range(100000, 104761) if n % 2 and n % 15 == 0 and n % 49 == 19]
            == exceptions, "q7 exceptional class")
    for n, a, b in [(100665, 1, 100664), (102135, 18, 102117), (103605, 6, 103599)]:
        require(n == a+b and sign(a) == 1 and sign(b) == 1, ("q7 exception", n))
    small_counts["7"] = sum(len(c[2]) for st in q7["stages"] for c in st["chains"])

    # Verify all individual finite decompositions without the generator's sign table.
    actual = set()
    maximum, witnesses = 0, 0
    with (dest / "rebuilt_finite.csv").open(newline="", encoding="utf-8") as f:
        reader = csv.reader(f)
        require(next(reader) == ["N", "q", "a_minus_minus", "a_plus_plus", "a_minus_plus"],
                "CSV header")
        for row in reader:
            require(len(row) == 5, ("CSV columns", row))
            n, q, *addends = map(int, row)
            require(q in Q and (n, q) not in actual, ("finite duplicate/key", n, q))
            require(100000 <= n < T(q) and n % P(q) == 0 and n % q != 0,
                    ("candidate predicate", n, q))
            for a, pair in zip(addends, [(-1, -1), (1, 1), (-1, 1)]):
                require(0 < a < n and (sign(a), sign(n-a)) == pair,
                        ("finite signs", n, q, a))
                witnesses += 1
            actual.add((n, q))
            maximum = max(maximum, n)
    # Independently scan every multiple of 105, rather than using P(q)*k.
    # Chunking bounds memory; np.int64 is sufficient for the known 3.4e9 bound.
    top, expected = 3321216000, set()
    first, last = (100000 + 104)//105, (top-1)//105
    for start in range(first, last+1, 1000000):
        ns = np.arange(start, min(start+1000000, last+1), dtype=np.int64) * 105
        remaining = np.ones(len(ns), dtype=np.bool_)
        for q in Q:
            missing = remaining & (ns % q != 0)
            selected = missing & (ns < T(q))
            expected.update((int(n), q) for n in ns[selected])
            remaining &= ~missing
        require(not bool(np.any(remaining)), "finite scan least-prime exhaustion")
    require(actual == expected, ("finite coverage", len(actual), len(expected)))
    require(len(actual) == 149753 and witnesses == 449259 and maximum == 3234846615,
            "finite counts or maximum")
    require(P(61) == 961380175077106319535 and P(67) == 58644190679703485491635,
            "tail prefix products")
    B = lambda q, p: 32*p*p*(q-1)**4*q**5*prod(support(q-1))
    require(B(61, 7) == 514898337587558400000 and B(67, 5) == 1352644522537268505600,
            "tail bounds")
    require(P(61) > B(61, 7) and P(67) > B(67, 5), "tail strict inequalities")
    require(25*P(71)-1152*71**12 == 79325064871285123771842993 and
            71*5**12-6**12 == 15157202039, "tail induction bases")
    for row in manifest["rows"]:
        q = row["q"]
        require(row["P"] == P(q) and row["T"] == T(q) and row["d"] == prod(support(q-1)),
                ("manifest numeric row", q))
        count = sum(qq == q for _, qq in actual)
        lo, hi = (100000 + P(q)-1)//P(q), (T(q)-1)//P(q)
        formula = hi-lo+1-hi//q+(lo-1)//q if lo <= hi else 0
        require(row["count"] == count == formula, ("candidate count", q))
        if q >= 37:
            require(P(q) > T(q), ("empty row bound", q))
    source_pdf = ROOT / "不同素因子奇偶性_四种加法模式_计算机辅助证明_审定稿.pdf"
    source_hash = None
    if source_pdf.exists():
        source_hash = hashlib.sha256(source_pdf.read_bytes()).hexdigest().upper()
        require(source_hash == "0D602E16FF25EFDFF297800D6087196A9CEE2378839D841AB623B24877E039CB",
                "optional historical source PDF changed")
    report = {"result": "PASS", "kind": "external exact computation, not Lean proof",
              "source_pdf_sha256": source_hash,
              "uniform_chain_points": even_points, "uniform_odd_witnesses": odd_count,
              "small_chain_points": small_counts, "finite_candidates": len(actual),
              "finite_witnesses": witnesses, "max_candidate": maximum,
              "independent_scan_multiples_of_105": last-first+1,
              "certificate_sha256": manifest["sha256"]}
    output = ROOT / "output/verification/certificate-audit.json"
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(report, indent=2)+"\n", encoding="utf-8")
    print(json.dumps(report), flush=True)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--certificate-dir", type=Path, default=DEST)
    main(parser.parse_args().certificate_dir)
