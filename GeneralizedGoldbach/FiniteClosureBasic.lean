module

public import GeneralizedGoldbach.CertificateDefinitions

/-!
论文命题 7.1 [prop:finite-candidates]；
论文命题 7.2 [prop:candidate-count]；
论文命题 C.6 [prop:csv-certification]。
刻画有限候选、精确乘数区间、计数与最大值，并定义严格正分解和三列有限见证。
-/
@[expose] public section
namespace GeneralizedGoldbach

/-- 论文命题 7.1 [prop:finite-candidates]；论文式 (7.1) [eq:finite-candidate]。 -/
def FiniteCandidate (N q : ℕ) : Prop :=
  q ∈ auxiliaryPrimeSet ∧ mainThreshold ≤ N ∧ N < uniformThreshold q ∧
    oddPrimeProduct q ∣ N ∧ ¬ q ∣ N

/-- 论文式 (7.2) [eq:candidate-bounds]。 -/
def candidateLower (q : ℕ) : ℕ :=
  (mainThreshold + oddPrimeProduct q - 1) / oddPrimeProduct q

/-- 论文式 (7.2) [eq:candidate-bounds]。 -/
def candidateUpper (q : ℕ) : ℕ :=
  (uniformThreshold q - 1) / oddPrimeProduct q

/-- 论文命题 7.1 [prop:finite-candidates]。 -/
def candidateMultipliers (q : ℕ) : Finset ℕ :=
  (Finset.Icc (candidateLower q) (candidateUpper q)).filter fun k => ¬ q ∣ k

/-- 论文命题 7.1 [prop:finite-candidates]。 -/
def candidatePairs : Finset (ℕ × ℕ) :=
  auxiliaryPrimeSet.biUnion fun q =>
    (candidateMultipliers q).image fun k => (oddPrimeProduct q * k, q)

/-- 论文引理 A.2 [lem:formal-count]。 -/
def ExplicitRepresentation (N a : ℕ) (s t : ℤ) : Prop :=
  0 < a ∧ a < N ∧ g a = s ∧ g (N - a) = t

/-- 论文命题 7.3 [prop:finite-witnesses]；论文式 (7.4) [eq:csv-signs]。
CSV 的三个 a；第四个有序模式由交换第三个分解得到。 -/
structure FiniteWitness (N : ℕ) where
  aMM : ℕ
  aPP : ℕ
  aMP : ℕ
  mm : ExplicitRepresentation N aMM (-1) (-1)
  pp : ExplicitRepresentation N aPP 1 1
  mp : ExplicitRepresentation N aMP (-1) 1

/-- 论文式 (7.2) [eq:candidate-bounds]。 -/
theorem candidate_multiplier_bounds (q : ℕ) (hq : q ∈ auxiliaryPrimeSet) (k : ℕ) :
    (candidateLower q ≤ k ↔ mainThreshold ≤ oddPrimeProduct q * k) ∧
      (k ≤ candidateUpper q ↔ oddPrimeProduct q * k < uniformThreshold q) := by
  have hP := oddPrimeProduct_pos q
  have hprops := auxiliaryPrimeSet_properties q hq
  have ht : 0 < auxT q := Nat.sub_pos_of_lt (by have := hprops.1.odd_iff.mp hprops.2; omega)
  have hd : 0 < auxD q := (rad_pos_squarefree_dvd (auxT q) ht).1
  have hT : 0 < uniformThreshold q := Nat.mul_pos (Nat.mul_pos (Nat.mul_pos
    (by decide : 0 < 128) hd) (Nat.pow_pos hprops.1.pos)) (Nat.pow_pos ht)
  constructor
  · dsimp [candidateLower]
    rw [← Nat.lt_succ_iff, Nat.div_lt_iff_lt_mul hP, Nat.succ_mul]
    rw [Nat.mul_comm k (oddPrimeProduct q)]
    have : 0 < mainThreshold := by decide
    omega
  · dsimp [candidateUpper]
    rw [Nat.le_div_iff_mul_le hP, Nat.mul_comm k (oddPrimeProduct q)]
    omega

/-- 论文引理 A.2 [lem:formal-count]。 -/
theorem explicitRepresentation_implies_representation (N a : ℕ) (s t : ℤ) (h : ExplicitRepresentation N a s t) :
    HasRepresentation N s t := by
  exact ⟨a, N - a, h.1, Nat.sub_pos_of_lt h.2.1,
    (Nat.add_sub_of_le h.2.1.le).symm, h.2.2.1, h.2.2.2⟩

