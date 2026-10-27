"""Export all uniform chains and CSV witnesses, with kernel range certificates.

Generation is untrusted. Every position in every closed integer range is checked
in Lean; malformed factors, signs, endpoints or missing rows make the build fail.
Run prepare_full_certificates.py and export_full_primes.py first.
"""
from pathlib import Path
import argparse
import gzip
import json
import math

ROOT = Path(__file__).resolve().parents[1]
CACHE = ROOT / 'tmp/full-cert-cache'
OUT = ROOT / 'GeneralizedGoldbach/LargeCertificates'
QS = (11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59)


def lean_list(values):
    return '[' + ','.join(map(str, values)) + ']'


def point(value):
    return f'({value[0]},{lean_list(value[1])})'


def chain(values):
    return '[' + ','.join(map(point, values)) + ']'


def csv_row(row):
    if row is None:
        return '((0,[],[]),(0,[],[]),(0,[],[]))'
    _, witnesses, factors = row
    return '(' + ','.join(f'({a},{lean_list(fs[0])},{lean_list(fs[1])})'
                           for a, fs in zip(witnesses, factors)) + ')'


def read(name):
    with gzip.open(CACHE / name, 'rt', encoding='utf-8') as stream:
        return json.load(stream)


def header(namespace, imports):
    return '\n'.join(['module', '', *('public import ' + x for x in imports), '',
                      '/-! 全量有限证书：外部生成数据，内核检查覆盖及各项条件。 -/',
                      '@[expose] public section', 'namespace ' + namespace,
                      'open FullCertificate', 'set_option maxRecDepth 1000000',
                      'set_option maxHeartbeats 0', ''])


