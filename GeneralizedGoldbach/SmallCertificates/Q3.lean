module

public import GeneralizedGoldbach.CertifiedCheckers
public import GeneralizedGoldbach.Certificates

/-!
论文命题 5.1 [prop:q3-q5]；
论文引理 C.4 [lem:numeric-chain]；
论文第 C 节 [app:certificates]。
q=3 的链与奇见证数据；链点经完整因子表认证，有限类与两个符号的覆盖由精确计算建立。
-/
@[expose] public section
namespace GeneralizedGoldbach.SmallCertificates.Q3

def primeCert2 : Hex.Nat.PrimeCert := .small 2

def primeCert5 : Hex.Nat.PrimeCert := .small 5

def primeCert7 : Hex.Nat.PrimeCert := .small 7

def primeCert11 : Hex.Nat.PrimeCert := .small 11

def primeCert13 : Hex.Nat.PrimeCert := .small 13

def primeCert17 : Hex.Nat.PrimeCert := .small 17

def primeCert19 : Hex.Nat.PrimeCert := .small 19

def primeCert23 : Hex.Nat.PrimeCert := .small 23

def primeCert31 : Hex.Nat.PrimeCert := .small 31

def primeCert37 : Hex.Nat.PrimeCert := .small 37

def primeCert41 : Hex.Nat.PrimeCert := .small 41

def primeCert47 : Hex.Nat.PrimeCert := .small 47

def primeCert53 : Hex.Nat.PrimeCert := .small 53

def primeCert59 : Hex.Nat.PrimeCert := .small 59

def primeCert89 : Hex.Nat.PrimeCert := .small 89

def primeCert101 : Hex.Nat.PrimeCert := .small 101

def primeCert107 : Hex.Nat.PrimeCert := .small 107

def primeCert127 : Hex.Nat.PrimeCert := .small 127

def primeCert137 : Hex.Nat.PrimeCert := .small 137

def primeCert179 : Hex.Nat.PrimeCert := .small 179

def primeCert227 : Hex.Nat.PrimeCert := .small 227

def primeCert241 : Hex.Nat.PrimeCert := .small 241

def primeCert263 : Hex.Nat.PrimeCert := .small 263

def primeCert293 : Hex.Nat.PrimeCert := .small 293

def primeCert311 : Hex.Nat.PrimeCert := .small 311

def primeCert317 : Hex.Nat.PrimeCert := .small 317

def primeCert373 : Hex.Nat.PrimeCert := .small 373

def primeCert431 : Hex.Nat.PrimeCert := .small 431

def primeCert659 : Hex.Nat.PrimeCert := .small 659

def primeCert661 : Hex.Nat.PrimeCert := .small 661

def primeCert887 : Hex.Nat.PrimeCert := .small 887

def primeCert1249 : Hex.Nat.PrimeCert := .small 1249

def primeCert1499 : Hex.Nat.PrimeCert := .small 1499

def primeCert1873 : Hex.Nat.PrimeCert := .small 1873

def primeCert3371 : Hex.Nat.PrimeCert := .small 3371

def primeCert4999 : Hex.Nat.PrimeCert := .small 4999

def primeCert7481 : Hex.Nat.PrimeCert := .small 7481

def primeCert8389 : Hex.Nat.PrimeCert := .small 8389

def primeCert8423 : Hex.Nat.PrimeCert := .small 8423

def primeCert11213 : Hex.Nat.PrimeCert := .small 11213

def primeCert11239 : Hex.Nat.PrimeCert := .small 11239

def primeCert16811 : Hex.Nat.PrimeCert := .small 16811

def evenRow0 : ChainRow := ⟨2, -1, [49910, 74810, 112130, 168110]⟩

def evenRow0Factors : List Certified.FactorCertificate := [[(2, primeCert2), (5, primeCert5), (7, primeCert7), (23, primeCert23), (31, primeCert31)], [(2, primeCert2), (5, primeCert5), (7481, primeCert7481)], [(2, primeCert2), (5, primeCert5), (11213, primeCert11213)], [(2, primeCert2), (5, primeCert5), (16811, primeCert16811)]]

