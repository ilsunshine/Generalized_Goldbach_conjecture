module

public import GeneralizedGoldbach.SmallPrimes
public import GeneralizedGoldbach.PrimeTail
public import GeneralizedGoldbach.FiniteClosure
public import Mathlib.Tactic.IntervalCases
public import Mathlib.Tactic.NormNum
public import Mathlib.Tactic.NormNum.Prime

/-!
论文定理 1.1 [thm:main]；
论文推论 1.2 [cor:negative-negative]。
选择最小未整除奇素数后穷尽小、中、大三个分支。最终定理不增加 H(N,q)、素数区间或证书假设。
-/
@[expose] public section
namespace GeneralizedGoldbach

/-- 论文第 7 节 [sec:finite]；论文命题 5.4 [prop:small-primes]；论文命题 6.8 [prop:large-tail]。 -/
theorem least_prime_cases (N q : ℕ) (h : IsLeastMissingOddPrime N q) :
    q ≤ 7 ∨ q ∈ auxiliaryPrimeSet ∨ 61 ≤ q := by
  by_cases hsmall : q ≤ 7
  · exact Or.inl hsmall
  · by_cases hlarge : 61 ≤ q
    · exact Or.inr (Or.inr hlarge)
    · have hp : Nat.Prime q := h.2.1
      interval_cases q <;> norm_num [auxiliaryPrimeSet] at *

/-- 论文定理 1.1 [thm:main]；论文第 7 节 [sec:finite]。 -/
theorem four_patterns_main : FourPatternsConjecture := by
  intro N hN
  obtain ⟨q, hq⟩ := exists_least_missing_odd_prime N
    (lt_of_lt_of_le (by decide : 0 < mainThreshold) hN)
  exact (least_prime_cases N q hq).elim
    (four_patterns_of_small_least_prime N q hN hq)
    (fun h => h.elim (fun hQ =>
      if hsize : uniformThreshold q ≤ N then
        four_patterns_of_uniform_threshold N q (least_missing_implies_admissible N q hq) hQ hsize
      else four_patterns_of_finite_candidate N q
        ⟨hQ, hN, Nat.lt_of_not_ge hsize, least_missing_product_dvd N q hq, hq.2.2.2.1⟩)
      (four_patterns_of_large_least_prime N q hq))

/-- 论文定理 1.1 [thm:main]；论文式 (1.3) [eq:main]。 -/
theorem four_patterns_main_expanded (N : ℕ) (hN : 100000 ≤ N)
    (s t : ℤ) (hs : IsSign s) (ht : IsSign t) :
    ∃ a b : ℕ, 0 < a ∧ 0 < b ∧ N = a + b ∧ g a = s ∧ g b = t := by
  exact four_patterns_main N hN s t hs ht

/-- 论文定理 1.1 [thm:main]；论文式 (1.2) [eq:representation-count]。 -/
theorem representationCount_main (N : ℕ) (hN : 100000 ≤ N)
    (s t : ℤ) (hs : IsSign s) (ht : IsSign t) :
    0 < representationCount N s t := by
  exact (representationCount_pos_iff N s t).mpr (four_patterns_main N hN s t hs ht)

/-- 论文推论 1.2 [cor:negative-negative]。 -/
theorem generalized_goldbach : NegativeNegativeConjecture := by
  exact fun N hN => match four_patterns_main N hN (-1) (-1) (Or.inr rfl) (Or.inr rfl) with
    | ⟨a, b, ha, hb, hN, hs, ht⟩ =>
      ⟨a, b, ha, hb, hN, (g_eq_neg_one_iff a).mp hs, (g_eq_neg_one_iff b).mp ht⟩

end GeneralizedGoldbach
