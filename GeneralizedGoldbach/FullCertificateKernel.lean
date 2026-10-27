module

public import GeneralizedGoldbach.SharedPrimeCertificate
public import GeneralizedGoldbach.CertifiedCheckers
public import Mathlib.Data.List.GetD
public import Mathlib.Data.List.Chain

/-!
论文引理 C.2 [lem:factor-certificate]；
论文命题 C.5 [prop:uniform-certification]；
论文命题 C.6 [prop:csv-certification]。
分别证明因子表、严格链、符号位置、统一表与 CSV 表的正确性，再恢复原数学证书和有限见证接口。
-/
@[expose] public section
namespace GeneralizedGoldbach.FullCertificate

/-- 论文引理 C.2 [lem:factor-certificate]；论文式 (C.1) [eq:factor-certificate]。 -/
theorem factors_sound (tree : PrimeTree) (n : ℕ) (factors : List ℕ)
    (hprimes : PrimeTreeCertified tree) (h : checkFactors tree n factors = true) :
    0 < n ∧ n.primeFactors = factors.toFinset := by
  have hc : factors.prod = n ∧ ∀ p ∈ factors, primeTest tree p = true := by
    simpa only [checkFactors, Bool.and_eq_true, beq_iff_eq, List.all_eq_true] using h
  have hp : ∀ p ∈ factors, Nat.Prime p :=
    fun p hmem => primeTest_sound tree p hprimes (hc.2 p hmem)
  refine ⟨Nat.pos_of_ne_zero (hc.1 ▸ List.prod_ne_zero (fun hz => (hp 0 hz).ne_zero rfl)), ?_⟩
  simpa only [Nat.toFinset_factors] using
    (List.toFinset_eq_of_perm _ _ (Nat.primeFactorsList_unique hc.1 hp)).symm

/-- 论文式 (C.2) [eq:factor-sign]。 -/
theorem g_of_factors (tree : PrimeTree) (n : ℕ) (factors : List ℕ)
    (hprimes : PrimeTreeCertified tree) (h : checkFactors tree n factors = true) :
    g n = factorSign factors := by
  exact congrArg (fun S : Finset ℕ => (-1 : ℤ) ^ S.card) (factors_sound tree n factors hprimes h).2

/-- 论文引理 C.4 [lem:numeric-chain]。 -/
abbrev FactoredPoint := ℕ × List ℕ

/-- 论文引理 C.4 [lem:numeric-chain]。 -/
def pointValue (c : ℕ) (points : List FactoredPoint) (i : ℕ) : ℕ :=
  c * (points.getD i (0, [])).1

/-- 论文引理 C.4 [lem:numeric-chain]。 -/
def checkPoint (tree : PrimeTree) (c : ℕ) (fixedFactors : List ℕ) (m ell r : ℕ) (s : ℤ)
    (point : FactoredPoint) : Bool :=
  checkFactors tree (c * point.1) (fixedFactors ++ point.2) &&
  decide (0 < c * point.1 ∧ Int.ModEq (m : ℤ) (c * point.1 : ℕ) r ∧
    ell ∣ c * point.1 ∧ factorSign (fixedFactors ++ point.2) = s)

/-- 论文引理 C.4 [lem:numeric-chain]；论文式 (C.2) [eq:factor-sign]。 -/
theorem point_sound (tree : PrimeTree) (c : ℕ) (fixedFactors : List ℕ)
    (m ell r : ℕ) (s : ℤ) (point : FactoredPoint)
    (hprimes : PrimeTreeCertified tree)
    (h : checkPoint tree c fixedFactors m ell r s point = true) :
    0 < c * point.1 ∧ Int.ModEq (m : ℤ) (c * point.1 : ℕ) r ∧
      g (c * point.1) = s ∧ ell ∣ c * point.1 := by
  simp only [checkPoint, Bool.and_eq_true, decide_eq_true_eq] at h
  exact ⟨h.2.1, h.2.2.1, (g_of_factors tree _ _ hprimes h.1).trans h.2.2.2.2, h.2.2.2.1⟩

/-- 论文引理 C.4 [lem:numeric-chain]。 -/
def checkFactoredChain (tree : PrimeTree) (c : ℕ) (fixedFactors : List ℕ)
    (q m L U ell r : ℕ) (s : ℤ) (points : List FactoredPoint) : Bool :=
  decide (0 < points.length) && points.all (checkPoint tree c fixedFactors m ell r s) &&
  decide (points.IsChain (fun a b => c * a.1 < c * b.1 ∧
      auxT q * (c * b.1) < q * (c * a.1)) ∧
    auxT q * pointValue c points 0 < L ∧ L < q * pointValue c points 0 ∧
    U < q * pointValue c points (points.length - 1))

