"""Export small, real-data regressions for the certificate interfaces.

This is deliberately not a full CSV coverage proof. All generated acceptance
and rejection facts must be established by Lean's kernel.
"""
from pathlib import Path
from itertools import islice
import csv
from hex_certificate_data import CertificateFactory

ROOT = Path(__file__).resolve().parents[1]


def main():
    factory = CertificateFactory()
    body = []
    with (ROOT / 'certificates/rebuilt_finite.csv').open(newline='', encoding='utf-8') as stream:
        for index, row in enumerate(islice(csv.DictReader(stream), 3)):
            n = int(row['N'])
            witnesses = []
            for key in ['a_minus_minus', 'a_plus_plus', 'a_minus_plus']:
                a = int(row[key])
                witnesses.append(f'⟨{a}, {factory.factor_expression(a)}, {factory.factor_expression(n - a)}⟩')
            body += [f'def csvRow{index} : FiniteWitnessCertificate :=',
                     f'  ⟨{", ".join(witnesses)}⟩', '',
                     f'theorem csvRow{index}_accepted : checkFiniteWitness {n} csvRow{index} = true := by',
                     '  decide +kernel', '',
                     f'theorem csvRow{index}_patterns : FourPatternsAt {n} := by',
                     f'  exact fourPatterns_of_certificate {n} csvRow{index} csvRow{index}_accepted', '']
    big = factory.prime_certificate(100003)
    square = factory.factor_expression(4)
    wrong_product = factory.factor_expression(21)
    body += [
        f'theorem pocklingtonAccepted : Nat.Prime 100003 := by',
        f'  exact prime_of_certificate 100003 {big} (by decide +kernel)', '',
        f'theorem targetMismatchRejected : checkPrimeCertificate 100019 {big} = false := by',
        '  decide +kernel', '',
        'theorem compositeRejected : checkPrimeCertificate 100 (.small 100) = false := by',
        '  decide +kernel', '',
        'theorem malformedPocklingtonRejected : checkPrimeCertificate 100003 (.pock 100003 []) = false := by',
        '  decide +kernel', '',
        f'theorem productMismatchRejected : checkFactorization 15 {wrong_product} = false := by',
        '  decide +kernel', '',
        'theorem zeroRejected : checkFactorization 0 [] = false := by',
        '  decide +kernel', '',
        'theorem unitAccepted : checkFactorization 1 [] = true := by',
        '  decide +kernel', '',
        f'theorem squareDistinctSign : factorSign {square} = -1 := by',
        '  decide +kernel', '',
        f'theorem squareMatchesOriginal : g 4 = -1 := by',
        f'  exact (g_of_certificate 4 {square} (by decide +kernel)).trans squareDistinctSign', '',
        'theorem corruptedCSVRejected :',
        '    checkFiniteWitness 100065 { csvRow0 with mm := { csvRow0.mm with a := 0 } } = false := by',
        '  decide +kernel', '',
        'open SmallCertificates.Q3 in',
        'theorem wrongChainSignRejected :',
        '    checkCertifiedChain 3 12 100000 500000 5 { evenRow0 with sign := 1 } evenRow0Factors = false := by',
        '  decide +kernel', '',
        'open SmallCertificates.Q3 in',
        'theorem missingPointCertificateRejected :',
        '    checkCertifiedChain 3 12 100000 500000 5 evenRow0 evenRow0Factors.tail = false := by',
        '  decide +kernel', '',
        'open SmallCertificates.Q3 in',
        'theorem endpointEqualityRejected :',
        '    checkCertifiedChain 3 12 (auxT 3 * evenRow0.points.getD 0 0) 500000 5',
        '      evenRow0 evenRow0Factors = false := by',
        '  decide +kernel', '',
        'open SmallCertificates.Q3 in',
        'theorem incompleteCoverageRejected :',
        '    ¬ (∀ r ∈ eligibleResidues 3 12 2, ∀ s ∈ ({-1, 1} : Finset ℤ),',
        '      ∃ row ∈ evenRows.tail, row.residue = r ∧ row.sign = s) := by',
        '  decide +kernel', '',
        'theorem tacticBridgeAccepted : Nat.Prime 2147483647 := by',
        '  primality', '',
    ]
    header = ['import GeneralizedGoldbach', 'import HexPrimalityTheory',
              'import Lean.Util.CollectAxioms', 'import Lean.Elab.Command', '',
              '/-! 真实 CSV 样本与损坏证书回归；不表示已经核验全部 CSV。 -/',
              'namespace GeneralizedGoldbach.CertifiedRegression', 'open Certified', '']
    audit = '''
#print axioms GeneralizedGoldbach.CertifiedRegression.pocklingtonAccepted
#print axioms GeneralizedGoldbach.CertifiedRegression.tacticBridgeAccepted

open Lean Elab Command in
run_elab do
  let env ← getEnv
  let allowed : Array Name := #[``propext, ``Classical.choice, ``Quot.sound]
  let mut count := 0
  for (name, _) in env.constants.toList do
    if (`GeneralizedGoldbach.CertifiedRegression).isPrefixOf name then
      count := count + 1
      for ax in (← collectAxioms name) do
        unless allowed.contains ax do
          throwError "Unfinished certificate regression: {name} -> {ax}"
  unless count >= 40 do
    throwError "Missing certificate regressions: {count} declarations"
  logInfo m!"Hex certificate regressions: {count} declarations; standard axioms only."
'''
    text = '\n'.join(header + factory.declarations() + body + ['end GeneralizedGoldbach.CertifiedRegression', audit])
    (ROOT / 'checks/HexCertificates.lean').write_text(text, encoding='utf-8', newline='\n')
    print(f'Exported three real CSV rows, rejection regressions and {len(factory.certificates)} shared prime certificates.')


if __name__ == '__main__':
    main()
