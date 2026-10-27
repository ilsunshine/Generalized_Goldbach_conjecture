module

public import Mathlib.Algebra.BigOperators.Group.Finset.Basic
public import Mathlib.Data.Nat.PrimeFin
public import Mathlib.Data.Nat.Squarefree
public import Mathlib.Algebra.Ring.Parity

/-!
论文引理 2.1 [lem:sign-rules]；
论文式 (2.2) [eq:prime-multiplication]。
omega 计不同素因子，g 在整数中取符号。素因子集合的并、互素乘法和素数幂规则用于后续分解。
-/
@[expose] public section
namespace GeneralizedGoldbach

/-- 论文式 (1.1) [eq:sign-definition]。
不同素因子的个数，不计重数。 -/
def omega (n : ℕ) : ℕ := n.primeFactors.card

/-- 论文式 (1.1) [eq:sign-definition]。
符号在整数中计算。 -/
def g (n : ℕ) : ℤ := (-1 : ℤ) ^ omega n

/-- 论文式 (2.4) [eq:auxiliary-notation]。
不同素因子的乘积；空积为 1。 -/
def rad (n : ℕ) : ℕ := n.primeFactors.prod id

/-- 论文式 (1.1) [eq:sign-definition]。 -/
theorem g_eq_one_or_neg_one (n : ℕ) : g n = 1 ∨ g n = -1 := by
  exact neg_one_pow_eq_or ℤ (omega n)

/-- 论文推论 1.2 [cor:negative-negative]。 -/
theorem g_eq_neg_one_iff (n : ℕ) : g n = -1 ↔ Odd (omega n) := by
  exact neg_one_pow_eq_neg_one_iff_odd (by decide : (-1 : ℤ) ≠ 1)

/-- 论文引理 2.1 [lem:sign-rules]；论文式 (2.2) [eq:prime-multiplication]。
互素乘法性；不能去掉互素条件。 -/
theorem g_mul_of_coprime (a b : ℕ) (ha : 0 < a) (hb : 0 < b)
    (hcop : Nat.Coprime a b) : g (a * b) = g a * g b := by
  simp only [g, omega, Nat.primeFactors_mul ha.ne' hb.ne',
    Finset.card_union_of_disjoint hcop.disjoint_primeFactors, pow_add]

/-- 论文引理 2.1 [lem:sign-rules]；论文式 (2.2) [eq:prime-multiplication]。 -/
theorem g_prime_mul_of_not_dvd (p n : ℕ) (hp : Nat.Prime p) (hn : 0 < n)
    (hpn : ¬ p ∣ n) : g (p * n) = -g n := by
  simp [g, omega, Nat.primeFactors_mul hp.ne_zero hn.ne', hp.primeFactors,
    Nat.mem_primeFactors, hpn, pow_succ]

