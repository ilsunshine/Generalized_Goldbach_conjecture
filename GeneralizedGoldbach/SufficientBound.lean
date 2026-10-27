module

public import GeneralizedGoldbach.ThreePoint

/-!
论文命题 6.5 [prop:sufficient-bound]。
由奇偶两个平方根长度估计推出通用充分条件；B 是精确自然数表达式，最终条件保持严格 B<N。
-/
@[expose] public section
namespace GeneralizedGoldbach

/-- 论文式 (6.5) [eq:sufficient-bound]。 -/
def sufficientBound (q p : ℕ) : ℕ := 32 * p ^ 2 * auxT q ^ 4 * q ^ 5 * auxD q

/-- 论文命题 6.5 [prop:sufficient-bound]；论文式 (6.6) [eq:odd-gap-bound]。 -/
theorem odd_gap_of_sufficient_bound (N q p : ℕ) (hH : AdmissibleAuxiliaryPrime N q)
    (hp : Nat.Prime p) (hsize : sufficientBound q p < N) :
    2 * (q : ℝ) ^ 2 * (p : ℝ) * Real.sqrt (2 * (oddModulus q : ℝ)) <
      Real.sqrt ((N : ℝ) / (auxT q : ℝ) ^ 2) := by
  have har := auxiliary_arithmetic N q hH
  have hqR : (3 : ℝ) ≤ q := by exact_mod_cast har.1
  have htR : (0 : ℝ) < auxT q := by exact_mod_cast har.2.1
  have hpR : (0 : ℝ) < p := by exact_mod_cast hp.pos
  have htq : (auxT q : ℝ) = (q : ℝ) - 1 := by
    simp only [auxT, Nat.cast_sub (show 1 ≤ q by omega), Nat.cast_one]
  have hqt : (q : ℝ) ≤ 4 * (auxT q : ℝ) ^ 2 := by nlinarith
  apply (Real.lt_sqrt (show 0 ≤ 2 * (q : ℝ) ^ 2 * (p : ℝ) *
    Real.sqrt (2 * (oddModulus q : ℝ)) by positivity)).mpr
  apply (lt_div_iff₀ (sq_pos_of_pos htR)).mpr
  have hs : (32 : ℝ) * (p : ℝ) ^ 2 * (auxT q : ℝ) ^ 4 * (q : ℝ) ^ 5 * auxD q < N := by
    exact_mod_cast hsize
  have hh := mul_le_mul_of_nonneg_left hqt
    (show 0 ≤ (8 : ℝ) * (p : ℝ) ^ 2 * (auxT q : ℝ) ^ 2 * (q : ℝ) ^ 5 * auxD q by positivity)
  have hsq : (2 * (q : ℝ) ^ 2 * (p : ℝ) * Real.sqrt (2 * (oddModulus q : ℝ))) ^ 2 =
      8 * (q : ℝ) ^ 6 * (p : ℝ) ^ 2 * auxD q := by
    rw [mul_pow, Real.sq_sqrt (by positivity)]
    simp only [oddModulus, Nat.cast_mul, Nat.cast_pow]
    ring
  rw [hsq]
  nlinarith only [hh, hs]

