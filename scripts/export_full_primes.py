"""Export full shared primality trees as ordinary, kernel-checked Lean data."""
from pathlib import Path
import gzip
import json

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT/'GeneralizedGoldbach/LargeCertificates'
LIMIT = 8192
KERNEL_LIMIT = 256


def main():
    OUT.mkdir(exist_ok=True)
    blocks = OUT/'PrimeBlocks'
    blocks.mkdir(exist_ok=True)
    with gzip.open(ROOT/'tmp/full-cert-cache/prime-certificates.jsonl.gz', 'rt', encoding='utf-8') as stream:
        entries = [json.loads(line) for line in stream]
    targets = []
    joins = []
    imports = []

    def expression(lo, hi):
        if lo == hi:
            return '.empty'
        mid = (lo+hi)//2
        p, certificate = entries[mid]
        return f'(.node {expression(lo,mid)} ({p},({certificate})) {expression(mid+1,hi)})'

    def export(lo, hi):
        if hi-lo <= LIMIT:
            index = len(targets)
            name = f'B{index:04d}'
            module = f'GeneralizedGoldbach.LargeCertificates.PrimeBlocks.{name}'
            namespace = f'GeneralizedGoldbach.LargeCertificates.PrimeBlocks.{name}'
            local = []
            counter = 0

            def local_tree(a, b):
                nonlocal counter
                if b-a <= KERNEL_LIMIT:
                    part = f'part{counter:04d}'
                    counter += 1
                    local.append(f'def {part} : PrimeTree := {expression(a,b)}\n'
                                 f'theorem {part}_valid : PrimeTreeCertified {part} := by\n'
                                 f'  change {part}.all checkPrimeEntry = true\n'
                                 '  decide +kernel\n')
                    return part, part+'_valid'
                m = (a+b)//2
                lt, lh = local_tree(a, m)
                rt, rh = local_tree(m+1, b)
                part = f'part{counter:04d}'
                counter += 1
                p, cert = entries[m]
                value = f'({p},({cert}))'
                local.append(f'def {part} : PrimeTree := .node {lt} {value} {rt}\n'
                             f'theorem {part}_valid : PrimeTreeCertified {part} := by\n'
                             f'  exact prime_node_valid {lt} {rt} {value}\n'
                             f'    {lh} (by decide +kernel) {rh}\n')
                return part, part+'_valid'

            local_data, local_proof = local_tree(lo, hi)
            source = f'''module

public import GeneralizedGoldbach.SharedPrimeCertificate

/-! 从原始大型证书所需素因子生成；所有素性由 Lean 内核重放。 -/
@[expose] public section
namespace {namespace}
open FullCertificate
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

{chr(10).join(local)}

def data : PrimeTree := {local_data}

theorem valid : PrimeTreeCertified data := by
  exact {local_proof}

end {namespace}
'''
            (blocks/(name+'.lean')).write_text(source, encoding='utf-8', newline='\n')
            targets.append(module)
            imports.append(f'public import {module}')
            return f'PrimeBlocks.{name}.data', f'PrimeBlocks.{name}.valid'
        mid = (lo+hi)//2
        left, hl = export(lo, mid)
        right, hr = export(mid+1, hi)
        name = f'primeJoin{len(joins):04d}'
        p, certificate = entries[mid]
        joins.append(f'''def {name} : PrimeTree := .node {left} ({p},({certificate})) {right}
theorem {name}_valid : PrimeTreeCertified {name} := by
  exact prime_node_valid {left} {right} ({p},({certificate})) {hl} (by decide +kernel) {hr}
''')
        return name, name+'_valid'

    data, proof = export(0, len(entries))
    source = '\n'.join(['module', '', *imports, '', '@[expose] public section',
                        'namespace GeneralizedGoldbach.LargeCertificates', 'open FullCertificate',
                        'set_option maxRecDepth 1000000', 'set_option maxHeartbeats 0', '', *joins,
                        f'def sharedPrimes : PrimeTree := {data}',
                        'theorem sharedPrimes_valid : PrimeTreeCertified sharedPrimes := by',
                        f'  exact {proof}', '', 'end GeneralizedGoldbach.LargeCertificates', ''])
    (OUT/'SharedPrimes.lean').write_text(source, encoding='utf-8', newline='\n')
    targets.append('GeneralizedGoldbach.LargeCertificates.SharedPrimes')
    (ROOT/'tmp/full-cert-cache/prime-targets.json').write_text(json.dumps(targets), encoding='utf-8')
    print(f'Exported {len(entries)} primes into {len(targets)-1} blocks and one assembly module.')


if __name__ == '__main__':
    main()
