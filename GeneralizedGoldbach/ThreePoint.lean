module

public import GeneralizedGoldbach.IntervalChains

/-!
论文引理 6.2 [lem:three-point]；
论文引理 6.4 [lem:two-signs-gap]。
三点构造只要求平方同余，不额外要求 c 与目标类同余。精确商、正性、L=0 与 M=1 的边界均保留。
-/
@[expose] public section
namespace GeneralizedGoldbach

/-- 论文引理 6.1 [lem:three-term]；论文式 (6.1) [eq:three-term]。 -/
theorem three_term_sign_identity (c j k : ℕ) (hc : 0 < c) (hj : 0 < j)
    (hk : 0 < k) (hcop : Nat.Coprime j k) :
    g (c * j ^ 2) * g (c * j * k) * g (c * k ^ 2) = g c := by
  have hinter : (c.primeFactors ∪ j.primeFactors) ∩ (c.primeFactors ∪ k.primeFactors) =
      c.primeFactors := by
    rw [← Finset.union_inter_distrib_left, Finset.disjoint_iff_inter_eq_empty.mp
      hcop.disjoint_primeFactors, Finset.union_empty]
  have hunion : (c.primeFactors ∪ j.primeFactors) ∪ (c.primeFactors ∪ k.primeFactors) =
      c.primeFactors ∪ j.primeFactors ∪ k.primeFactors := by
    ext p
    simp only [Finset.mem_union]
    tauto
  have hcard := Finset.card_union_add_card_inter
    (c.primeFactors ∪ j.primeFactors) (c.primeFactors ∪ k.primeFactors)
  rw [hinter, hunion] at hcard
  have hsum : (c.primeFactors ∪ j.primeFactors).card +
      (c.primeFactors ∪ j.primeFactors ∪ k.primeFactors).card +
      (c.primeFactors ∪ k.primeFactors).card =
      c.primeFactors.card + 2 * (c.primeFactors ∪ j.primeFactors ∪ k.primeFactors).card := by omega
  simp only [g, omega, Nat.primeFactors_mul hc.ne' (pow_ne_zero 2 hj.ne'),
    Nat.primeFactors_mul (Nat.mul_ne_zero hc.ne' hj.ne') hk.ne',
    Nat.primeFactors_mul hc.ne' hj.ne', Nat.primeFactors_mul hc.ne' (pow_ne_zero 2 hk.ne'),
    Nat.primeFactors_pow j (by decide : 2 ≠ 0), Nat.primeFactors_pow k (by decide : 2 ≠ 0)]
  rw [← pow_add, ← pow_add, hsum]
  simp [pow_add, pow_mul]

/-- 论文引理 6.2 [lem:three-point]。
严格越过实数端点的同余代表，并保留不超过一个周期的上界。 -/
theorem exists_progression_point (m h : ℕ) (hm : 0 < m) (x : ℝ) (hx : 0 ≤ x) :
    ∃ j : ℕ, 0 < j ∧ x < j ∧ (j : ℝ) ≤ x + m ∧ Nat.ModEq m j h := by
  obtain ⟨n, hn⟩ := exists_nat_gt x
  have hex : ∃ j : ℕ, x < j ∧ Nat.ModEq m j h := by
    refine ⟨h + m * n, hn.trans_le ?_, by simp⟩
    exact_mod_cast (show n ≤ h + m * n by nlinarith)
  let j := Nat.find hex
  have hj : x < j ∧ Nat.ModEq m j h := Nat.find_spec hex
  refine ⟨j, by exact_mod_cast hx.trans_lt hj.1, hj.1, ?_, hj.2⟩
  by_cases hml : m ≤ j
  · have hprev : (j - m : ℕ) < j := Nat.sub_lt (by omega) hm
    have hbound : ((j - m : ℕ) : ℝ) ≤ x := le_of_not_gt (fun hlt =>
      Nat.find_min hex hprev ⟨hlt, (Nat.sub_modulus_modEq_iff hml).mpr hj.2⟩)
    rw [Nat.cast_sub hml] at hbound
    linarith
  · have hjm : (j : ℝ) < m := by exact_mod_cast Nat.lt_of_not_ge hml
    linarith