/-- 论文引理 2.1 [lem:sign-rules]；论文式 (2.2) [eq:prime-multiplication]。 -/
theorem g_prime_mul_of_dvd (p n : ℕ) (hp : Nat.Prime p) (hn : 0 < n)
    (hpn : p ∣ n) : g (p * n) = g n := by
  simp [g, omega, Nat.primeFactors_mul hp.ne_zero hn.ne', hp.primeFactors,
    Finset.insert_eq_of_mem (hp.mem_primeFactors hpn hn.ne')]

/-- 论文引理 2.1 [lem:sign-rules]；论文式 (2.2) [eq:prime-multiplication]。
正次幂不改变不同素因子集合。 -/
theorem g_pow (n k : ℕ) (hn : 0 < n) (hk : 0 < k) : g (n ^ k) = g n := by
  obtain ⟨n, rfl⟩ := Nat.exists_eq_succ_of_ne_zero hn.ne'
  simp only [g, omega, Nat.primeFactors_pow (n + 1) hk.ne']

/-- 论文引理 2.1 [lem:sign-rules]；论文式 (2.2) [eq:prime-multiplication]。 -/
theorem g_prime_pow_mul_of_dvd (p n k : ℕ) (hp : Nat.Prime p) (hn : 0 < n)
    (hpn : p ∣ n) : g (p ^ k * n) = g n := by
  induction k with
  | zero => simp
  | succ k ih =>
    rw [pow_succ', mul_assoc, g_prime_mul_of_dvd p (p ^ k * n) hp
      (Nat.mul_pos (Nat.pow_pos hp.pos) hn) (dvd_mul_of_dvd_right hpn _), ih]

/-- 论文引理 2.1 [lem:sign-rules]；论文式 (2.2) [eq:prime-multiplication]。 -/
theorem g_prime_sq_mul (p n : ℕ) (hp : Nat.Prime p) (hn : 0 < n) :
    g (p ^ 2 * n) = g (p * n) := by
  simp only [g, omega, Nat.primeFactors_mul (pow_ne_zero 2 hp.ne_zero) hn.ne',
    Nat.primeFactors_mul hp.ne_zero hn.ne', Nat.primeFactors_pow p (by decide : 2 ≠ 0)]

/-- 论文引理 2.1 [lem:sign-rules]；论文式 (2.2) [eq:prime-multiplication]。
乘入的每个素因子均已出现时，不改变不同素因子集合。 -/
theorem g_mul_of_prime_support_subset (a b : ℕ) (ha : 0 < a) (hb : 0 < b)
    (hcover : ∀ p : ℕ, Nat.Prime p → p ∣ a → p ∣ b) : g (a * b) = g b := by
  have hsub : a.primeFactors ⊆ b.primeFactors := fun p hp =>
    (Nat.prime_of_mem_primeFactors hp).mem_primeFactors
      (hcover p (Nat.prime_of_mem_primeFactors hp) (Nat.dvd_of_mem_primeFactors hp)) hb.ne'
  simp only [g, omega, Nat.primeFactors_mul ha.ne' hb.ne', Finset.union_eq_right.mpr hsub]

/-- 论文引理 2.1 [lem:sign-rules]；论文式 (2.2) [eq:prime-multiplication]。
偶数因子的奇素因子均已出现时，只需检查素因子 2。 -/
theorem g_mul_of_odd_prime_support_subset (a b : ℕ) (ha : 0 < a) (hb : 0 < b)
    (haeven : Even a)
    (hcover : ∀ p : ℕ, Nat.Prime p → Odd p → p ∣ a → p ∣ b) : g (a * b) = g (2 * b) := by
  have hset : a.primeFactors ∪ b.primeFactors = insert 2 b.primeFactors := by
    ext p
    constructor
    · intro hp
      rcases Finset.mem_union.mp hp with hpa | hpb
      · rcases (Nat.prime_of_mem_primeFactors hpa).eq_two_or_odd' with rfl | ho
        · exact Finset.mem_insert_self _ _
        · exact Finset.mem_insert_of_mem ((Nat.prime_of_mem_primeFactors hpa).mem_primeFactors
            (hcover p (Nat.prime_of_mem_primeFactors hpa) ho (Nat.dvd_of_mem_primeFactors hpa)) hb.ne')
      · exact Finset.mem_insert_of_mem hpb
    · intro hp
      rcases Finset.mem_insert.mp hp with rfl | hpb
      · exact Finset.mem_union_left _ (Nat.prime_two.mem_primeFactors
          (even_iff_two_dvd.mp haeven) ha.ne')
      · exact Finset.mem_union_right _ hpb
  simp only [g, omega, Nat.primeFactors_mul ha.ne' hb.ne',
    Nat.primeFactors_mul (by decide : 2 ≠ 0) hb.ne', Nat.prime_two.primeFactors,
    Finset.singleton_union, hset]

/-- 论文引理 2.4 [lem:auxiliary-arithmetic]。 -/
theorem rad_pos_squarefree_dvd (n : ℕ) (hn : 0 < n) :
    0 < rad n ∧ Squarefree (rad n) ∧ rad n ∣ n ∧ rad n ≤ n := by
  refine ⟨Finset.prod_pos (fun p hp => Nat.pos_of_mem_primeFactors hp), ?_,
    Nat.prod_primeFactors_dvd n, Nat.le_of_dvd hn (Nat.prod_primeFactors_dvd n)⟩
  apply Finset.squarefree_prod_of_pairwise_isCoprime
  · exact fun p hp r hr hne => Nat.coprime_iff_isRelPrime.mp
      ((Nat.prime_of_mem_primeFactors hp).coprime_iff_not_dvd.mpr
        (fun hdiv => hne (((Nat.prime_of_mem_primeFactors hr).dvd_iff_eq
          (Nat.prime_of_mem_primeFactors hp).ne_one).mp hdiv).symm))
  · exact fun p hp => (Nat.prime_of_mem_primeFactors hp).prime.squarefree

/-- 论文引理 2.4 [lem:auxiliary-arithmetic]。 -/
theorem prime_dvd_rad_iff (p n : ℕ) (hp : Nat.Prime p) (hn : 0 < n) :
    p ∣ rad n ↔ p ∣ n := by
  constructor
  · intro h
    obtain ⟨r, hr, hpr⟩ := (hp.prime.dvd_finsetProd_iff _).mp h
    exact hpr.trans (Nat.dvd_of_mem_primeFactors hr)
  · exact fun h => Finset.dvd_prod_of_mem id (hp.mem_primeFactors h hn.ne')

end GeneralizedGoldbach
