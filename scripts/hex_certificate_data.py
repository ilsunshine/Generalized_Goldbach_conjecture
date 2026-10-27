"""Untrusted producer of explicit Hex certificates and full prime-factor lists.

Only the generated Lean checker proofs establish validity. Search and Python
factorization results never enter the project as assumptions.
"""
from functools import cache
from math import gcd


@cache
def factorization(n: int) -> tuple[tuple[int, int], ...]:
    if n < 1:
        raise ValueError('Only positive integers have certificates in this format.')
    factors = []
    p = 2
    while p * p <= n:
        exponent = 0
        while n % p == 0:
            n //= p
            exponent += 1
        if exponent:
            factors.append((p, exponent))
        p = 3 if p == 2 else p + 2
    if n > 1:
        factors.append((n, 1))
    return tuple(factors)


class CertificateFactory:
    def __init__(self):
        self.certificates: dict[int, str] = {}

    def prime_certificate(self, p: int) -> str:
        name = f'primeCert{p}'
        if p in self.certificates:
            return name
        if p < 100000:
            expression = f'.small {p}'
        else:
            entries = []
            for q, exponent in factorization(p - 1):
                child = self.prime_certificate(q)
                base = next((a for a in range(2, min(p, 4098))
                             if pow(a, p - 1, p) == 1
                             and gcd((pow(a, (p - 1) // q, p) - 1) % p, p) == 1), None)
                if base is None:
                    raise ValueError(f'Pocklington witness search exhausted for {p}, factor {q}.')
                # Hex stores a positive exponent off by one.
                entries.append(f'({base}, {exponent - 1}, {child})')
            expression = f'.pock {p} [{", ".join(entries)}]'
        self.certificates[p] = expression
        return name

    def factor_expression(self, n: int) -> str:
        entries = []
        for p, exponent in factorization(n):
            certificate = self.prime_certificate(p)
            entries.extend([f'({p}, {certificate})'] * exponent)
        return '[' + ', '.join(entries) + ']'

    def declarations(self) -> list[str]:
        lines = []
        for p in sorted(self.certificates):
            lines.extend([f'def primeCert{p} : Hex.Nat.PrimeCert := {self.certificates[p]}', ''])
        return lines
