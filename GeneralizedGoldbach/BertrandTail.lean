module

public import GeneralizedGoldbach.PrimeTailBasic
public import Mathlib.NumberTheory.Bertrand

/-!
论文第 B 节 [app:bertrand]；
论文定理 B.5 [thm:bertrand-tail]。
以三个整数比较覆盖有限前缀，再由伯特兰区间与强归纳处理全部大素数；这是主证明实际调用的尾部路线。
-/
@[expose] public section
namespace GeneralizedGoldbach.BertrandRoute

/-- 论文引理 B.2 [lem:bertrand-finite]。 -/
theorem oddPrimeProduct_mono : Monotone oddPrimeProduct := by
  exact fun a b hab => Finset.prod_le_prod_of_subset_of_one_le'
    (fun p hp => Finset.mem_filter.mpr
      ⟨Finset.mem_range.mpr
        ((Finset.mem_range.mp (Finset.mem_filter.mp hp).1).trans_le hab),
        (Finset.mem_filter.mp hp).2⟩)
    (fun p hp _ => (by decide : 1 ≤ 3).trans (Finset.mem_filter.mp hp).2.1)

/-- 论文引理 B.1 [lem:bertrand-anchors]；论文式 (B.2) [eq:bertrand-anchors]。 -/
theorem anchor_comparisons :
    128 * 73 ^ 12 < oddPrimeProduct 71 ∧
    128 * 126 ^ 12 < oddPrimeProduct 74 ∧
    128 * 4099 ^ 12 < oddPrimeProduct 127 ∧
    Nat.Prime 4099 ∧ 2 ^ 12 < 4099 := by
  decide +kernel

/-- 论文引理 B.2 [lem:bertrand-finite]；论文式 (B.3) [eq:bertrand-finite]。 -/
theorem finite_prefix_bound (q : ℕ) (hlo : 71 ≤ q) (hhi : q ≤ 4099) :
    128 * q ^ 12 < oddPrimeProduct q := by
  by_cases h73 : q ≤ 73
  · exact (Nat.mul_le_mul_left 128 (Nat.pow_le_pow_left h73 12)).trans_lt
      (anchor_comparisons.1.trans_le (oddPrimeProduct_mono hlo))
  · by_cases h126 : q ≤ 126
    · exact (Nat.mul_le_mul_left 128 (Nat.pow_le_pow_left h126 12)).trans_lt
        (anchor_comparisons.2.1.trans_le (oddPrimeProduct_mono (by omega)))
    · exact (Nat.mul_le_mul_left 128 (Nat.pow_le_pow_left hhi 12)).trans_lt
        (anchor_comparisons.2.2.1.trans_le (oddPrimeProduct_mono (by omega)))

/-- 论文引理 B.3 [lem:bertrand-step]；论文式 (B.4) [eq:bertrand-step]。 -/
theorem prime_product_bound_step (r q : ℕ) (hr : 4099 ≤ r)
    (hnext : ConsecutivePrimes r q) (hgap : q ≤ 2 * r)
    (hbound : 128 * r ^ 12 < oddPrimeProduct r) :
    128 * q ^ 12 < oddPrimeProduct q := by
  rw [odd_prime_product_next r q (by omega) hnext]
  have hpow := Nat.mul_le_mul_left 128 (Nat.pow_le_pow_left hgap 12)
  have hcoef := Nat.mul_le_mul_right (128 * r ^ 12) (show 2 ^ 12 ≤ r by omega)
  have hstrict := Nat.mul_lt_mul_of_pos_left hbound (show 0 < r by omega)
  calc
    128 * q ^ 12 ≤ 128 * (2 * r) ^ 12 := hpow
    _ = 2 ^ 12 * (128 * r ^ 12) := by ring
    _ ≤ r * (128 * r ^ 12) := hcoef
    _ < r * oddPrimeProduct r := hstrict