/-- 论文引理 C.4 [lem:numeric-chain]。 -/
theorem intervalChain_of_factored (tree : PrimeTree) (c : ℕ) (fixedFactors : List ℕ)
    (q m L U ell r : ℕ) (s : ℤ) (points : List FactoredPoint)
    (hprimes : PrimeTreeCertified tree)
    (h : checkFactoredChain tree c fixedFactors q m L U ell r s points = true) :
    ∃ C : IntervalChain q m (L : ℝ) (U : ℝ) (r : ℤ) s,
      ∀ i : ℕ, i ≤ C.last → ell ∣ C.point i := by
  simp only [checkFactoredChain, Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true] at h
  have hp (i : ℕ) (hi : i < points.length) := point_sound tree c fixedFactors m ell r s
    (points.getD i (0, [])) hprimes
    (h.1.2 _ (by simpa only [List.getD_eq_getElem points _ hi] using List.getElem_mem hi))
  have hadj (i : ℕ) (hi : i < points.length - 1) :
      pointValue c points i < pointValue c points (i + 1) ∧
        auxT q * pointValue c points (i + 1) < q * pointValue c points i := by
    simpa only [pointValue, List.getD_eq_getElem points _ (show i < points.length by omega),
      List.getD_eq_getElem points _ (show i + 1 < points.length by omega)] using
      List.isChain_iff_getElem.mp h.2.1 i (by omega)
  let C : IntervalChain q m (L : ℝ) (U : ℝ) (r : ℤ) s := {
    last := points.length - 1
    point := pointValue c points
    positive := fun i hi => (hp i (by omega)).1
    residue := fun i hi => (hp i (by omega)).2.1
    sign := fun i hi => (hp i (by omega)).2.2.1
    increasing := fun i hi => (hadj i hi).1
    start_left := by exact_mod_cast h.2.2.1
    start_right := by exact_mod_cast h.2.2.2.1
    overlap := fun i hi => by exact_mod_cast (hadj i hi).2
    end_right := by exact_mod_cast h.2.2.2.2 }
  exact ⟨C, fun i hi => (hp i (by change i ≤ points.length - 1 at hi; omega)).2.2.2⟩

/-- 论文命题 C.5 [prop:uniform-certification]。 -/
def signAt (key : ℕ) : ℤ := if key % 2 = 0 then -1 else 1

/-- 论文命题 C.5 [prop:uniform-certification]。 -/
def signKey (r : ℕ) (s : ℤ) : ℕ := if s = -1 then 2 * r else 2 * r + 1

/-- 论文命题 C.5 [prop:uniform-certification]。 -/
def checkEvenEntry (tree : PrimeTree) (q d m T ell : ℕ) (fixedFactors : List ℕ)
    (key : ℕ) (points : List FactoredPoint) : Bool :=
  if q ∣ key / 2 then true else
    checkFactoredChain tree (d * ell) fixedFactors q m T (ell * T) ell
      (d * (key / 2)) (signAt key) points

/-- 论文命题 C.5 [prop:uniform-certification]。 -/
def checkOddEntry (tree : PrimeTree) (q d : ℕ) (fixedFactors : List ℕ)
    (key : ℕ) (point : FactoredPoint) : Bool :=
  if q ∣ key / 2 then true else
    checkFactors tree (d * point.1) (fixedFactors ++ point.2) &&
    decide (0 < point.1 ∧ point.1 < 128 * q ^ 2 ∧
      Nat.ModEq (q ^ 2) point.1 (key / 2) ∧ factorSign (fixedFactors ++ point.2) = signAt key)

/-- 论文命题 C.6 [prop:csv-certification]。 -/
abbrev NatRepresentation := ℕ × List ℕ × List ℕ
/-- 论文命题 C.6 [prop:csv-certification]。 -/
abbrev NatFiniteRow := NatRepresentation × NatRepresentation × NatRepresentation