/-- 论文命题 7.1 [prop:finite-candidates]。 -/
theorem finite_candidate_iff_least (N q : ℕ) (hq : q ∈ auxiliaryPrimeSet)
    (hN : mainThreshold ≤ N) (hsize : N < uniformThreshold q) :
    FiniteCandidate N q ↔ IsLeastMissingOddPrime N q := by
  constructor
  · rintro ⟨_, _, _, hdiv, hnot⟩
    have hprops := auxiliaryPrimeSet_properties q hq
    exact ⟨lt_of_lt_of_le (by decide : 0 < mainThreshold) hN, hprops.1, hprops.2, hnot,
      fun p hp ho hlt => (Finset.dvd_prod_of_mem id (Finset.mem_filter.mpr
        ⟨Finset.mem_range.mpr hlt, hp.odd_iff.mp ho, hp⟩)).trans hdiv⟩
  · exact fun h => ⟨hq, hN, hsize, least_missing_product_dvd N q h, h.2.2.2.1⟩

/-- 论文命题 7.1 [prop:finite-candidates]；论文式 (7.1) [eq:finite-candidate]。 -/
theorem finite_candidate_iff_multiplier (N q : ℕ) :
    FiniteCandidate N q ↔ q ∈ auxiliaryPrimeSet ∧
      ∃ k ∈ candidateMultipliers q, N = oddPrimeProduct q * k := by
  constructor
  · rintro ⟨hq, hN, hsize, ⟨k, rfl⟩, hnot⟩
    refine ⟨hq, k, Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr ⟨?_, ?_⟩, ?_⟩, rfl⟩
    · exact ((candidate_multiplier_bounds q hq k).1).mpr hN
    · exact ((candidate_multiplier_bounds q hq k).2).mpr hsize
    · exact fun hd => hnot (dvd_mul_of_dvd_right hd _)
  · rintro ⟨hq, k, hk, rfl⟩
    obtain ⟨hkl, hku⟩ := Finset.mem_Icc.mp (Finset.mem_filter.mp hk).1
    refine ⟨hq, ((candidate_multiplier_bounds q hq k).1).mp hkl,
      ((candidate_multiplier_bounds q hq k).2).mp hku, dvd_mul_right _ _, ?_⟩
    exact fun hd => (Finset.mem_filter.mp hk).2
      ((oddPrimeProduct_coprime q (auxiliaryPrimeSet_properties q hq).1).dvd_mul_left.mp hd)

/-- 论文命题 7.1 [prop:finite-candidates]。 -/
theorem mem_candidatePairs_iff (N q : ℕ) :
    (N, q) ∈ candidatePairs ↔ FiniteCandidate N q := by
  rw [finite_candidate_iff_multiplier]
  constructor
  · intro h
    obtain ⟨q', hq', hmem⟩ := Finset.mem_biUnion.mp h
    obtain ⟨k, hk, hEq⟩ := Finset.mem_image.mp hmem
    have hqq : q' = q := congrArg Prod.snd hEq
    subst q'
    exact ⟨hq', k, hk, (congrArg Prod.fst hEq).symm⟩
  · rintro ⟨hq, k, hk, hEq⟩
    exact Finset.mem_biUnion.mpr ⟨q, hq, Finset.mem_image.mpr ⟨k, hk,
      by simp only [hEq]⟩⟩