def export_table(name, checker, payload_type, lo, hi, values, render, weight,
                 module_limit, kernel_limit):
    """Balanced range tree, with small reductions and opaque proof joins."""
    directory = OUT / name
    directory.mkdir(exist_ok=True)
    imports, targets, joins = [], [], []
    weights = [0]
    for value in values:
        weights.append(weights[-1] + weight(value))

    def cost(a, b):
        return weights[b-lo] - weights[a-lo]

    def expression(a, b):
        if a == b:
            return '.empty'
        mid = (a+b)//2
        return f'(.node {expression(a,mid)} {render(values[mid-lo])} {expression(mid+1,b)})'

    def proof_join(part, a, b, left, hl, right, hr):
        mid = (a+b)//2
        value = render(values[mid-lo])
        return (f'def {part} : CertificateTree {payload_type} := .node {left} {value} {right}\n'
                f'theorem {part}_valid : CertificateTree.RangeCertified ({checker}) {a} {b} {part} := by\n'
                f'  exact CertificateTree.range_certified_node ({checker}) {a} {b}\n'
                f'    {left} {right} {value} (by decide +kernel) {hl}\n'
                f'    (by decide +kernel) {hr}\n')

    def export(a, b):
        if cost(a, b) <= module_limit:
            block = f'B{len(targets):04d}'
            module = f'GeneralizedGoldbach.LargeCertificates.{name}.{block}'
            namespace = f'GeneralizedGoldbach.LargeCertificates.{name}.{block}'
            parts = []
            count = 0

            def local_tree(x, y):
                nonlocal count
                if cost(x, y) <= kernel_limit:
                    part = f'part{count:04d}'
                    count += 1
                    parts.append(f'def {part} : CertificateTree {payload_type} := {expression(x,y)}\n'
                                 f'theorem {part}_valid : CertificateTree.RangeCertified ({checker}) {x} {y} {part} := by\n'
                                 f'  change {part}.checkRange ({checker}) {x} {y} = true\n'
                                 '  decide +kernel\n')
                    return part, part + '_valid'
                mid = (x+y)//2
                lt, lh = local_tree(x, mid)
                rt, rh = local_tree(mid+1, y)
                part = f'part{count:04d}'
                count += 1
                parts.append(proof_join(part, x, y, lt, lh, rt, rh))
                return part, part+'_valid'

            data, valid = local_tree(a, b)
            source = header(namespace, ['GeneralizedGoldbach.FullCertificateKernel',
                                        'GeneralizedGoldbach.LargeCertificates.SharedPrimes'])
            source += '\n'.join(parts)
            source += (f'\ndef data : CertificateTree {payload_type} := {data}\n'
                       f'theorem valid : CertificateTree.RangeCertified ({checker}) {a} {b} data := by\n'
                       f'  exact {valid}\n\nend {namespace}\n')
            (directory/(block+'.lean')).write_text(source, encoding='utf-8', newline='\n')
            imports.append(module)
            targets.append(module)
            return f'{block}.data', f'{block}.valid'
        mid = (a+b)//2
        lt, lh = export(a, mid)
        rt, rh = export(mid+1, b)
        part = f'join{len(joins):04d}'
        joins.append(proof_join(part, a, b, lt, lh, rt, rh))
        return part, part + '_valid'

    data, valid = export(lo, hi)
    module = f'GeneralizedGoldbach.LargeCertificates.{name}'
    source = header(module, imports)
    source += '\n'.join(joins)
    source += (f'\ndef data : CertificateTree {payload_type} := {data}\n'
               f'theorem valid : CertificateTree.RangeCertified ({checker}) {lo} {hi} data := by\n'
               f'  exact {valid}\n\nend {module}\n')
    (OUT/(name+'.lean')).write_text(source, encoding='utf-8', newline='\n')
    targets.append(module)
    return targets


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--q', type=int, nargs='*', default=QS)
    parser.add_argument('--kind', choices=('all', 'even', 'odd', 'csv'), default='all')
    args = parser.parse_args()
    targets = []
    for q in args.q:
        u = read(f'uniform-{q}.json.gz')
        d, ell, T = u['d'], u['ell'], u['T']
        if args.kind in ('all', 'even'):
            rows = {(2*r + (s == 1)): points for r, s, points in u['chains']}
            hi = 2*(q-1)*q
            values = [rows.get(key, []) for key in range(hi)]
            for key in range(hi):
                if (key//2) % q and key not in rows:
                    raise ValueError(f'Missing even key {q}, {key}')
            checker = f'checkEvenEntry sharedPrimes {q} {d} {(q-1)*q*d} {T} {ell} {lean_list(u["prefix"])}'
            targets += export_table(f'Even{q}', checker, '(List FactoredPoint)', 0, hi, values,
                                    chain, lambda xs: max(1, len(xs)), 20000, 160)
        if args.kind in ('all', 'odd'):
            rows = {2*r + (s == 1): (k, fs) for r, s, k, fs in u['odd']}
            hi = 2*q*q
            values = [rows.get(key, (0, [])) for key in range(hi)]
            for key in range(hi):
                if (key//2) % q and key not in rows:
                    raise ValueError(f'Missing odd key {q}, {key}')
            checker = f'checkOddEntry sharedPrimes {q} {d} {lean_list(u["oddPrefix"])}'
            targets += export_table(f'Odd{q}', checker, 'FactoredPoint', 0, hi, values,
                                    point, lambda _: 1, 4000, 80)
        if args.kind in ('all', 'csv'):
            P = math.prod(p for p in range(3, q) if all(p % k for k in range(2, math.isqrt(p)+1)))
            lo, upper = (100000+P-1)//P, (T-1)//P
            hi = max(lo, upper+1)
            rows = read(f'csv-{q}.json.gz')
            by_k = {row[0]//P: row for row in rows}
            if any(row[0] % P for row in rows):
                raise ValueError(f'CSV N not divisible by {P}')
            values = [by_k.get(k) for k in range(lo, hi)]
            for k in range(lo, hi):
                if k % q and k not in by_k:
                    raise ValueError(f'Missing CSV key {q}, {k}')
            targets += export_table(f'CSV{q}', f'checkFiniteEntry sharedPrimes {q} {P}',
                                    'NatFiniteRow', lo, hi, values, csv_row,
                                    lambda _: 1, 4000, 40)
        print(f'Exported q={q}: {len(targets)} cumulative modules', flush=True)
    target_file = CACHE/f'table-targets-{args.kind}-{"-".join(map(str,args.q))}.json'
    target_file.write_text(json.dumps(targets), encoding='utf-8')
    print(f'Target list: {target_file.relative_to(ROOT)}', flush=True)


if __name__ == '__main__':
    main()