/-- 论文引理 6.2 [lem:three-point]；论文式 (6.2) [eq:square-class-condition]。
h 可取非负剩余代表，包括 M=1 的情形。 -/
theorem three_point_square_class (m c h r : ℕ) (hm : 0 < m) (hc : 0 < c)
    (L U : ℝ) (hL : 0 ≤ L) (hLU : L < U)
    (hcop : Nat.Coprime h (m / Nat.gcd c m))
    (hcong : Nat.ModEq m (c * h ^ 2) r)
    (hgap : 2 * ((m / Nat.gcd c m : ℕ) : ℝ) * Real.sqrt (c : ℝ) <
      Real.sqrt U - Real.sqrt L) :
    HasSignedPoint m L U (r : ℤ) (g c) := by
  let M := m / Nat.gcd c m
  have hM : 0 < M := Nat.div_pos (Nat.le_of_dvd hm (Nat.gcd_dvd_right c m))
    (Nat.gcd_pos_of_pos_left m hc)
  have hcR : (0 : ℝ) < c := by exact_mod_cast hc
  have hsc : 0 < Real.sqrt (c : ℝ) := Real.sqrt_pos.mpr hcR
  obtain ⟨j, hj, hjlo, hjhi, hjmod⟩ := exists_progression_point M h hM
    (Real.sqrt L / Real.sqrt (c : ℝ)) (div_nonneg (Real.sqrt_nonneg L) hsc.le)
  let k := j + M
  have hk : 0 < k := lt_of_lt_of_le hj (Nat.le_add_right j M)
  have hcopj : Nat.Coprime j M := by
    change Nat.gcd j M = 1
    rw [hjmod.gcd_eq]
    exact hcop
  have hcopjk : Nat.Coprime j k := Nat.coprime_self_add_right.mpr hcopj
  have hkmod : Nat.ModEq M k h := Nat.add_modEq_right.trans hjmod
  have hmcm : m ∣ c * M := by
    obtain ⟨b, hb⟩ := Nat.gcd_dvd_left c m
    refine ⟨b, ?_⟩
    calc
      c * M = Nat.gcd c m * b * (m / Nat.gcd c m) := congrArg (fun x : ℕ => x * M) hb
      _ = (Nat.gcd c m * (m / Nat.gcd c m)) * b := by ring
      _ = m * b := by rw [Nat.mul_div_cancel' (Nat.gcd_dvd_right c m)]
  have hjR : Real.sqrt L < (j : ℝ) * Real.sqrt (c : ℝ) := (div_lt_iff₀ hsc).mp hjlo
  have hjup : (j : ℝ) * Real.sqrt (c : ℝ) ≤ Real.sqrt L + (M : ℝ) * Real.sqrt (c : ℝ) := by
    have hh := mul_le_mul_of_nonneg_right hjhi hsc.le
    rw [add_mul, div_mul_cancel₀ _ hsc.ne'] at hh
    exact hh
  have hkR : (k : ℝ) * Real.sqrt (c : ℝ) < Real.sqrt U := by
    dsimp [k]
    push_cast
    dsimp [M] at hjup ⊢
    nlinarith only [hjup, hgap]
  have hLjj : L < (c : ℝ) * (j : ℝ) ^ 2 := by
    have hh := (sq_lt_sq₀ (Real.sqrt_nonneg L) (mul_nonneg (Nat.cast_nonneg j) hsc.le)).mpr hjR
    simpa only [mul_pow, Real.sq_sqrt hL, Real.sq_sqrt hcR.le, mul_comm] using hh
  have hkkU : (c : ℝ) * (k : ℝ) ^ 2 < U := by
    have hh := (sq_lt_sq₀ (mul_nonneg (Nat.cast_nonneg k) hsc.le) (Real.sqrt_nonneg U)).mpr hkR
    simpa only [mul_pow, Real.sq_sqrt hcR.le, Real.sq_sqrt (hL.trans hLU.le), mul_comm] using hh
  have hjk : j ≤ k := Nat.le_add_right j M
  have horder₁ : c * j ^ 2 ≤ c * j * k := by
    simpa only [pow_two, mul_assoc] using Nat.mul_le_mul_left c (Nat.mul_le_mul_left j hjk)
  have horder₂ : c * j * k ≤ c * k ^ 2 := by
    simpa only [pow_two, mul_assoc] using Nat.mul_le_mul_left c (Nat.mul_le_mul_right k hjk)
  have hmod₁ : Nat.ModEq m (c * j ^ 2) r :=
    (((hjmod.pow 2).mul_left' c).of_dvd hmcm).trans hcong
  have hmod₂ : Nat.ModEq m (c * j * k) r := by
    simpa only [mul_assoc, pow_two] using
      (((hjmod.mul hkmod).mul_left' c).of_dvd hmcm).trans
        (show Nat.ModEq m (c * (h * h)) r by simpa only [pow_two] using hcong)
  have hmod₃ : Nat.ModEq m (c * k ^ 2) r :=
    (((hkmod.pow 2).mul_left' c).of_dvd hmcm).trans hcong
  have hchoice : g (c * j ^ 2) = g c ∨ g (c * j * k) = g c ∨ g (c * k ^ 2) = g c := by
    have hid := three_term_sign_identity c j k hc hj hk hcopjk
    have hs₀ := g_eq_one_or_neg_one c
    have hs₁ := g_eq_one_or_neg_one (c * j ^ 2)
    have hs₂ := g_eq_one_or_neg_one (c * j * k)
    have hs₃ := g_eq_one_or_neg_one (c * k ^ 2)
    grind
  have hbounds : ∀ n : ℕ, c * j ^ 2 ≤ n → n ≤ c * k ^ 2 →
      L < (n : ℝ) ∧ (n : ℝ) < U := by
    intro n hlo hhi
    have hloR : L < ((c * j ^ 2 : ℕ) : ℝ) := by exact_mod_cast hLjj
    have hhiR : ((c * k ^ 2 : ℕ) : ℝ) < U := by exact_mod_cast hkkU
    exact ⟨hloR.trans_le (by exact_mod_cast hlo), (show (n : ℝ) ≤ (c * k ^ 2 : ℕ) by
      exact_mod_cast hhi).trans_lt hhiR⟩
  rcases hchoice with hs | hs | hs
  · exact ⟨c * j ^ 2, Nat.mul_pos hc (Nat.pow_pos hj),
      (hbounds _ le_rfl (horder₁.trans horder₂)).1,
      (hbounds _ le_rfl (horder₁.trans horder₂)).2, Int.natCast_modEq_iff.mpr hmod₁, hs⟩
  · exact ⟨c * j * k, Nat.mul_pos (Nat.mul_pos hc hj) hk,
      (hbounds _ horder₁ horder₂).1, (hbounds _ horder₁ horder₂).2,
      Int.natCast_modEq_iff.mpr hmod₂, hs⟩
  · exact ⟨c * k ^ 2, Nat.mul_pos hc (Nat.pow_pos hk),
      (hbounds _ (horder₁.trans horder₂) le_rfl).1,
      (hbounds _ (horder₁.trans horder₂) le_rfl).2, Int.natCast_modEq_iff.mpr hmod₃, hs⟩

/-- 论文引理 6.3 [lem:small-representative]；论文式 (6.3) [eq:small-representative]。
补充引理：两个代表元中至少一个避开 p，零类取 c=m。 -/
theorem exists_small_representative_avoiding_prime (m d p : ℕ) (r : ℤ)
    (hm : 0 < m) (_hd : 0 < d) (hdm : d ∣ m) (hdr : (d : ℤ) ∣ r)
    (_hp : Nat.Prime p) (hpm : ¬ p ∣ m) :
    ∃ c : ℕ, 0 < c ∧ c < 2 * m ∧ d ∣ c ∧ ¬ p ∣ c ∧
      Int.ModEq (m : ℤ) (c : ℤ) r := by
  have hmR : (0 : ℤ) < m := by exact_mod_cast hm
  let a := (r % (m : ℤ)).toNat
  have ha : (a : ℤ) = r % (m : ℤ) := Int.toNat_of_nonneg (Int.emod_nonneg _ hmR.ne')
  have hamod : Int.ModEq (m : ℤ) (a : ℤ) r := by rw [ha]; exact Int.emod_emod _ _
  have hal : a < m := by
    have hh := Int.emod_lt_of_pos r hmR
    rw [← ha] at hh
    exact_mod_cast hh
  have hda : d ∣ a := Int.natCast_dvd_natCast.mp
    ((hamod.of_dvd (Int.natCast_dvd_natCast.mpr hdm)).dvd_iff.mpr hdr)
  by_cases ha0 : a = 0
  · refine ⟨m, hm, by omega, hdm, hpm, ?_⟩
    exact (Int.modulus_modEq_zero).trans (by simpa only [ha0, Nat.cast_zero] using hamod)
  · by_cases hpa : p ∣ a
    · exact ⟨a + m, by omega, by omega, dvd_add hda hdm,
        fun hdiv => hpm ((Nat.dvd_add_iff_right hpa).mpr hdiv),
        (by simpa only [Nat.cast_add] using Int.add_modEq_right.trans hamod)⟩
    · exact ⟨a, Nat.pos_of_ne_zero ha0, by omega, hda, hpa, hamod⟩

/-- 论文引理 6.4 [lem:two-signs-gap]；论文式 (6.4) [eq:two-signs-gap]。
充分长度；L=0、M=1 和非互素剩余类均包含在声明中。 -/
theorem two_signs_of_sqrt_gap (m d p : ℕ) (r : ℤ) (hm : 0 < m)
    (hd : 0 < d) (hdm : d ∣ m) (hdr : (d : ℤ) ∣ r)
    (hp : Nat.Prime p) (hpm : ¬ p ∣ m) (L U : ℝ) (hL : 0 ≤ L) (hLU : L < U)
    (hgap : 2 * ((m / d : ℕ) : ℝ) * (p : ℝ) * Real.sqrt (2 * (m : ℝ)) <
      Real.sqrt U - Real.sqrt L) :
    BothSignsInClass m L U r := by
  obtain ⟨c, hc, hcb, hdc, hpc, hcr⟩ :=
    exists_small_representative_avoiding_prime m d p r hm hd hdm hdr hp hpm
  have hcR : (0 : ℝ) < c := by exact_mod_cast hc
  have hpR : (0 : ℝ) < p := by exact_mod_cast hp.pos
  have hroot : Real.sqrt (c : ℝ) < Real.sqrt (2 * (m : ℝ)) :=
    Real.sqrt_lt_sqrt hcR.le (by exact_mod_cast hcb)
  have hlength : ∀ a : ℕ, 0 < a → d ∣ a → Real.sqrt (a : ℝ) ≤
      (p : ℝ) * Real.sqrt (2 * (m : ℝ)) →
      2 * ((m / Nat.gcd a m : ℕ) : ℝ) * Real.sqrt (a : ℝ) < Real.sqrt U - Real.sqrt L := by
    intro a ha hda hroota
    have hquot : ((m / Nat.gcd a m : ℕ) : ℝ) ≤ (m / d : ℕ) := by
      exact_mod_cast (Nat.div_le_div_left (Nat.le_of_dvd (Nat.gcd_pos_of_pos_right a hm)
        (Nat.dvd_gcd hda hdm)) hd : m / Nat.gcd a m ≤ m / d)
    calc
      2 * ((m / Nat.gcd a m : ℕ) : ℝ) * Real.sqrt (a : ℝ) ≤
          2 * ((m / d : ℕ) : ℝ) * Real.sqrt (a : ℝ) :=
        mul_le_mul_of_nonneg_right (by linarith) (Real.sqrt_nonneg _)
      _ ≤ 2 * ((m / d : ℕ) : ℝ) * ((p : ℝ) * Real.sqrt (2 * (m : ℝ))) :=
        mul_le_mul_of_nonneg_left hroota (by positivity)
      _ = 2 * ((m / d : ℕ) : ℝ) * (p : ℝ) * Real.sqrt (2 * (m : ℝ)) := by ring
      _ < _ := hgap
  have hgapc := hlength c hc hdc (hroot.le.trans (le_mul_of_one_le_left
    (Real.sqrt_nonneg _) (by exact_mod_cast hp.one_lt.le)))
  have hpoint₁ := three_point_square_class m c 1 c hm hc L U hL hLU
    (by simp) (by simpa using (Nat.ModEq.refl c : Nat.ModEq m c c)) hgapc
  have hcop : Nat.Coprime p m := hp.coprime_iff_not_dvd.mpr hpm
  obtain ⟨h, _, hh⟩ := Nat.exists_mul_mod_eq_of_coprime 1 hcop hm.ne'
  have hinv : Nat.ModEq m (p * h) 1 := hh
  have hcopH : Nat.Coprime h (m / Nat.gcd (c * p ^ 2) m) :=
    (Nat.coprime_of_mul_modEq_one p (by simpa [mul_comm] using hinv)).of_dvd_right
      (Nat.div_dvd_of_dvd (Nat.gcd_dvd_right (c * p ^ 2) m))
  have hcong : Nat.ModEq m ((c * p ^ 2) * h ^ 2) c := by
    convert (hinv.pow 2).mul_left c using 1 <;> ring
  have hgapcp := hlength (c * p ^ 2) (Nat.mul_pos hc (Nat.pow_pos hp.pos))
    (dvd_mul_of_dvd_left hdc _) (by
      simpa only [Nat.cast_mul, Nat.cast_pow, Real.sqrt_mul hcR.le,
        Real.sqrt_sq (Nat.cast_nonneg p), mul_comm] using
        (mul_le_mul_of_nonneg_left hroot.le hpR.le))
  have hpoint₂ := three_point_square_class m (c * p ^ 2) h c hm
    (Nat.mul_pos hc (Nat.pow_pos hp.pos)) L U hL hLU hcopH hcong hgapcp
  have hsign : g (c * p ^ 2) = -g c := by
    rw [mul_comm c, g_prime_sq_mul p c hp hc, g_prime_mul_of_not_dvd p c hp hc hpc]
  have htransfer : ∀ s : ℤ, HasSignedPoint m L U (c : ℤ) s → HasSignedPoint m L U r s :=
    fun s ⟨n, hn, hlo, hhi, hmod, hs⟩ => ⟨n, hn, hlo, hhi, hmod.trans hcr, hs⟩
  have h₁ := htransfer (g c) hpoint₁
  have h₂ := htransfer (-g c) (hsign ▸ hpoint₂)
  have hs := g_eq_one_or_neg_one c
  intro s hsigns
  grind [IsSign]

end GeneralizedGoldbach