/-- 论文命题 7.2 [prop:candidate-count]；论文式 (7.3) [eq:candidate-count]。
闭整数区间的精确计数；L>U 的行单独取零。 -/
theorem candidate_multiplier_count (q : ℕ) (hq : q ∈ auxiliaryPrimeSet) :
    (candidateMultipliers q).card =
      if candidateLower q ≤ candidateUpper q then
        (candidateUpper q - candidateLower q + 1) -
          (candidateUpper q / q - (candidateLower q - 1) / q)
      else 0 := by
  have hL : 0 < candidateLower q := by
    have hl := (candidate_multiplier_bounds q hq 0).1
    have : 0 < mainThreshold := by decide
    simp only [Nat.mul_zero] at hl
    omega
  split_ifs with hLU
  · have hset : Finset.Icc (candidateLower q) (candidateUpper q) =
        Finset.Ioc 0 (candidateUpper q) \ Finset.Ioc 0 (candidateLower q - 1) := by
      ext n
      simp only [Finset.mem_Icc, Finset.mem_sdiff, Finset.mem_Ioc]
      omega
    have hsub : (Finset.Ioc 0 (candidateLower q - 1)).filter (fun n => q ∣ n) ⊆
        (Finset.Ioc 0 (candidateUpper q)).filter (fun n => q ∣ n) := by
      intro n hn
      simp only [Finset.mem_filter, Finset.mem_Ioc] at hn ⊢
      omega
    have hcount : ((Finset.Icc (candidateLower q) (candidateUpper q)).filter
        fun n => q ∣ n).card = candidateUpper q / q - (candidateLower q - 1) / q := by
      have hfilter : ((Finset.Icc (candidateLower q) (candidateUpper q)).filter fun n => q ∣ n) =
          (Finset.Ioc 0 (candidateUpper q)).filter (fun n => q ∣ n) \
            (Finset.Ioc 0 (candidateLower q - 1)).filter (fun n => q ∣ n) := by
        rw [hset]
        ext n
        simp only [Finset.mem_filter, Finset.mem_sdiff]
        tauto
      rw [hfilter, Finset.card_sdiff_of_subset hsub,
        Nat.Ioc_filter_dvd_card_eq_div, Nat.Ioc_filter_dvd_card_eq_div]
    have hadd := Finset.card_filter_add_card_filter_not (s := Finset.Icc (candidateLower q) (candidateUpper q))
      (fun n => q ∣ n)
    rw [hcount, Nat.card_Icc] at hadd
    dsimp [candidateMultipliers]
    omega
  · simp only [candidateMultipliers, Finset.Icc_eq_empty_of_lt (Nat.lt_of_not_ge hLU),
      Finset.filter_empty, Finset.card_empty]

/-- 论文命题 7.2 [prop:candidate-count]；论文表 1 [tab:finite-candidates]。 -/
theorem candidate_count_and_bound :
    candidatePairs.card = 149753 ∧
      (∀ N q : ℕ, FiniteCandidate N q → N ≤ 3234846615) ∧
      FiniteCandidate 3234846615 31 := by
  have hcard : candidatePairs.card = ∑ q ∈ auxiliaryPrimeSet, (candidateMultipliers q).card := by
    unfold candidatePairs
    rw [Finset.card_biUnion]
    · apply Finset.sum_congr rfl
      intro q hq
      exact Finset.card_image_of_injective _ (fun x y hxy =>
        Nat.eq_of_mul_eq_mul_left (oddPrimeProduct_pos q) (congrArg Prod.fst hxy))
    · intro q hq r hr hne
      apply Finset.disjoint_left.mpr
      intro z hzq hzr
      obtain ⟨x, _, hx⟩ := Finset.mem_image.mp hzq
      obtain ⟨y, _, hy⟩ := Finset.mem_image.mp hzr
      exact hne (congrArg Prod.snd (hx.trans hy.symm))
  refine ⟨?_, ?_, by unfold FiniteCandidate; decide +kernel⟩
  · rw [hcard]
    trans ∑ q ∈ auxiliaryPrimeSet, if candidateLower q ≤ candidateUpper q then
      (candidateUpper q - candidateLower q + 1) -
        (candidateUpper q / q - (candidateLower q - 1) / q) else 0
    · exact Finset.sum_congr rfl (fun q hq => candidate_multiplier_count q hq)
    · decide +kernel
  · intro N q h
    obtain ⟨hq, k, hk, rfl⟩ := (finite_candidate_iff_multiplier N q).mp h
    have hrow : ∀ q ∈ auxiliaryPrimeSet, oddPrimeProduct q * candidateUpper q ≤ 3234846615 := by
      decide +kernel
    exact (Nat.mul_le_mul_left _ (Finset.mem_Icc.mp (Finset.mem_filter.mp hk).1).2).trans (hrow q hq)

/-- 论文命题 7.3 [prop:finite-witnesses]；论文式 (7.4) [eq:csv-signs]。 -/
theorem four_patterns_of_finite_witness (N : ℕ) (W : FiniteWitness N) :
    FourPatternsAt N := by
  have hmm := explicitRepresentation_implies_representation N W.aMM (-1) (-1) W.mm
  have hpp := explicitRepresentation_implies_representation N W.aPP 1 1 W.pp
  have hmp := explicitRepresentation_implies_representation N W.aMP (-1) 1 W.mp
  have hpm := representation_swap N (-1) 1 hmp
  intro s t hs ht
  grind [IsSign]

end GeneralizedGoldbach
