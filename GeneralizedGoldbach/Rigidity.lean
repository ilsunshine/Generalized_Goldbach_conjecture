module

public import GeneralizedGoldbach.FourDecompositions
public import Mathlib.Data.Int.ModEq
public import Mathlib.Data.Real.Basic

/-!
论文命题 3.2 [prop:odd-rigidity]；
论文命题 3.3 [prop:even-rigidity]；
论文推论 3.4 [cor:parameters-four]。
构造奇偶两类合法参数，建立完整符号表，并由缺失同号模式的刚性推出四种模式。
-/
@[expose] public section
namespace GeneralizedGoldbach

/-- 论文命题 3.2 [prop:odd-rigidity]；论文命题 3.3 [prop:even-rigidity]。 -/
def MissingSameSign (N : ℕ) (eps : ℤ) : Prop := ¬ HasRepresentation N eps eps

/-- 论文命题 3.2 [prop:odd-rigidity]。 -/
def OddRigidityParameter (N q A : ℕ) : Prop :=
  FourDecompositionParameter N q A ∧ auxD q ∣ A

/-- 论文引理 A.3 [lem:formal-crt]。 -/
def oddModulus (q : ℕ) : ℕ := auxD q * q ^ 2
/-- 论文式 (3.5) [eq:even-parameter]。 -/
def evenModulus (q : ℕ) : ℕ := auxT q * q * auxD q

/-- 论文式 (3.5) [eq:even-parameter]。
负剩余类用整数，不以自然数截断减法代替。 -/
def evenResidue (N q : ℕ) : ℤ := (N : ℤ) - (evenModulus q : ℤ) / 2

/-- 论文命题 3.3 [prop:even-rigidity]；论文式 (3.6) [eq:even-quotient]。
偶模数的精确一半及其整除性质。 -/
theorem even_modulus_half (N q : ℕ) (hH : AdmissibleAuxiliaryPrime N q) :
    (evenModulus q : ℤ) / 2 = (auxT q : ℤ) * q * (auxD q / 2 : ℕ) ∧
      (auxD q : ℤ) ∣ (evenModulus q : ℤ) / 2 ∧
      (q : ℤ) ∣ (evenModulus q : ℤ) / 2 := by
  have har := auxiliary_arithmetic N q hH
  have hd : ((auxD q / 2 : ℕ) : ℤ) * 2 = (auxD q : ℤ) := by
    exact_mod_cast Nat.div_mul_cancel (even_iff_two_dvd.mp har.2.2.2.2.1)
  have hm : (evenModulus q : ℤ) = ((auxT q : ℤ) * q * (auxD q / 2 : ℕ)) * 2 := by
    simp only [evenModulus, Nat.cast_mul]
    rw [← hd]
    ring
  have hh : (evenModulus q : ℤ) / 2 = (auxT q : ℤ) * q * (auxD q / 2 : ℕ) := by
    rw [hm, Int.mul_ediv_cancel _ (by decide : (2 : ℤ) ≠ 0)]
  refine ⟨hh, ?_, ?_⟩
  · obtain ⟨k, hk⟩ := even_iff_exists_two_mul.mp har.2.2.1
    refine ⟨(k : ℤ) * q, ?_⟩
    rw [hh, hk]
    push_cast only [Nat.cast_mul, Nat.cast_ofNat]
    calc
      (2 * (k : ℤ)) * q * (auxD q / 2 : ℕ) =
          (((auxD q / 2 : ℕ) : ℤ) * 2) * ((k : ℤ) * q) := by ring
      _ = (auxD q : ℤ) * ((k : ℤ) * q) := by rw [hd]
  · rw [hh]
    exact dvd_mul_of_dvd_left (dvd_mul_left (q : ℤ) (auxT q : ℤ)) _

/-- 论文命题 3.3 [prop:even-rigidity]；论文式 (3.5) [eq:even-parameter]。 -/
def EvenRigidityParameter (N q v : ℕ) : Prop :=
  0 < v ∧ (N : ℝ) / (q : ℝ) < (v : ℝ) ∧
    (v : ℝ) < (N : ℝ) / (auxT q : ℝ) ∧
    Int.ModEq (evenModulus q : ℤ) (v : ℤ) (evenResidue N q)