/-- 论文命题 B.4 [prop:bertrand-product]。 -/
theorem prime_product_bound (q : ℕ) (hq : Nat.Prime q) (hlarge : 71 ≤ q) :
    128 * q ^ 12 < oddPrimeProduct q := by
  induction q using Nat.strong_induction_on with
  | h q ih =>
    by_cases hfinite : q ≤ 4099
    · exact finite_prefix_bound q hlarge hfinite
    · let S := (Finset.range q).filter fun r => 4099 ≤ r ∧ Nat.Prime r
      have hS : S.Nonempty :=
        ⟨4099, Finset.mem_filter.mpr
          ⟨Finset.mem_range.mpr (Nat.lt_of_not_ge hfinite), le_rfl, anchor_comparisons.2.2.2.1⟩⟩
      let r := S.max' hS
      obtain ⟨hrq, hrlarge, hr⟩ := Finset.mem_filter.mp (Finset.max'_mem S hS)
      have hnext : ConsecutivePrimes r q := by
        refine ⟨hr, hq, Finset.mem_range.mp hrq, ?_⟩
        exact fun p hp hrp => le_of_not_gt fun hpq =>
          (not_le_of_gt hrp) (Finset.le_max' S p
            (Finset.mem_filter.mpr
              ⟨Finset.mem_range.mpr hpq, hrlarge.trans hrp.le, hp⟩))
      obtain ⟨p, hp, hrp, hpbound⟩ := Nat.exists_prime_lt_and_le_two_mul r hr.ne_zero
      exact prime_product_bound_step r q hrlarge hnext
        ((hnext.2.2.2 p hp hrp).trans hpbound)
        (ih r (Finset.mem_range.mp hrq) hr ((by decide : 71 ≤ 4099).trans hrlarge))

/-- 论文式 (B.1) [eq:bertrand-polynomial]。 -/
theorem sufficient_bound_lt_polynomial (q p : ℕ) (hq : 71 ≤ q)
    (hp : p ≤ 2 * q) : sufficientBound q p < 128 * q ^ 12 := by
  have htpos : 0 < auxT q := Nat.sub_pos_of_lt (by omega)
  have hdlt : auxD q < q :=
    ((rad_pos_squarefree_dvd (auxT q) htpos).2.2.2).trans_lt
      (Nat.sub_lt (by omega : 0 < q) (by decide : 0 < 1))
  have hle : sufficientBound q p ≤ 32 * (2 * q) ^ 2 * q ^ 4 * q ^ 5 * auxD q :=
    Nat.mul_le_mul_right _ (Nat.mul_le_mul_right _
      (Nat.mul_le_mul (Nat.mul_le_mul_left 32 (Nat.pow_le_pow_left hp 2))
        (Nat.pow_le_pow_left (Nat.sub_le q 1) 4)))
  have hqpos : 0 < q := by omega
  calc
    sufficientBound q p ≤ 32 * (2 * q) ^ 2 * q ^ 4 * q ^ 5 * auxD q := hle
    _ = (128 * q ^ 11) * auxD q := by ring
    _ < (128 * q ^ 11) * q := Nat.mul_lt_mul_of_pos_left hdlt (by positivity)
    _ = 128 * q ^ 12 := by ring

/-- 论文定理 B.5 [thm:bertrand-tail]。 -/
theorem four_patterns_of_large_least_prime (N q : ℕ)
    (hleast : IsLeastMissingOddPrime N q) (hq : 61 ≤ q) : FourPatternsAt N := by
  have hH := least_missing_implies_admissible N q hleast
  have hP : oddPrimeProduct q ≤ N :=
    Nat.le_of_dvd hleast.1 (least_missing_product_dvd N q hleast)
  by_cases hlarge : 71 ≤ q
  · obtain ⟨p, hp, hqp, hupper⟩ := Nat.exists_prime_lt_and_le_two_mul q hleast.2.1.ne_zero
    have havoid : ¬ p ∣ q * auxT q := fun hd => (hp.dvd_mul.mp hd).elim
      (Nat.not_dvd_of_pos_of_lt hleast.2.1.pos hqp)
      (Nat.not_dvd_of_pos_of_lt (auxiliary_arithmetic N q hH).2.1
        ((Nat.sub_lt hleast.2.1.pos (by decide : 0 < 1)).trans hqp))
    exact four_patterns_of_sufficient_bound N q p hH hp havoid
      (((sufficient_bound_lt_polynomial q p hlarge hupper).trans
        (prime_product_bound q hleast.2.1 hlarge)).trans_le hP)
  · have hprime := hleast.2.1
    have hcases : q = 61 ∨ q = 67 := by
      interval_cases q <;> norm_num at *
    rcases hcases with rfl | rfl
    · exact four_patterns_of_sufficient_bound N 61 7 hH (by norm_num)
        (by decide +kernel) (by have hb := prime_tail_base_cases; omega)
    · exact four_patterns_of_sufficient_bound N 67 5 hH (by norm_num)
        (by decide +kernel) (by have hb := prime_tail_base_cases; omega)

end GeneralizedGoldbach.BertrandRoute
