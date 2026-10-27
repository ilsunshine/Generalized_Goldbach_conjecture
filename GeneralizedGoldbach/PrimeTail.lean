module

public import GeneralizedGoldbach.BertrandTail

/-!
论文命题 6.8 [prop:large-tail]；
论文定理 B.5 [thm:bertrand-tail]。
保留正文的数值下界接口；前缀积下界及无限尾部由附录 B 的伯特兰证明导出。
-/
@[expose] public section
namespace GeneralizedGoldbach

/-- 论文引理 6.7 [lem:nagura-product]；论文式 (6.10) [eq:nagura-step]。
严格增长的整数版，不使用实数比值或截断除法。 -/
theorem prime_product_bound_step (q q' : ℕ) (hq : 71 ≤ q)
    (hnext : ConsecutivePrimes q q') (hgap : 5 * q' < 6 * q)
    (hbound : 1152 * q ^ 12 < 25 * oddPrimeProduct q) :
    1152 * q' ^ 12 < 25 * oddPrimeProduct q' := by
  have hpow : (5 * q') ^ 12 ≤ (6 * q) ^ 12 := Nat.pow_le_pow_left hgap.le 12
  have hcoef : 6 ^ 12 ≤ q * 5 ^ 12 := by omega
  have h₁ := Nat.mul_le_mul_left 1152 hpow
  have h₂ := Nat.mul_le_mul_left (1152 * q ^ 12) hcoef
  have h₃ := Nat.mul_lt_mul_of_pos_right hbound
    (Nat.mul_pos (show 0 < q by omega) (by decide : 0 < 5 ^ 12))
  apply (Nat.mul_lt_mul_left (by decide : 0 < 5 ^ 12)).mp
  rw [odd_prime_product_next q q' (by omega) hnext]
  simp only [mul_pow] at h₁
  nlinarith only [h₁, h₂, h₃]

/-- 论文引理 6.7 [lem:nagura-product]；论文命题 B.4 [prop:bertrand-product]。 数值下界接口；实际由伯特兰路线的更强乘积界推出。 -/
theorem prime_product_bound (q : ℕ) (hq : Nat.Prime q) (hlarge : 71 ≤ q) :
    1152 * q ^ 12 < 25 * oddPrimeProduct q := by
  have h := BertrandRoute.prime_product_bound q hq hlarge
  omega

/-- 论文式 (6.11) [eq:nagura-polynomial]。 -/
theorem sufficient_bound_lt_polynomial (q p : ℕ) (hq : 71 ≤ q)
    (_hqp : q < p) (hgap : 5 * p < 6 * q) :
    25 * sufficientBound q p < 1152 * q ^ 12 := by
  have hqpos : 0 < q := by omega
  have htpos : 0 < auxT q := Nat.sub_pos_of_lt (by omega : 1 < q)
  have hdpos : 0 < auxD q := (rad_pos_squarefree_dvd (auxT q) htpos).1
  have htle : auxT q ≤ q := Nat.sub_le q 1
  have hdle : auxD q ≤ q := ((rad_pos_squarefree_dvd (auxT q) htpos).2.2.2).trans htle
  have hpow : 25 * p ^ 2 < 36 * q ^ 2 := by
    simpa only [mul_pow] using Nat.pow_lt_pow_left hgap (by decide : 2 ≠ 0)
  have hstrict := Nat.mul_lt_mul_of_pos_right hpow
    (Nat.mul_pos (Nat.mul_pos (Nat.mul_pos (by decide : 0 < 32)
      (Nat.pow_pos (n := 4) htpos)) (Nat.pow_pos (n := 5) hqpos)) hdpos)
  have hupper := Nat.mul_le_mul_left (1152 * q ^ 7)
    (Nat.mul_le_mul (Nat.pow_le_pow_left htle 4) hdle)
  dsimp [sufficientBound]
  nlinarith only [hstrict, hupper]

/-- 论文命题 6.8 [prop:large-tail]；论文定理 B.5 [thm:bertrand-tail]。 -/
theorem four_patterns_of_large_least_prime (N q : ℕ)
    (hleast : IsLeastMissingOddPrime N q) (hq : 61 ≤ q) : FourPatternsAt N := by
  exact BertrandRoute.four_patterns_of_large_least_prime N q hleast hq

end GeneralizedGoldbach