/-- 论文引理 A.3 [lem:formal-crt]。 -/
theorem odd_parameter_crt (N q : ℕ) (hH : AdmissibleAuxiliaryPrime N q) :
    ∃ r : ℕ, r < oddModulus q ∧ auxD q ∣ r ∧ ¬ q ∣ r ∧
      ∀ A : ℕ, (auxD q ∣ A ∧ Nat.ModEq (q ^ 2) A N) ↔
        Nat.ModEq (oddModulus q) A r := by
  have har := auxiliary_arithmetic N q hH
  have hcop := har.2.2.2.2.2.2.2.pow_right 2
  let r : ℕ := Nat.chineseRemainder hcop 0 N
  have hr : Nat.ModEq (auxD q) r 0 ∧ Nat.ModEq (q ^ 2) r N :=
    (Nat.chineseRemainder hcop 0 N).property
  refine ⟨r, Nat.chineseRemainder_lt_mul hcop 0 N har.2.2.2.1.ne'
    (pow_ne_zero 2 hH.2.1.ne_zero), Nat.modEq_zero_iff_dvd.mp hr.1, ?_, ?_⟩
  · exact fun hd => hH.2.2.2.1 ((hr.2.dvd_iff (dvd_pow_self q (by decide : 2 ≠ 0))).mp hd)
  · intro A
    constructor
    · exact fun ⟨hd, he⟩ => Nat.chineseRemainder_modEq_unique hcop
        (Nat.modEq_zero_iff_dvd.mpr hd) he
    · intro he
      exact ⟨(he.dvd_iff (dvd_mul_right (auxD q) (q ^ 2))).mpr
        (Nat.modEq_zero_iff_dvd.mp hr.1),
        (he.of_dvd (dvd_mul_left (q ^ 2) (auxD q))).trans hr.2⟩