/-- 论文命题 6.5 [prop:sufficient-bound]；论文式 (6.7) [eq:even-gap-bound]。 -/
theorem even_gap_of_sufficient_bound (N q p : ℕ) (hH : AdmissibleAuxiliaryPrime N q)
    (hp : Nat.Prime p) (hsize : sufficientBound q p < N) :
    2 * ((auxT q * q : ℕ) : ℝ) * (p : ℝ) * Real.sqrt (2 * (evenModulus q : ℝ)) <
      Real.sqrt ((N : ℝ) / (auxT q : ℝ)) - Real.sqrt ((N : ℝ) / (q : ℝ)) := by
  have har := auxiliary_arithmetic N q hH
  have htpos : (0 : ℝ) < auxT q := by exact_mod_cast har.2.1
  have hqpos : (0 : ℝ) < q := by exact_mod_cast hH.2.1.pos
  have hNpos : (0 : ℝ) < N := by exact_mod_cast hH.1
  have hppos : (0 : ℝ) < p := by exact_mod_cast hp.pos
  have htq : (q : ℝ) = (auxT q : ℝ) + 1 := by
    exact_mod_cast (Nat.sub_add_cancel (show 1 ≤ q by omega)).symm
  let a := Real.sqrt ((N : ℝ) / (auxT q : ℝ))
  let b := Real.sqrt ((N : ℝ) / (q : ℝ))
  let K := 2 * ((auxT q * q : ℕ) : ℝ) * (p : ℝ) * Real.sqrt (2 * (evenModulus q : ℝ))
  have ha : 0 ≤ a := Real.sqrt_nonneg _
  have hb : 0 ≤ b := Real.sqrt_nonneg _
  have hK : 0 ≤ K := by dsimp [K]; positivity
  have ha2 : a ^ 2 * (auxT q : ℝ) = N :=
    (eq_div_iff htpos.ne').mp (Real.sq_sqrt (div_nonneg hNpos.le htpos.le))
  have hb2 : b ^ 2 * (q : ℝ) = N :=
    (eq_div_iff hqpos.ne').mp (Real.sq_sqrt (div_nonneg hNpos.le hqpos.le))
  have hba : b ≤ a := Real.sqrt_le_sqrt (div_le_div_of_nonneg_left hNpos.le htpos (by linarith))
  have hid : (a - b) * (a + b) * (auxT q : ℝ) * q = N := by
    calc
      _ = (a ^ 2 * (auxT q : ℝ)) * q - (b ^ 2 * (q : ℝ)) * auxT q := by ring
      _ = (N : ℝ) * q - N * auxT q := by rw [ha2, hb2]
      _ = N := by rw [htq]; ring
  have hB : (sufficientBound q p : ℝ) = 4 * K ^ 2 * (auxT q : ℝ) * (q : ℝ) ^ 2 := by
    dsimp [K]
    rw [mul_pow, Real.sq_sqrt (by positivity)]
    simp only [sufficientBound, evenModulus, Nat.cast_mul, Nat.cast_pow, Nat.cast_ofNat]
    ring
  change K < a - b
  by_contra hnot
  have hbad : a - b ≤ K := le_of_not_gt hnot
  have hprod : (a - b) * (a + b) ≤ K * (2 * a) :=
    (mul_le_mul_of_nonneg_right hbad (by linarith)).trans
      (mul_le_mul_of_nonneg_left (by linarith : a + b ≤ 2 * a) hK)
  have hmul := mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_right hprod htpos.le) hqpos.le
  rw [hid] at hmul
  have hsq := pow_le_pow_left₀ hNpos.le hmul 2
  have hsqEq : (K * (2 * a) * (auxT q : ℝ) * q) ^ 2 =
      (4 * K ^ 2 * (auxT q : ℝ) * (q : ℝ) ^ 2) * N := by
    calc
      _ = (4 * K ^ 2 * (auxT q : ℝ) * (q : ℝ) ^ 2) * (a ^ 2 * auxT q) := by ring
      _ = _ := by rw [ha2]
  rw [hsqEq, ← hB, pow_two] at hsq
  have hle : (N : ℝ) ≤ sufficientBound q p := le_of_mul_le_mul_right hsq hNpos
  exact (not_le_of_gt (show (sufficientBound q p : ℝ) < N by exact_mod_cast hsize)) hle

/-- 论文命题 6.5 [prop:sufficient-bound]；论文式 (6.5) [eq:sufficient-bound]。 -/
theorem four_patterns_of_sufficient_bound (N q p : ℕ)
    (hH : AdmissibleAuxiliaryPrime N q) (hp : Nat.Prime p)
    (havoid : ¬ p ∣ q * auxT q) (hsize : sufficientBound q p < N) :
    FourPatternsAt N := by
  have har := auxiliary_arithmetic N q hH
  have htpos : (0 : ℝ) < auxT q := by exact_mod_cast har.2.1
  have hqpos : (0 : ℝ) < q := by exact_mod_cast hH.2.1.pos
  have hNpos : (0 : ℝ) < N := by exact_mod_cast hH.1
  have hpt : ¬ p ∣ auxT q := fun hd => havoid (dvd_mul_of_dvd_right hd q)
  have hpq : ¬ p ∣ q := fun hd => havoid (dvd_mul_of_dvd_left hd _)
  have hpd : ¬ p ∣ auxD q := fun hd => hpt (hd.trans har.2.2.2.2.2.2.1)
  rcases Nat.even_or_odd N with heven | hodd
  · obtain ⟨r, _, hdr, _, hrmod⟩ := even_residue_properties N q hH heven
    have hm : 0 < evenModulus q := Nat.mul_pos (Nat.mul_pos har.2.1 hH.2.1.pos) har.2.2.2.1
    have hpm : ¬ p ∣ evenModulus q := fun hd => (hp.dvd_mul.mp hd).elim
      (fun hd => (hp.dvd_mul.mp hd).elim hpt hpq) hpd
    have hLU : (N : ℝ) / q < (N : ℝ) / auxT q :=
      div_lt_div_of_pos_left hNpos htpos (by exact_mod_cast Nat.sub_lt hH.2.1.pos (by decide : 0 < 1))
    have hquot : evenModulus q / auxD q = auxT q * q := by
      exact Nat.mul_div_cancel _ har.2.2.2.1
    have hgap := even_gap_of_sufficient_bound N q p hH hp hsize
    have hboth := two_signs_of_sqrt_gap (evenModulus q) (auxD q) p (r : ℤ) hm
      har.2.2.2.1 (dvd_mul_left _ _) (Int.natCast_dvd_natCast.mpr hdr) hp hpm
      ((N : ℝ) / q) ((N : ℝ) / auxT q) (div_nonneg hNpos.le hqpos.le) hLU
      (by simpa only [hquot] using hgap)
    apply four_patterns_of_even_parameters N q hH heven
    intro s hs
    obtain ⟨v, hv, hlo, hhi, hmod, hsign⟩ := hboth s hs
    exact ⟨v, ⟨hv, hlo, hhi, hmod.trans hrmod⟩, hsign⟩
  · obtain ⟨r, _, hdr, _, hcrt⟩ := odd_parameter_crt N q hH
    have hm : 0 < oddModulus q := Nat.mul_pos har.2.2.2.1 (Nat.pow_pos hH.2.1.pos)
    have hpm : ¬ p ∣ oddModulus q := fun hd => (hp.dvd_mul.mp hd).elim hpd
      (fun hd => hpq (hp.dvd_of_dvd_pow hd))
    have hquot : oddModulus q / auxD q = q ^ 2 := Nat.mul_div_cancel_left _ har.2.2.2.1
    have hgap := odd_gap_of_sufficient_bound N q p hH hp hsize
    have hboth := two_signs_of_sqrt_gap (oddModulus q) (auxD q) p (r : ℤ) hm
      har.2.2.2.1 (dvd_mul_right _ _) (Int.natCast_dvd_natCast.mpr hdr) hp hpm
      0 ((N : ℝ) / (auxT q : ℝ) ^ 2) le_rfl (div_pos hNpos (sq_pos_of_pos htpos))
      (by simpa only [hquot, Nat.cast_pow, Real.sqrt_zero, sub_zero] using hgap)
    apply four_patterns_of_odd_parameters N q hH hodd
    intro s hs
    obtain ⟨A, hA, _, hhi, hmod, hsign⟩ := hboth s hs
    obtain ⟨hdA, hAN⟩ := (hcrt A).mpr (Int.natCast_modEq_iff.mp hmod)
    exact ⟨A, ⟨⟨hA, by exact_mod_cast (lt_div_iff₀ (sq_pos_of_pos htpos)).mp hhi, hAN⟩, hdA⟩, hsign⟩

end GeneralizedGoldbach
