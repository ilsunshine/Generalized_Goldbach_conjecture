"""Join the kernel-checked full tables to the unchanged mathematical interfaces."""
from pathlib import Path
import json
import hashlib
from export_full_tables import QS, read, lean_list, header

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT/'GeneralizedGoldbach/LargeCertificates'


def main():
    raw = json.loads((ROOT/'certificates/manifest.json').read_text(encoding='utf-8'))
    rows = {row['q']: row for row in raw['rows']}
    namespace = 'GeneralizedGoldbach.LargeCertificates.UniformCertificates'
    source = header(namespace, [f'GeneralizedGoldbach.LargeCertificates.{kind}{q}'
                                for q in QS for kind in ('Even', 'Odd')])
    for q in QS:
        u = read(f'uniform-{q}.json.gz')
        source += f'''\ntheorem uniform{q} : UniformCertificate {q} := by
  have hparams : auxD {q} = {u['d']} ∧ evenModulus {q} = {(q-1)*q*u['d']} ∧
      uniformThreshold {q} = {u['T']} := by decide +kernel
  exact ⟨uniformOdd_of_table sharedPrimes {q} {lean_list(u['oddPrefix'])}
    Odd{q}.data sharedPrimes_valid (by simpa only [hparams.1] using Odd{q}.valid),
    uniformEven_of_table sharedPrimes {q} {u['ell']} {lean_list(u['prefix'])}
      Even{q}.data sharedPrimes_valid (by decide +kernel) (by decide +kernel)
      (by simpa only [hparams.1, hparams.2.1, hparams.2.2, auxT] using Even{q}.valid)⟩
'''
    arguments = ' '.join(f'uniform{q}' for q in QS)
    source += f'''\ntheorem all : ∀ q ∈ auxiliaryPrimeSet, UniformCertificate q := by
  exact auxiliaryPrimeSet_cases UniformCertificate {arguments}

end {namespace}
'''
    (OUT/'UniformCertificates.lean').write_text(source, encoding='utf-8', newline='\n')
    namespace = 'GeneralizedGoldbach.LargeCertificates.FiniteCertificates'
    source = header(namespace, [f'GeneralizedGoldbach.LargeCertificates.CSV{q}' for q in QS])
    for q in QS:
        P, T = rows[q]['P'], rows[q]['T']
        lo, upper = (100000+P-1)//P, (T-1)//P
        source += f'''\ntheorem finite{q} : ∀ N : ℕ, FiniteCandidate N {q} → Nonempty (FiniteWitness N) := by
  have hparams : oddPrimeProduct {q} = {P} ∧ candidateLower {q} = {lo} ∧
      candidateUpper {q} = {upper} := by decide +kernel
  exact finiteWitness_of_table sharedPrimes {q} CSV{q}.data sharedPrimes_valid
    (by simpa only [hparams.1, hparams.2.1, hparams.2.2] using CSV{q}.valid)
'''
    arguments = ' '.join(f'finite{q}' for q in QS)
    source += f'''\ntheorem all (N q : ℕ) (h : FiniteCandidate N q) : Nonempty (FiniteWitness N) := by
  exact auxiliaryPrimeSet_cases (fun q => ∀ N : ℕ, FiniteCandidate N q → Nonempty (FiniteWitness N))
    {arguments} q h.1 N h

end {namespace}
'''
    (OUT/'FiniteCertificates.lean').write_text(source, encoding='utf-8', newline='\n')
    prime_targets = json.loads((ROOT/'tmp/full-cert-cache/prime-targets.json').read_text())
    table_targets = json.loads((ROOT/('tmp/full-cert-cache/table-targets-all-'+
                                     '-'.join(map(str,QS))+'.json')).read_text())
    targets = prime_targets + table_targets + [
        'GeneralizedGoldbach.LargeCertificates.UniformCertificates',
        'GeneralizedGoldbach.LargeCertificates.FiniteCertificates']
    (ROOT/'checks/full-certificate-targets.json').write_text(json.dumps(targets, indent=2)+'\n', encoding='utf-8')
    manifest = {
        'inputs': {f'certificates/{name}': digest for name, digest in raw['sha256'].items()},
        'original_sources': {
            'checks/original-statements.json':
                '3bf2d8f1e36120820fdcf545e67e08bc44284c6db622027ba9489560ae246aac'},
        'optional_original_sources': {
            '不同素因子奇偶性_四种加法模式_计算机辅助证明_审定稿.pdf':
                '0d602e16ff25efdff297800d6087196a9cee2378839d841ab623b24877e039cb'},
        'counts': {'uniform_chains': 31672, 'uniform_chain_points': 1770208,
                   'odd_witnesses': 32492, 'csv_rows': 149753, 'csv_decompositions': 449259,
                   'shared_large_primes': 331177, 'build_targets': len(targets)},
        'generated_sources': {
            p.relative_to(ROOT).as_posix(): hashlib.sha256(p.read_bytes()).hexdigest()
            for p in sorted(OUT.rglob('*.lean'))},
    }
    (ROOT/'checks/full-certificate-manifest.json').write_text(
        json.dumps(manifest, indent=2)+'\n', encoding='utf-8')
    print(f'Exported two assembly modules and {len(targets)} ordered build targets.')


if __name__ == '__main__':
    main()