theorem evenRow0_valid : NumericChainValid 3 12 100000 500000 5 evenRow0 := by
  exact Certified.numericChainValid_of_certificate 3 12 100000 500000 5
    evenRow0 evenRow0Factors (by decide +kernel)

def evenRow1 : ChainRow := ⟨2, 1, [49970, 74930, 112370, 168530]⟩

def evenRow1Factors : List Certified.FactorCertificate := [[(2, primeCert2), (5, primeCert5), (19, primeCert19), (263, primeCert263)], [(2, primeCert2), (5, primeCert5), (59, primeCert59), (127, primeCert127)], [(2, primeCert2), (5, primeCert5), (17, primeCert17), (661, primeCert661)], [(2, primeCert2), (5, primeCert5), (19, primeCert19), (887, primeCert887)]]

theorem evenRow1_valid : NumericChainValid 3 12 100000 500000 5 evenRow1 := by
  exact Certified.numericChainValid_of_certificate 3 12 100000 500000 5
    evenRow1 evenRow1Factors (by decide +kernel)

def evenRow2 : ChainRow := ⟨4, -1, [49960, 74920, 112360, 168460]⟩

def evenRow2Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (5, primeCert5), (1249, primeCert1249)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (5, primeCert5), (1873, primeCert1873)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (5, primeCert5), (53, primeCert53), (53, primeCert53)], [(2, primeCert2), (2, primeCert2), (5, primeCert5), (8423, primeCert8423)]]

theorem evenRow2_valid : NumericChainValid 3 12 100000 500000 5 evenRow2 := by
  exact Certified.numericChainValid_of_certificate 3 12 100000 500000 5
    evenRow2 evenRow2Factors (by decide +kernel)

def evenRow3 : ChainRow := ⟨4, 1, [49840, 74740, 112060, 167980]⟩

def evenRow3Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (5, primeCert5), (7, primeCert7), (89, primeCert89)], [(2, primeCert2), (2, primeCert2), (5, primeCert5), (37, primeCert37), (101, primeCert101)], [(2, primeCert2), (2, primeCert2), (5, primeCert5), (13, primeCert13), (431, primeCert431)], [(2, primeCert2), (2, primeCert2), (5, primeCert5), (37, primeCert37), (227, primeCert227)]]

theorem evenRow3_valid : NumericChainValid 3 12 100000 500000 5 evenRow3 := by
  exact Certified.numericChainValid_of_certificate 3 12 100000 500000 5
    evenRow3 evenRow3Factors (by decide +kernel)

def evenRow4 : ChainRow := ⟨8, -1, [49760, 74600, 111860, 167780]⟩

def evenRow4Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (5, primeCert5), (311, primeCert311)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (5, primeCert5), (5, primeCert5), (373, primeCert373)], [(2, primeCert2), (2, primeCert2), (5, primeCert5), (7, primeCert7), (17, primeCert17), (47, primeCert47)], [(2, primeCert2), (2, primeCert2), (5, primeCert5), (8389, primeCert8389)]]

theorem evenRow4_valid : NumericChainValid 3 12 100000 500000 5 evenRow4 := by
  exact Certified.numericChainValid_of_certificate 3 12 100000 500000 5
    evenRow4 evenRow4Factors (by decide +kernel)

def evenRow5 : ChainRow := ⟨8, 1, [49940, 74900, 112340, 168260]⟩

def evenRow5Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (5, primeCert5), (11, primeCert11), (227, primeCert227)], [(2, primeCert2), (2, primeCert2), (5, primeCert5), (5, primeCert5), (7, primeCert7), (107, primeCert107)], [(2, primeCert2), (2, primeCert2), (5, primeCert5), (41, primeCert41), (137, primeCert137)], [(2, primeCert2), (2, primeCert2), (5, primeCert5), (47, primeCert47), (179, primeCert179)]]

theorem evenRow5_valid : NumericChainValid 3 12 100000 500000 5 evenRow5 := by
  exact Certified.numericChainValid_of_certificate 3 12 100000 500000 5
    evenRow5 evenRow5Factors (by decide +kernel)

