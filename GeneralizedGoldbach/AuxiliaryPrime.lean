module

public import GeneralizedGoldbach.Statements
public import Mathlib.Data.Nat.ModEq
public import Mathlib.Data.Nat.Prime.Infinite

/-!
论文引理 2.3 [lem:least-missing]；
论文引理 2.4 [lem:auxiliary-arithmetic]。
选择最小未整除奇素数，消除局部 H(N,q) 假设，并建立前缀积及 radical 的整除性质。
-/
@[expose] public section
namespace GeneralizedGoldbach

/-- 论文式 (2.4) [eq:auxiliary-notation]。 -/
def auxT (q : ℕ) : ℕ := q - 1
/-- 论文式 (2.4) [eq:auxiliary-notation]。 -/
def auxD (q : ℕ) : ℕ := rad (auxT q)

/-- 论文定义 2.2 [def:admissible]；论文式 (2.3) [eq:H]。
H(N,q) 是局部条件；每个正 N 的选择存在性另外声明。 -/
def AdmissibleAuxiliaryPrime (N q : ℕ) : Prop :=
  0 < N ∧ Nat.Prime q ∧ Odd q ∧ ¬ q ∣ N ∧
    ∀ p : ℕ, Nat.Prime p → Odd p → p ∣ auxT q → p ∣ N

/-- 论文引理 2.3 [lem:least-missing]。 -/
def IsLeastMissingOddPrime (N q : ℕ) : Prop :=
  0 < N ∧ Nat.Prime q ∧ Odd q ∧ ¬ q ∣ N ∧
    ∀ p : ℕ, Nat.Prime p → Odd p → p < q → p ∣ N

/-- 论文式 (2.4) [eq:auxiliary-notation]。 -/
def oddPrimeProduct (q : ℕ) : ℕ :=
  ((Finset.range q).filter fun p => 3 ≤ p ∧ Nat.Prime p).prod id

/-- 论文式 (2.4) [eq:auxiliary-notation]。 -/
theorem oddPrimeProduct_pos (q : ℕ) : 0 < oddPrimeProduct q := by
  exact Finset.prod_pos (fun p hp => (by decide : 0 < 3).trans_le (Finset.mem_filter.mp hp).2.1)

/-- 论文引理 2.3 [lem:least-missing]。 -/
theorem oddPrimeProduct_coprime (q : ℕ) (hq : Nat.Prime q) : Nat.Coprime q (oddPrimeProduct q) := by
  apply hq.coprime_iff_not_dvd.mpr
  intro hd
  obtain ⟨p, hp, hqp⟩ := (hq.prime.dvd_finsetProd_iff _).mp hd
  have hprime : Nat.Prime p := (Finset.mem_filter.mp hp).2.2
  have hEq : q = p := (hprime.dvd_iff_eq hq.ne_one).mp hqp |>.symm
  exact (Nat.ne_of_lt (Finset.mem_range.mp (Finset.mem_filter.mp hp).1)) hEq.symm

