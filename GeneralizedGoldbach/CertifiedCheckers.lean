module

public import GeneralizedGoldbach.FactorCertificate
public import GeneralizedGoldbach.ChainCertificate
public import GeneralizedGoldbach.FiniteClosureBasic

/-!
论文引理 C.4 [lem:numeric-chain]；
论文命题 C.6 [prop:csv-certification]。
用完整因子表认证链点与 CSV 分解，再通过正确性定理恢复正文的区间链和正加数表示。
-/
@[expose] public section
namespace GeneralizedGoldbach.Certified

/-- 论文引理 C.4 [lem:numeric-chain]。
因子表必须与每个链点逐项对应；全部原有严格端点均保留。 -/
def checkCertifiedChain (q m L U ell : ℕ) (row : ChainRow)
    (factors : List FactorCertificate) : Bool :=
  decide (0 < row.points.length ∧ factors.length = row.points.length) &&
  (List.range row.points.length).all (fun i =>
    decide (0 < row.points.getD i 0 ∧
      Int.ModEq (m : ℤ) (row.points.getD i 0 : ℤ) (row.residue : ℤ) ∧
      ell ∣ row.points.getD i 0) &&
    checkFactorization (row.points.getD i 0) (factors.getD i []) &&
    decide (factorSign (factors.getD i []) = row.sign)) &&
  decide ((∀ i < row.points.length - 1,
      row.points.getD i 0 < row.points.getD (i + 1) 0) ∧
    auxT q * row.points.getD 0 0 < L ∧ L < q * row.points.getD 0 0 ∧
    (∀ i < row.points.length - 1,
      auxT q * row.points.getD (i + 1) 0 < q * row.points.getD i 0) ∧
    U < q * row.points.getD (row.points.length - 1) 0)

/-- 论文引理 C.4 [lem:numeric-chain]。 -/
theorem numericChainValid_of_certificate (q m L U ell : ℕ) (row : ChainRow)
    (factors : List FactorCertificate) (h : checkCertifiedChain q m L U ell row factors = true) :
    NumericChainValid q m L U ell row := by
  simp only [checkCertifiedChain, Bool.and_eq_true, decide_eq_true_eq,
    List.all_eq_true, List.mem_range] at h
  refine ⟨h.1.1.1, ?_, h.2⟩
  intro i hi
  have hp := h.1.2 i hi
  exact ⟨hp.1.1.1, hp.1.1.2.1, (g_of_certificate _ _ hp.1.2).trans hp.2, hp.1.1.2.2⟩

/-- 论文引理 C.4 [lem:numeric-chain]。 -/
theorem intervalChain_of_certificate (q m L U ell : ℕ) (row : ChainRow)
    (factors : List FactorCertificate) (h : checkCertifiedChain q m L U ell row factors = true) :
    ∃ C : IntervalChain q m (L : ℝ) (U : ℝ) (row.residue : ℤ) row.sign,
      ∀ i : ℕ, i ≤ C.last → ell ∣ C.point i := by
  exact intervalChain_of_numeric q m L U ell row
    (numericChainValid_of_certificate q m L U ell row factors h)

/-- 论文命题 C.6 [prop:csv-certification]。 -/
structure RepresentationCertificate where
  a : ℕ
  left : FactorCertificate
  right : FactorCertificate

/-- 论文命题 C.6 [prop:csv-certification]。 -/
def checkRepresentation (N : ℕ) (s t : ℤ) (w : RepresentationCertificate) : Bool :=
  decide (0 < w.a ∧ w.a < N) &&
  checkFactorization w.a w.left && checkFactorization (N - w.a) w.right &&
  decide (factorSign w.left = s ∧ factorSign w.right = t)

/-- 论文命题 C.6 [prop:csv-certification]；论文式 (7.4) [eq:csv-signs]。 -/
theorem explicitRepresentation_of_certificate (N : ℕ) (s t : ℤ)
    (w : RepresentationCertificate) (h : checkRepresentation N s t w = true) :
    ExplicitRepresentation N w.a s t := by
  simp only [checkRepresentation, Bool.and_eq_true, decide_eq_true_eq] at h
  exact ⟨h.1.1.1.1, h.1.1.1.2, (g_of_certificate _ _ h.1.1.2).trans h.2.1,
    (g_of_certificate _ _ h.1.2).trans h.2.2⟩

/-- 论文命题 C.6 [prop:csv-certification]。 -/
structure FiniteWitnessCertificate where
  mm : RepresentationCertificate
  pp : RepresentationCertificate
  mp : RepresentationCertificate

/-- 论文命题 C.6 [prop:csv-certification]。 -/
def checkFiniteWitness (N : ℕ) (w : FiniteWitnessCertificate) : Bool :=
  checkRepresentation N (-1) (-1) w.mm &&
  checkRepresentation N 1 1 w.pp && checkRepresentation N (-1) 1 w.mp

/-- 论文命题 C.6 [prop:csv-certification]。 -/
def finiteWitness_of_certificate (N : ℕ) (w : FiniteWitnessCertificate)
    (h : checkFiniteWitness N w = true) : FiniteWitness N := by
  simp only [checkFiniteWitness, Bool.and_eq_true] at h
  exact ⟨w.mm.a, w.pp.a, w.mp.a,
    explicitRepresentation_of_certificate N (-1) (-1) w.mm h.1.1,
    explicitRepresentation_of_certificate N 1 1 w.pp h.1.2,
    explicitRepresentation_of_certificate N (-1) 1 w.mp h.2⟩

/-- 论文命题 C.6 [prop:csv-certification]。 -/
theorem fourPatterns_of_certificate (N : ℕ) (w : FiniteWitnessCertificate)
    (h : checkFiniteWitness N w = true) : FourPatternsAt N := by
  exact four_patterns_of_finite_witness N (finiteWitness_of_certificate N w h)

end GeneralizedGoldbach.Certified
