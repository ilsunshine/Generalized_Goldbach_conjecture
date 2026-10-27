module

public import GeneralizedGoldbach.SufficientBound
public import Mathlib.Tactic.IntervalCases
public import Mathlib.Tactic.NormNum.Prime

/-!
论文引理 6.6 [lem:tail-base-cases]；
论文引理 B.3 [lem:bertrand-step]。
保存相邻素数、下一素数的存在性、奇素数前缀积恒等式，以及 q=61、67 的数值基例。
-/
@[expose] public section
namespace GeneralizedGoldbach

/-- 论文引理 B.3 [lem:bertrand-step]。 -/
def ConsecutivePrimes (q q' : ℕ) : Prop :=
  Nat.Prime q ∧ Nat.Prime q' ∧ q < q' ∧
    ∀ p : ℕ, Nat.Prime p → q < p → q' ≤ p

/-- 论文引理 6.7 [lem:nagura-product]；论文引理 B.3 [lem:bertrand-step]。 -/
theorem exists_next_prime (q : ℕ) (hq : Nat.Prime q) :
    ∃ q' : ℕ, ConsecutivePrimes q q' := by
  have hex : ∃ p : ℕ, q < p ∧ Nat.Prime p := by
    obtain ⟨p, hpge, hp⟩ := Nat.exists_infinite_primes (q + 1)
    exact ⟨p, by omega, hp⟩
  exact ⟨Nat.find hex, hq, (Nat.find_spec hex).2, (Nat.find_spec hex).1,
    fun p hp hlo => Nat.find_min' hex ⟨hlo, hp⟩⟩

/-- 论文式 (6.10) [eq:nagura-step]；论文式 (B.4) [eq:bertrand-step]。 -/
theorem odd_prime_product_next (q q' : ℕ) (hq : 3 ≤ q)
    (hnext : ConsecutivePrimes q q') : oddPrimeProduct q' = q * oddPrimeProduct q := by
  have hset : ((Finset.range q').filter fun p => 3 ≤ p ∧ Nat.Prime p) =
      insert q ((Finset.range q).filter fun p => 3 ≤ p ∧ Nat.Prime p) := by
    ext p
    simp only [Finset.mem_filter, Finset.mem_range, Finset.mem_insert]
    constructor
    · rintro ⟨hpl, hp3, hp⟩
      by_cases hlt : p < q
      · exact Or.inr ⟨hlt, hp3, hp⟩
      · have hle : p ≤ q := by
          by_contra hnot
          exact (not_le_of_gt hpl) (hnext.2.2.2 p hp (by omega))
        exact Or.inl (by omega)
    · rintro (rfl | ⟨hpl, hp3, hp⟩)
      · exact ⟨hnext.2.2.1, hq, hnext.1⟩
      · exact ⟨hpl.trans hnext.2.2.1, hp3, hp⟩
  unfold oddPrimeProduct
  rw [hset, Finset.prod_insert (by simp)]
  rfl

/-- 论文引理 6.6 [lem:tail-base-cases]；论文式 (6.8) [eq:tail-base-cases]。
独立精确整数基例；Lean 内核计算复核全部常数。 -/
theorem prime_tail_base_cases :
    oddPrimeProduct 61 = 961380175077106319535 ∧
    sufficientBound 61 7 = 514898337587558400000 ∧
    oddPrimeProduct 67 = 58644190679703485491635 ∧
    sufficientBound 67 5 = 1352644522537268505600 ∧
    25 * oddPrimeProduct 71 = 1152 * 71 ^ 12 + 79325064871285123771842993 := by
  decide +kernel

end GeneralizedGoldbach