def evenRow6 : ChainRow := ⟨10, -1, [49990, 74950, 112390, 168550]⟩

def evenRow6Factors : List Certified.FactorCertificate := [[(2, primeCert2), (5, primeCert5), (4999, primeCert4999)], [(2, primeCert2), (5, primeCert5), (5, primeCert5), (1499, primeCert1499)], [(2, primeCert2), (5, primeCert5), (11239, primeCert11239)], [(2, primeCert2), (5, primeCert5), (5, primeCert5), (3371, primeCert3371)]]

theorem evenRow6_valid : NumericChainValid 3 12 100000 500000 5 evenRow6 := by
  exact Certified.numericChainValid_of_certificate 3 12 100000 500000 5
    evenRow6 evenRow6Factors (by decide +kernel)

def evenRow7 : ChainRow := ⟨10, 1, [49810, 74710, 112030, 168010]⟩

def evenRow7Factors : List Certified.FactorCertificate := [[(2, primeCert2), (5, primeCert5), (17, primeCert17), (293, primeCert293)], [(2, primeCert2), (5, primeCert5), (31, primeCert31), (241, primeCert241)], [(2, primeCert2), (5, primeCert5), (17, primeCert17), (659, primeCert659)], [(2, primeCert2), (5, primeCert5), (53, primeCert53), (317, primeCert317)]]

theorem evenRow7_valid : NumericChainValid 3 12 100000 500000 5 evenRow7 := by
  exact Certified.numericChainValid_of_certificate 3 12 100000 500000 5
    evenRow7 evenRow7Factors (by decide +kernel)

def evenRows : List ChainRow := [evenRow0, evenRow1, evenRow2, evenRow3, evenRow4, evenRow5, evenRow6, evenRow7]

theorem even_valid : ∀ row ∈ evenRows, NumericChainValid 3 12 100000 500000 5 row := by
  intro row hrow
  simp only [evenRows, List.mem_cons, List.not_mem_nil, or_false] at hrow
  rcases hrow with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact evenRow0_valid
  · exact evenRow1_valid
  · exact evenRow2_valid
  · exact evenRow3_valid
  · exact evenRow4_valid
  · exact evenRow5_valid
  · exact evenRow6_valid
  · exact evenRow7_valid

theorem even_cover : ∀ r ∈ eligibleResidues 3 12 2,
    ∀ s ∈ ({-1, 1} : Finset ℤ), ∃ row ∈ evenRows, row.residue = r ∧ row.sign = s := by
  decide +kernel

theorem even_chains : ∀ r ∈ eligibleResidues 3 12 2, ∀ s : ℤ, IsSign s →
    ∃ C : IntervalChain 3 12 (100000 : ℝ) (500000 : ℝ) (r : ℤ) s,
      ∀ i : ℕ, i ≤ C.last → 5 ∣ C.point i := by
  exact intervalChains_of_table 3 12 100000 500000 5 _ evenRows even_valid even_cover

def oddValues : List ℕ := [64, 10, 2, 20, 4, 22, 32, 14, 16, 34, 8, 26]

theorem odd_cover : ∀ r : ℕ, r < 9 → ¬ 3 ∣ r → ∀ s ∈ ({-1, 1} : Finset ℤ),
    ∃ A ∈ oddValues, 0 < A ∧ A ≤ 64 ∧ 2 ∣ A ∧ Nat.ModEq 9 A r ∧ g A = s := by
  decide +kernel

theorem odd_witnesses : ∀ r : ℕ, r < 9 → ¬ 3 ∣ r → ∀ s : ℤ, IsSign s →
    ∃ A : ℕ, 0 < A ∧ A ≤ 64 ∧ 2 ∣ A ∧ Nat.ModEq 9 A r ∧ g A = s := by
  intro r hr hqr s hs
  obtain ⟨A, _, hA⟩ := odd_cover r hr hqr s (by simpa [IsSign, or_comm] using hs)
  exact ⟨A, hA⟩

end GeneralizedGoldbach.SmallCertificates.Q3