/-- 论文命题 C.6 [prop:csv-certification]。 -/
def checkNatRepresentation (tree : PrimeTree) (N : ℕ) (s t : ℤ)
    (w : NatRepresentation) : Bool :=
  decide (0 < w.1 ∧ w.1 < N) &&
  checkFactors tree w.1 w.2.1 && checkFactors tree (N - w.1) w.2.2 &&
  decide (factorSign w.2.1 = s ∧ factorSign w.2.2 = t)

/-- 论文命题 C.6 [prop:csv-certification]。 -/
def checkNatFiniteRow (tree : PrimeTree) (N : ℕ) (row : NatFiniteRow) : Bool :=
  checkNatRepresentation tree N (-1) (-1) row.1 &&
  checkNatRepresentation tree N 1 1 row.2.1 && checkNatRepresentation tree N (-1) 1 row.2.2

/-- 论文引理 C.2 [lem:factor-certificate]；论文命题 C.5 [prop:uniform-certification]；论文命题 C.6 [prop:csv-certification]。 -/
def checkFiniteEntry (tree : PrimeTree) (q P k : ℕ) (row : NatFiniteRow) : Bool :=
  if q ∣ k then true else checkNatFiniteRow tree (P * k) row

/-- 论文命题 C.5 [prop:uniform-certification]。 -/
theorem signKey_properties (r bound : ℕ) (hr : r < bound) (s : ℤ) (hs : IsSign s) :
    signKey r s / 2 = r ∧ signKey r s < 2 * bound ∧ signAt (signKey r s) = s := by
  rcases hs with h | h
  all_goals simp [h, signKey, signAt]
  all_goals omega

/-- 论文命题 C.5 [prop:uniform-certification]；论文式 (4.7) [eq:uniform-odd-data]。 -/
theorem oddEntry_sound (tree : PrimeTree) (q d : ℕ) (fixedFactors : List ℕ)
    (key : ℕ) (point : FactoredPoint) (hprimes : PrimeTreeCertified tree)
    (hnot : ¬ q ∣ key / 2)
    (h : checkOddEntry tree q d fixedFactors key point = true) :
    ∃ k : ℕ, 0 < k ∧ k < 128 * q ^ 2 ∧ Nat.ModEq (q ^ 2) k (key / 2) ∧
      g (d * k) = signAt key := by
  simp only [checkOddEntry, if_neg hnot, Bool.and_eq_true, decide_eq_true_eq] at h
  exact ⟨point.1, h.2.1, h.2.2.1, h.2.2.2.1,
    (g_of_factors tree _ _ hprimes h.1).trans h.2.2.2.2⟩

/-- 论文命题 C.6 [prop:csv-certification]；论文式 (7.4) [eq:csv-signs]。 -/
theorem natRepresentation_sound (tree : PrimeTree) (N : ℕ) (s t : ℤ)
    (w : NatRepresentation) (hprimes : PrimeTreeCertified tree)
    (h : checkNatRepresentation tree N s t w = true) :
    ExplicitRepresentation N w.1 s t := by
  simp only [checkNatRepresentation, Bool.and_eq_true, decide_eq_true_eq] at h
  exact ⟨h.1.1.1.1, h.1.1.1.2, (g_of_factors tree _ _ hprimes h.1.1.2).trans h.2.1,
    (g_of_factors tree _ _ hprimes h.1.2).trans h.2.2⟩

/-- 论文命题 C.6 [prop:csv-certification]。 -/
def natFiniteWitness_of_row (tree : PrimeTree) (N : ℕ) (row : NatFiniteRow)
    (hprimes : PrimeTreeCertified tree) (h : checkNatFiniteRow tree N row = true) :
    FiniteWitness N := by
  simp only [checkNatFiniteRow, Bool.and_eq_true] at h
  exact ⟨row.1.1, row.2.1.1, row.2.2.1,
    natRepresentation_sound tree N (-1) (-1) row.1 hprimes h.1.1,
    natRepresentation_sound tree N 1 1 row.2.1 hprimes h.1.2,
    natRepresentation_sound tree N (-1) 1 row.2.2 hprimes h.2⟩

/-- 论文命题 C.5 [prop:uniform-certification]；论文式 (4.7) [eq:uniform-odd-data]。 -/
theorem uniformOdd_of_table (tree : PrimeTree) (q : ℕ) (fixedFactors : List ℕ)
    (data : CertificateTree FactoredPoint) (hprimes : PrimeTreeCertified tree)
    (hdata : CertificateTree.RangeCertified (checkOddEntry tree q (auxD q) fixedFactors)
      0 (2 * q ^ 2) data) : UniformOddCertificate q := by
  intro r hr hnot s hs
  obtain ⟨hdiv, hbound, hsign⟩ := signKey_properties r (q ^ 2) hr s hs
  obtain ⟨point, hp⟩ := CertificateTree.range_sound _ data _ _ hdata (signKey r s)
    (Nat.zero_le _) hbound
  simpa only [hdiv, hsign] using oddEntry_sound tree q (auxD q) fixedFactors
    (signKey r s) point hprimes (by simpa only [hdiv] using hnot) hp