/-- 论文命题 3.3 [prop:even-rigidity]；论文式 (3.5) [eq:even-parameter]。 -/
theorem even_residue_properties (N q : ℕ) (hH : AdmissibleAuxiliaryPrime N q)
    (hN : Even N) :
    ∃ r : ℕ, r < evenModulus q ∧ auxD q ∣ r ∧ ¬ q ∣ r ∧
      Int.ModEq (evenModulus q : ℤ) (r : ℤ) (evenResidue N q) := by
  have har := auxiliary_arithmetic N q hH
  have hm : 0 < (evenModulus q : ℤ) := by
    exact_mod_cast Nat.mul_pos (Nat.mul_pos har.2.1 hH.2.1.pos) har.2.2.2.1
  let r : ℕ := ((evenResidue N q) % (evenModulus q : ℤ)).toNat
  have hr : (r : ℤ) = evenResidue N q % (evenModulus q : ℤ) :=
    Int.toNat_of_nonneg (Int.emod_nonneg _ hm.ne')
  have hcong : Int.ModEq (evenModulus q : ℤ) (r : ℤ) (evenResidue N q) := by
    rw [hr]
    exact Int.emod_emod _ _
  have hh := even_modulus_half N q hH
  have hd : (auxD q : ℤ) ∣ evenResidue N q :=
    dvd_sub (Int.natCast_dvd_natCast.mpr (auxiliary_radical_dvd_even N q hH hN)) hh.2.1
  refine ⟨r, ?_, ?_, ?_, hcong⟩
  · have := Int.emod_lt_of_pos (evenResidue N q) hm
    rw [← hr] at this
    exact_mod_cast this
  · exact Int.natCast_dvd_natCast.mp
      ((hcong.of_dvd (Int.natCast_dvd_natCast.mpr (dvd_mul_left (auxD q) (auxT q * q)))).dvd_iff.mpr hd)
  · intro hqr
    have hqe : (q : ℤ) ∣ evenResidue N q :=
      (hcong.of_dvd (Int.natCast_dvd_natCast.mpr
        (dvd_mul_of_dvd_left (dvd_mul_left q (auxT q)) (auxD q)))).dvd_iff.mp
          (Int.natCast_dvd_natCast.mpr hqr)
    exact hH.2.2.2.1 (Int.natCast_dvd_natCast.mp
      (by simpa [evenResidue] using dvd_add hqe hh.2.2))

/-- 论文式 (3.6) [eq:even-quotient]。 -/
theorem even_parameter_quotient (N q v : ℕ) (hH : AdmissibleAuxiliaryPrime N q)
    (hv : EvenRigidityParameter N q v) :
    ∃ u : ℕ, 0 < u ∧ N = auxT q * q * u + v ∧
      Nat.ModEq (auxD q) u (auxD q / 2) := by
  have har := auxiliary_arithmetic N q hH
  have ht2 : 2 ≤ auxT q := by dsimp [auxT]; omega
  have hvN : v < N := by
    have hvt := (lt_div_iff₀ (show (0 : ℝ) < auxT q by exact_mod_cast har.2.1)).mp hv.2.2.1
    have hvl : (v : ℝ) ≤ (v : ℝ) * auxT q := le_mul_of_one_le_right (by positivity)
      (by exact_mod_cast (show 1 ≤ auxT q by omega))
    exact_mod_cast hvl.trans_lt hvt
  have hh := (even_modulus_half N q hH).1
  obtain ⟨z, hz⟩ := Int.modEq_iff_dvd.mp hv.2.2.2
  have hEq : (N : ℤ) - v = ((auxT q : ℤ) * q) *
      ((auxD q / 2 : ℕ) + (auxD q : ℤ) * z) := by
    dsimp [evenResidue] at hz
    rw [hh] at hz
    simp only [evenModulus, Nat.cast_mul] at hz
    linear_combination hz
  have htq : (0 : ℤ) < (auxT q : ℤ) * q :=
    mul_pos (by exact_mod_cast har.2.1) (by exact_mod_cast hH.2.1.pos)
  have hu : (0 : ℤ) < (auxD q / 2 : ℕ) + (auxD q : ℤ) * z :=
    (mul_pos_iff_of_pos_left htq).mp (hEq ▸ (sub_pos.mpr (by exact_mod_cast hvN)))
  let u := ((auxD q / 2 : ℕ) + (auxD q : ℤ) * z).toNat
  have huEq : (u : ℤ) = (auxD q / 2 : ℕ) + (auxD q : ℤ) * z := Int.toNat_of_nonneg hu.le
  refine ⟨u, by exact_mod_cast (huEq ▸ hu), ?_, ?_⟩
  · have hnu : (N : ℤ) = (auxT q : ℤ) * q * (u : ℤ) + v := by rw [huEq]; linarith [hEq]
    exact_mod_cast hnu
  · apply Int.natCast_modEq_iff.mp
    apply Int.modEq_iff_dvd.mpr
    exact ⟨-z, by rw [huEq]; ring⟩

/-- 论文命题 3.2 [prop:odd-rigidity]；论文式 (3.4) [eq:odd-sign-table]。
奇数四分解的符号关系，不假设 q 不整除 u。 -/
theorem odd_sign_table (N q A : ℕ) (hH : AdmissibleAuxiliaryPrime N q)
    (hodd : Odd N) (hA : OddRigidityParameter N q A) (D : FourDecomposition N q A) :
    g (auxT q * q * D.u) = -g (q ^ 2 * D.u) ∧
      g (auxT q * D.v) = -g D.v ∧ g (auxT q ^ 2 * A) = g A := by
  obtain ⟨_, htpos, hteven, _, hdeven, _, _, _⟩ := auxiliary_arithmetic N q hH
  have hAeven : Even A := hdeven.trans_dvd hA.2
  have hdivA : ∀ p : ℕ, Nat.Prime p → p ∣ auxT q → p ∣ A :=
    fun p hp hpt => ((prime_dvd_rad_iff p (auxT q) hp htpos).mpr hpt).trans hA.2
  have hsupport : ∀ p : ℕ, Nat.Prime p → Odd p → p ∣ auxT q → p ∣ q * D.u := by
    intro p hp ho hpt
    have hprod : p ∣ q ^ 2 * D.u := (Nat.dvd_add_iff_right (hdivA p hp hpt)).mpr
      (D.first ▸ hH.2.2.2.2 p hp ho hpt)
    exact (hp.dvd_mul.mp hprod).elim
      (fun hd => dvd_mul_of_dvd_left (hp.dvd_of_dvd_pow hd) _) (fun hd => dvd_mul_of_dvd_right hd _)
  have hquodd : Odd (q * D.u) := hH.2.2.1.mul
    (Nat.Odd.of_mul_right ((Nat.odd_add'.mp (D.first ▸ hodd)).mpr hAeven))
  have hvodd : Odd D.v := (Nat.odd_add'.mp (D.second ▸ hodd)).mpr
    ((hteven.mul_right q).mul_right D.u)
  have hsupportv : ∀ p : ℕ, Nat.Prime p → Odd p → p ∣ auxT q → p ∣ D.v := by
    intro p hp ho hpt
    exact (Nat.dvd_add_iff_right (dvd_mul_of_dvd_left (dvd_mul_of_dvd_left hpt q) D.u)).mpr
      (D.second ▸ hH.2.2.2.2 p hp ho hpt)
  refine ⟨?_, ?_, g_mul_of_prime_support_subset (auxT q ^ 2) A (Nat.pow_pos htpos) D.A_pos
    (fun p hp hd => hdivA p hp (hp.dvd_of_dvd_pow hd))⟩
  · rw [mul_assoc, g_mul_of_odd_prime_support_subset (auxT q) (q * D.u) htpos
      (Nat.mul_pos hH.2.1.pos D.u_pos) hteven hsupport,
      g_prime_mul_of_not_dvd 2 (q * D.u) Nat.prime_two
        (Nat.mul_pos hH.2.1.pos D.u_pos) hquodd.not_two_dvd_nat,
      g_prime_sq_mul q D.u hH.2.1 D.u_pos]
  · rw [g_mul_of_odd_prime_support_subset (auxT q) D.v htpos D.v_pos hteven hsupportv,
      g_prime_mul_of_not_dvd 2 D.v Nat.prime_two D.v_pos hvodd.not_two_dvd_nat]

/-- 论文引理 3.1 [lem:four-decompositions]；论文式 (3.1) [eq:four-decompositions]。
四个等式各自给出正加数表示；后面的符号推理共用这一入口。 -/
theorem four_decomposition_representations (N q A : ℕ) (hq : 0 < q)
    (ht : 0 < auxT q) (D : FourDecomposition N q A) :
    HasRepresentation N (g A) (g (q ^ 2 * D.u)) ∧
    HasRepresentation N (g (auxT q * q * D.u)) (g D.v) ∧
    HasRepresentation N (g (auxT q * D.v)) (g D.w) ∧
    HasRepresentation N (g (auxT q ^ 2 * A)) (g (q * D.w)) := by
  exact ⟨⟨A, q ^ 2 * D.u, D.A_pos, Nat.mul_pos (Nat.pow_pos hq) D.u_pos, D.first, rfl, rfl⟩,
    ⟨auxT q * q * D.u, D.v, Nat.mul_pos (Nat.mul_pos ht hq) D.u_pos, D.v_pos, D.second, rfl, rfl⟩,
    ⟨auxT q * D.v, D.w, Nat.mul_pos ht D.v_pos, D.w_pos, D.third, rfl, rfl⟩,
    ⟨auxT q ^ 2 * A, q * D.w, Nat.mul_pos (Nat.pow_pos ht) D.A_pos,
      Nat.mul_pos hq D.w_pos, D.fourth, rfl, rfl⟩⟩

/-- 论文命题 3.3 [prop:even-rigidity]；论文式 (3.7) [eq:even-sign-table]。
由 v 参数重建四分解，并保留相应的符号关系。 -/
theorem even_sign_table (N q v : ℕ) (hH : AdmissibleAuxiliaryPrime N q)
    (heven : Even N) (hv : EvenRigidityParameter N q v) :
    ∃ A : ℕ, ∃ D : FourDecomposition N q A, D.v = v ∧
      g (auxT q * q * D.u) = -g (q ^ 2 * D.u) ∧
      g (auxT q * D.v) = g D.v ∧ g (auxT q ^ 2 * A) = -g A := by
  obtain ⟨hq3, htpos, hteven, hdpos, hdeven, hhalfodd, hdt, _⟩ := auxiliary_arithmetic N q hH
  obtain ⟨u, hupos, huEq, huMod⟩ := even_parameter_quotient N q v hH hv
  have huodd : Odd u := by
    rw [Nat.odd_iff]
    exact (show u % 2 = (auxD q / 2) % 2 from
      huMod.of_dvd (even_iff_two_dvd.mp hdeven)).trans (Nat.odd_iff.mp hhalfodd)
  have hqt : q = auxT q + 1 := (Nat.sub_add_cancel (by omega : 1 ≤ q)).symm
  have hqv : N < q * v := by
    rw [Nat.mul_comm q v]
    exact_mod_cast (div_lt_iff₀ (show (0 : ℝ) < q by exact_mod_cast hH.2.1.pos)).mp hv.2.1
  have hq2u : q ^ 2 * u < N := (Nat.mul_lt_mul_left htpos).mp (by
    nlinarith only [hqv, congrArg (fun x : ℕ => q * x) huEq,
      congrArg (fun x : ℕ => N * x) hqt])
  let A := N - q ^ 2 * u
  have hApos : 0 < A := Nat.sub_pos_of_lt hq2u
  have hfirst : N = A + q ^ 2 * u := (Nat.sub_add_cancel hq2u.le).symm
  have htv : auxT q * v < N := by
    rw [Nat.mul_comm (auxT q) v]
    exact_mod_cast (lt_div_iff₀ (show (0 : ℝ) < auxT q by exact_mod_cast htpos)).mp hv.2.2.1
  let w := N - auxT q * v
  have hwpos : 0 < w := Nat.sub_pos_of_lt htv
  have hthird : N = auxT q * v + w := (Nat.add_sub_of_le htv.le).symm
  have hqvEq : q * v = N + auxT q * A := by
    nlinarith only [congrArg (fun x : ℕ => q * x) huEq,
      congrArg (fun x : ℕ => auxT q * x) hfirst, congrArg (fun x : ℕ => N * x) hqt]
  have hfourth : N = auxT q ^ 2 * A + q * w := by
    nlinarith only [congrArg (fun x : ℕ => q * x) hthird,
      congrArg (fun x : ℕ => auxT q * x) hqvEq, congrArg (fun x : ℕ => N * x) hqt]
  have hdivu : ∀ p : ℕ, Nat.Prime p → Odd p → p ∣ auxT q → p ∣ u := by
    intro p hp ho hpt
    have hpd : p ∣ auxD q := (prime_dvd_rad_iff p (auxT q) hp htpos).mpr hpt
    have hpmul : p ∣ auxD q / 2 * 2 := by
      rw [Nat.div_mul_cancel (even_iff_two_dvd.mp hdeven)]
      exact hpd
    have hphalf : p ∣ auxD q / 2 :=
      (hp.dvd_mul.mp hpmul).resolve_right
        (Nat.not_dvd_of_pos_of_lt (by decide : 0 < 2) (hp.odd_iff.mp ho))
    exact (huMod.dvd_iff hpd).mpr hphalf
  have hdivA : ∀ p : ℕ, Nat.Prime p → Odd p → p ∣ auxT q → p ∣ A := by
    intro p hp ho hpt
    exact (Nat.dvd_add_iff_left (dvd_mul_of_dvd_right (hdivu p hp ho hpt) (q ^ 2))).mpr
      (hfirst ▸ hH.2.2.2.2 p hp ho hpt)
  have hdivv : ∀ p : ℕ, Nat.Prime p → p ∣ auxT q → p ∣ v := by
    intro p hp hpt
    have hpN : p ∣ N := hp.eq_two_or_odd'.elim
      (fun h2 => h2 ▸ even_iff_two_dvd.mp heven) (fun ho => hH.2.2.2.2 p hp ho hpt)
    exact (Nat.dvd_add_iff_right (dvd_mul_of_dvd_left (dvd_mul_of_dvd_left hpt q) u)).mpr
      (huEq ▸ hpN)
  have hAodd : Odd A := (Nat.even_add'.mp (hfirst ▸ heven)).mpr (hH.2.2.1.pow.mul huodd)
  let D : FourDecomposition N q A := ⟨u, v, w, hApos, hupos, hv.1, hwpos,
    hfirst, huEq, hthird, hfourth⟩
  refine ⟨A, D, rfl, ?_, ?_, ?_⟩
  · change g (auxT q * q * u) = -g (q ^ 2 * u)
    rw [mul_assoc, g_mul_of_odd_prime_support_subset (auxT q) (q * u) htpos (Nat.mul_pos hH.2.1.pos hupos)
      hteven (fun p hp ho hpt => dvd_mul_of_dvd_right (hdivu p hp ho hpt) q),
      g_prime_mul_of_not_dvd 2 (q * u) Nat.prime_two (Nat.mul_pos hH.2.1.pos hupos)
        (hH.2.2.1.mul huodd).not_two_dvd_nat, g_prime_sq_mul q u hH.2.1 hupos]
  · exact g_mul_of_prime_support_subset (auxT q) v htpos hv.1 hdivv
  · rw [g_mul_of_odd_prime_support_subset (auxT q ^ 2) A (Nat.pow_pos htpos) hApos
      (hteven.pow_of_ne_zero (by decide : 2 ≠ 0))
      (fun p hp ho hd => hdivA p hp ho (hp.dvd_of_dvd_pow hd)),
      g_prime_mul_of_not_dvd 2 A Nat.prime_two hApos hAodd.not_two_dvd_nat]

/-- 论文命题 3.2 [prop:odd-rigidity]。 -/
theorem odd_missing_pattern_rigidity (N q : ℕ) (hodd : Odd N)
    (hH : AdmissibleAuxiliaryPrime N q) (eps : ℤ) (heps : IsSign eps)
    (hmissing : MissingSameSign N eps) :
    ∀ A : ℕ, OddRigidityParameter N q A → g A = -eps := by
  intro A hA
  obtain ⟨D⟩ := exists_four_decomposition N q A hH.2.1 hH.2.2.1 hH.2.2.2.1 hA.1
  have hR := four_decomposition_representations N q A hH.2.1.pos (auxiliary_arithmetic N q hH).2.1 D
  have hT := odd_sign_table N q A hH hodd hA D
  have hQ := four_decomposition_prime_relations N q A hH.2.1 hH.2.2.1 hH.2.2.2.1 D
  rw [hT.1, hT.2.1, hT.2.2, hQ.2.2.2] at hR
  have ha := g_eq_one_or_neg_one A
  have hx := g_eq_one_or_neg_one (q ^ 2 * D.u)
  have hy := g_eq_one_or_neg_one D.v
  have hz := g_eq_one_or_neg_one D.w
  grind [IsSign, MissingSameSign]

/-- 论文命题 3.3 [prop:even-rigidity]。 -/
theorem even_missing_pattern_rigidity (N q : ℕ) (heven : Even N)
    (hH : AdmissibleAuxiliaryPrime N q) (eps : ℤ) (heps : IsSign eps)
    (hmissing : MissingSameSign N eps) :
    ∀ v : ℕ, EvenRigidityParameter N q v → g v = -eps := by
  intro v hv
  obtain ⟨A, D, hdv, hT⟩ := even_sign_table N q v hH heven hv
  have hR := four_decomposition_representations N q A hH.2.1.pos (auxiliary_arithmetic N q hH).2.1 D
  have hQ := four_decomposition_prime_relations N q A hH.2.1 hH.2.2.1 hH.2.2.2.1 D
  rw [hT.1, hT.2.1, hT.2.2, hQ.2.2.2, hdv] at hR
  have ha := g_eq_one_or_neg_one A
  have hx := g_eq_one_or_neg_one (q ^ 2 * D.u)
  have hy := g_eq_one_or_neg_one v
  have hz := g_eq_one_or_neg_one D.w
  grind [IsSign, MissingSameSign]

/-- 论文命题 3.2 [prop:odd-rigidity]。 -/
theorem mixed_patterns_of_odd_parameter (N q A : ℕ) (hodd : Odd N)
    (hH : AdmissibleAuxiliaryPrime N q) (hA : OddRigidityParameter N q A) :
    HasRepresentation N 1 (-1) ∧ HasRepresentation N (-1) 1 := by
  obtain ⟨D⟩ := exists_four_decomposition N q A hH.2.1 hH.2.2.1 hH.2.2.2.1 hA.1
  have hR := four_decomposition_representations N q A hH.2.1.pos (auxiliary_arithmetic N q hH).2.1 D
  have hT := odd_sign_table N q A hH hodd hA D
  have hQ := four_decomposition_prime_relations N q A hH.2.1 hH.2.2.1 hH.2.2.2.1 D
  rw [hT.1, hT.2.1, hT.2.2, hQ.2.2.2] at hR
  have ha := g_eq_one_or_neg_one A
  have hx := g_eq_one_or_neg_one (q ^ 2 * D.u)
  have hy := g_eq_one_or_neg_one D.v
  have hz := g_eq_one_or_neg_one D.w
  grind [representation_swap]

/-- 论文命题 3.3 [prop:even-rigidity]。 -/
theorem mixed_patterns_of_even_parameter (N q v : ℕ) (heven : Even N)
    (hH : AdmissibleAuxiliaryPrime N q) (hv : EvenRigidityParameter N q v) :
    HasRepresentation N 1 (-1) ∧ HasRepresentation N (-1) 1 := by
  obtain ⟨A, D, hdv, hT⟩ := even_sign_table N q v hH heven hv
  have hR := four_decomposition_representations N q A hH.2.1.pos (auxiliary_arithmetic N q hH).2.1 D
  have hQ := four_decomposition_prime_relations N q A hH.2.1 hH.2.2.1 hH.2.2.2.1 D
  rw [hT.1, hT.2.1, hT.2.2, hQ.2.2.2, hdv] at hR
  have ha := g_eq_one_or_neg_one A
  have hx := g_eq_one_or_neg_one (q ^ 2 * D.u)
  have hy := g_eq_one_or_neg_one v
  have hz := g_eq_one_or_neg_one D.w
  grind [representation_swap]

/-- 论文推论 3.4 [cor:parameters-four]。 -/
theorem four_patterns_of_odd_parameters (N q : ℕ) (hH : AdmissibleAuxiliaryPrime N q)
    (hodd : Odd N) (hparams : ∀ s : ℤ, IsSign s →
      ∃ A : ℕ, OddRigidityParameter N q A ∧ g A = s) : FourPatternsAt N := by
  have hsame : ∀ s : ℤ, IsSign s → HasRepresentation N s s := by
    intro s hs
    by_contra hmissing
    obtain ⟨A, hA, hsign⟩ := hparams s hs
    have hrig := odd_missing_pattern_rigidity N q hodd hH s hs hmissing A hA
    grind [IsSign]
  obtain ⟨A, hA, _⟩ := hparams 1 (Or.inl rfl)
  have hmix := mixed_patterns_of_odd_parameter N q A hodd hH hA
  intro s t hs ht
  grind [IsSign]

/-- 论文推论 3.4 [cor:parameters-four]。 -/
theorem four_patterns_of_even_parameters (N q : ℕ) (hH : AdmissibleAuxiliaryPrime N q)
    (heven : Even N) (hparams : ∀ s : ℤ, IsSign s →
      ∃ v : ℕ, EvenRigidityParameter N q v ∧ g v = s) : FourPatternsAt N := by
  have hsame : ∀ s : ℤ, IsSign s → HasRepresentation N s s := by
    intro s hs
    by_contra hmissing
    obtain ⟨v, hv, hsign⟩ := hparams s hs
    have hrig := even_missing_pattern_rigidity N q heven hH s hs hmissing v hv
    grind [IsSign]
  obtain ⟨v, hv, _⟩ := hparams 1 (Or.inl rfl)
  have hmix := mixed_patterns_of_even_parameter N q v heven hH hv
  intro s t hs ht
  grind [IsSign]

end GeneralizedGoldbach