/-- 论文引理 2.3 [lem:least-missing]；论文第 A 节 [app:formal]。
补充：复用 Mathlib 的欧几里得定理给出大于 N 的奇素数，再用 Nat.find。
这与纸面 2N+1 素因子的非空路线有相同结论，不添加假设。 -/
theorem exists_least_missing_odd_prime (N : ℕ) (hN : 0 < N) :
    ∃ q : ℕ, IsLeastMissingOddPrime N q := by
  obtain ⟨p, hpge, hp⟩ := Nat.exists_infinite_primes (max (N + 1) 3)
  have hw : ∃ q : ℕ, Nat.Prime q ∧ Odd q ∧ ¬ q ∣ N :=
    ⟨p, hp, hp.odd_iff.mpr ((le_max_right (N + 1) 3).trans hpge), fun hdvd =>
      (not_le_of_gt ((Nat.lt_succ_self N).trans_le ((le_max_left (N + 1) 3).trans hpge)))
        (Nat.le_of_dvd hN hdvd)⟩
  exact ⟨Nat.find hw, hN, (Nat.find_spec hw).1, (Nat.find_spec hw).2.1,
    (Nat.find_spec hw).2.2, fun r hr ho hlt => Classical.byContradiction fun hnot =>
      (not_le_of_gt hlt) (Nat.find_min' hw ⟨hr, ho, hnot⟩)⟩

/-- 论文引理 2.3 [lem:least-missing]；论文式 (2.3) [eq:H]。 -/
theorem least_missing_implies_admissible (N q : ℕ)
    (h : IsLeastMissingOddPrime N q) : AdmissibleAuxiliaryPrime N q := by
  exact ⟨h.1, h.2.1, h.2.2.1, h.2.2.2.1, fun p hp hodd hdiv =>
    h.2.2.2.2 p hp hodd (lt_of_le_of_lt
      (Nat.le_of_dvd (Nat.sub_pos_of_lt
        ((by decide : 1 < 3).trans_le (h.2.1.odd_iff.mp h.2.2.1))) hdiv)
      (Nat.sub_lt h.2.1.pos (by decide)))⟩

/-- 论文引理 2.3 [lem:least-missing]；论文式 (2.5) [eq:prefix-divides]。 -/
theorem least_missing_product_dvd (N q : ℕ)
    (h : IsLeastMissingOddPrime N q) : oddPrimeProduct q ∣ N := by
  exact Finset.prod_primes_dvd N
    (fun p hp => (Finset.mem_filter.mp hp).2.2.prime)
    (fun p hp => h.2.2.2.2 p (Finset.mem_filter.mp hp).2.2
      ((Finset.mem_filter.mp hp).2.2.odd_iff.mpr (Finset.mem_filter.mp hp).2.1)
      (Finset.mem_range.mp (Finset.mem_filter.mp hp).1))

/-- 论文引理 2.4 [lem:auxiliary-arithmetic]；论文式 (2.6) [eq:radical-arithmetic]。 -/
theorem auxiliary_arithmetic (N q : ℕ) (h : AdmissibleAuxiliaryPrime N q) :
    3 ≤ q ∧ 0 < auxT q ∧ Even (auxT q) ∧ 0 < auxD q ∧
      Even (auxD q) ∧ Odd (auxD q / 2) ∧ auxD q ∣ auxT q ∧
      Nat.Coprime (auxD q) q := by
  have hq3 : 3 ≤ q := h.2.1.odd_iff.mp h.2.2.1
  have ht : 0 < auxT q := Nat.sub_pos_of_lt ((by decide : 1 < 3).trans_le hq3)
  obtain ⟨hdpos, hdsq, hddvd, _⟩ := rad_pos_squarefree_dvd (auxT q) ht
  have het : Even (auxT q) := Nat.Odd.sub_odd h.2.2.1 (by decide : Odd (1 : ℕ))
  have hd2 : 2 ∣ auxD q := (prime_dvd_rad_iff 2 (auxT q) Nat.prime_two ht).mpr
    (even_iff_two_dvd.mp het)
  refine ⟨hq3, ht, het, hdpos, even_iff_two_dvd.mpr hd2, ?_, hddvd, ?_⟩
  · exact Nat.not_even_iff_odd.mp (fun he =>
      (Nat.squarefree_iff_prime_squarefree.mp hdsq 2 Nat.prime_two)
        (by simpa only [Nat.div_mul_cancel hd2] using
          (Nat.mul_dvd_mul (even_iff_two_dvd.mp he) (dvd_refl 2))))
  · exact (h.2.1.coprime_iff_not_dvd.mpr (fun hqd =>
      Nat.not_dvd_of_pos_of_lt ht (Nat.sub_lt h.2.1.pos (by decide))
        (hqd.trans hddvd))).symm

/-- 论文引理 2.4 [lem:auxiliary-arithmetic]。
N 为偶数时才得到完整 d∣N；N 为奇数不能作此推断。 -/
theorem auxiliary_radical_dvd_even (N q : ℕ) (h : AdmissibleAuxiliaryPrime N q)
    (heven : Even N) : auxD q ∣ N := by
  exact Finset.prod_primes_dvd N
    (fun p hp => (Nat.prime_of_mem_primeFactors hp).prime)
    (fun p hp => (Nat.prime_of_mem_primeFactors hp).eq_two_or_odd'.elim
      (fun h2 => h2.symm ▸ (even_iff_two_dvd.mp heven))
      (fun ho => h.2.2.2.2 p (Nat.prime_of_mem_primeFactors hp) ho
        (Nat.dvd_of_mem_primeFactors hp)))

end GeneralizedGoldbach