/-- 论文命题 C.5 [prop:uniform-certification]；论文式 (4.5) [eq:uniform-even-data]。 -/
theorem uniformEven_of_table (tree : PrimeTree) (q ell : ℕ) (fixedFactors : List ℕ)
    (data : CertificateTree (List FactoredPoint)) (hprimes : PrimeTreeCertified tree)
    (hell : Nat.Prime ell) (hcop : Nat.Coprime ell (evenModulus q))
    (hdata : CertificateTree.RangeCertified
      (checkEvenEntry tree q (auxD q) (evenModulus q) (uniformThreshold q) ell fixedFactors)
      0 (2 * (auxT q * q)) data) : UniformEvenCertificate q := by
  refine ⟨ell, hell, hcop, ?_⟩
  intro r hr hnot s hs
  obtain ⟨hdiv, hbound, hsign⟩ := signKey_properties r (auxT q * q) hr s hs
  obtain ⟨points, hp⟩ := CertificateTree.range_sound _ data _ _ hdata (signKey r s)
    (Nat.zero_le _) hbound
  simp only [checkEvenEntry, hdiv, if_neg hnot, hsign] at hp
  exact (show ((ell * uniformThreshold q : ℕ) : ℝ) = (ell : ℝ) * (uniformThreshold q : ℝ)
    from Nat.cast_mul _ _) ▸ intervalChain_of_factored tree (auxD q * ell) fixedFactors
    q (evenModulus q) (uniformThreshold q) (ell * uniformThreshold q) ell (auxD q * r) s
    points hprimes hp

/-- 论文命题 C.6 [prop:csv-certification]。 -/
theorem finiteWitness_of_table (tree : PrimeTree) (q : ℕ)
    (data : CertificateTree NatFiniteRow) (hprimes : PrimeTreeCertified tree)
    (hdata : CertificateTree.RangeCertified (checkFiniteEntry tree q (oddPrimeProduct q))
      (candidateLower q) (max (candidateLower q) (candidateUpper q + 1)) data)
    (N : ℕ) (hN : FiniteCandidate N q) : Nonempty (FiniteWitness N) := by
  obtain ⟨hq, k, hk, rfl⟩ := (finite_candidate_iff_multiplier N q).mp hN
  obtain ⟨hlo, hhi⟩ := Finset.mem_Icc.mp (Finset.mem_filter.mp hk).1
  obtain ⟨row, hrow⟩ := CertificateTree.range_sound _ data _ _ hdata k hlo
    ((Nat.lt_succ_of_le hhi).trans_le (le_max_right _ _))
  exact ⟨natFiniteWitness_of_row tree _ row hprimes
    (by simpa only [checkFiniteEntry, if_neg (Finset.mem_filter.mp hk).2] using hrow)⟩

/-- 论文命题 C.5 [prop:uniform-certification]；论文式 (4.4) [eq:uniform-parameters]。 -/
theorem auxiliaryPrimeSet_cases (P : ℕ → Prop)
    (h11 : P 11) (h13 : P 13) (h17 : P 17) (h19 : P 19) (h23 : P 23) (h29 : P 29)
    (h31 : P 31) (h37 : P 37) (h41 : P 41) (h43 : P 43) (h47 : P 47) (h53 : P 53)
    (h59 : P 59) : ∀ q ∈ auxiliaryPrimeSet, P q := by
  simpa only [auxiliaryPrimeSet, Finset.forall_mem_insert, Finset.mem_singleton, forall_eq] using
    (show P 11 ∧ P 13 ∧ P 17 ∧ P 19 ∧ P 23 ∧ P 29 ∧ P 31 ∧ P 37 ∧ P 41 ∧ P 43 ∧ P 47 ∧ P 53 ∧ P 59
      from ⟨h11, h13, h17, h19, h23, h29, h31, h37, h41, h43, h47, h53, h59⟩)

end GeneralizedGoldbach.FullCertificate
