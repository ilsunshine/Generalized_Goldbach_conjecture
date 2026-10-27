"""Export rebuilt small certificates as ordinary Lean data and kernel proof tasks.

The exporter does not assert mathematical validity. Every generated row and finite
coverage obligation is checked by Lean's kernel when its module is built.
"""
from pathlib import Path
import json
from hex_certificate_data import CertificateFactory

ROOT = Path(__file__).resolve().parents[1]
DATA = json.loads((ROOT / 'certificates/rebuilt_small.json').read_text(encoding='utf-8'))
OUT = ROOT / 'GeneralizedGoldbach/SmallCertificates'
OUT.mkdir(exist_ok=True)


def emit_group(lines, q, m, ell, lower, upper, chains, label, factory):
    names = []
    for index, (residue, sign, points) in enumerate(chains):
        name = f'{label}Row{index}'
        names.append(name)
        values = ', '.join(map(str, points))
        factors = ', '.join(factory.factor_expression(value) for value in points)
        lines.extend([
            f'def {name} : ChainRow := ⟨{residue}, {sign}, [{values}]⟩',
            '',
            f'def {name}Factors : List Certified.FactorCertificate := [{factors}]',
            '',
            f'theorem {name}_valid : NumericChainValid {q} {m} {lower} {upper} {ell} {name} := by',
            f'  exact Certified.numericChainValid_of_certificate {q} {m} {lower} {upper} {ell}',
            f'    {name} {name}Factors (by decide +kernel)',
            '',
        ])
    lines.extend([f'def {label}Rows : List ChainRow := [{", ".join(names)}]', '',
        f'theorem {label}_valid : ∀ row ∈ {label}Rows, NumericChainValid {q} {m} {lower} {upper} {ell} row := by',
        '  intro row hrow',
        f'  simp only [{label}Rows, List.mem_cons, List.not_mem_nil, or_false] at hrow',
        '  rcases hrow with ' + ' | '.join(['rfl'] * len(names))])
    lines.extend(f'  · exact {name}_valid' for name in names)
    d = 6 if q == 7 else 2
    lines.extend(['', f'theorem {label}_cover : ∀ r ∈ eligibleResidues {q} {m} {d},',
        f'    ∀ s ∈ ({{-1, 1}} : Finset ℤ), ∃ row ∈ {label}Rows, row.residue = r ∧ row.sign = s := by',
        '  decide +kernel', '',
        f'theorem {label}_chains : ∀ r ∈ eligibleResidues {q} {m} {d}, ∀ s : ℤ, IsSign s →',
        f'    ∃ C : IntervalChain {q} {m} ({lower} : ℝ) ({upper} : ℝ) (r : ℤ) s,',
        f'      ∀ i : ℕ, i ≤ C.last → {ell} ∣ C.point i := by',
        f'  exact intervalChains_of_table {q} {m} {lower} {upper} {ell} _ {label}Rows {label}_valid {label}_cover', ''])


def export(q):
    item = DATA[str(q)]
    factory = CertificateFactory()
    lines = ['module', '', 'public import GeneralizedGoldbach.CertifiedCheckers',
        'public import GeneralizedGoldbach.Certificates', '',
        '/-! 由 scripts/export_small_lean.py 从 rebuilt_small.json 导出。',
        '链点通过 Hex 素性证书和完整因子表核验；覆盖仍由内核计算证明。 -/',
        '@[expose] public section', f'namespace GeneralizedGoldbach.SmallCertificates.Q{q}', '']
    declaration_index = len(lines)
    if q == 7:
        for index, stage in enumerate(item['stages']):
            ell = 1 if index == 0 else 5
            emit_group(lines, q, item['m'], ell, stage['lower'], stage['upper'], stage['chains'], f'stage{index}', factory)
    else:
        emit_group(lines, q, item['m'], item['ell'], 100000, 100000 * item['ell'], item['chains'], 'even', factory)
    values = ', '.join(str(row[2]) for row in item['odd'])
    d = 6 if q == 7 else 2
    bound = '(if s = -1 then 1074 else if r = 19 then 2910 else 2777)' if q == 7 else ('64' if q == 3 else '312')
    props = f'0 < A ∧ A ≤ {bound} ∧ {d} ∣ A ∧ Nat.ModEq {q*q} A r ∧ g A = s'
    lines.extend([f'def oddValues : List ℕ := [{values}]', '',
        f'theorem odd_cover : ∀ r : ℕ, r < {q*q} → ¬ {q} ∣ r → ∀ s ∈ ({{-1, 1}} : Finset ℤ),',
        f'    ∃ A ∈ oddValues, {props} := by', '  decide +kernel', '',
        f'theorem odd_witnesses : ∀ r : ℕ, r < {q*q} → ¬ {q} ∣ r → ∀ s : ℤ, IsSign s →',
        f'    ∃ A : ℕ, {props} := by', '  intro r hr hqr s hs',
        '  obtain ⟨A, _, hA⟩ := odd_cover r hr hqr s (by simpa [IsSign, or_comm] using hs)',
        '  exact ⟨A, hA⟩', '', f'end GeneralizedGoldbach.SmallCertificates.Q{q}', ''])
    lines[declaration_index:declaration_index] = factory.declarations()
    (OUT / f'Q{q}.lean').write_text('\n'.join(lines), encoding='utf-8', newline='\n')


if __name__ == '__main__':
    for prime in (3, 5, 7):
        export(prime)
    print('Exported Q3, Q5, Q7 data and kernel checking obligations.')
