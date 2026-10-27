module

public import GeneralizedGoldbach.CertificateDefinitions
public import GeneralizedGoldbach.LargeCertificates.UniformCertificates

/-!
论文命题 4.3 [prop:uniform-threshold]；
论文命题 C.5 [prop:uniform-certification]。
由全表覆盖取得统一证书，分别构造奇数 CRT 参数和偶数区间参数，再接回四种符号模式。
-/
@[expose] public section
namespace GeneralizedGoldbach

/-- 论文命题 C.5 [prop:uniform-certification]。
全量区间树覆盖两个符号的所有合格剩余类。 -/
theorem uniform_certificate_exists (q : ℕ) (hq : q ∈ auxiliaryPrimeSet) :
    UniformCertificate q := by
  exact LargeCertificates.UniformCertificates.all q hq

/-- 论文引理 4.2 [lem:chain-scaling]；论文式 (4.6) [eq:congruence-cancellation]。 -/
theorem eligible_residues_inverse_closed (q ell : ℕ) (hq : Nat.Prime q)
    (hodd : Odd q) (hcop : Nat.Coprime ell (evenModulus q)) :
    InverseClosed (evenModulus q) ell (eligibleResidues q (evenModulus q) (auxD q)) := by
  have ht : 0 < auxT q := Nat.sub_pos_of_lt ((by decide : 1 < 3).trans_le (hq.odd_iff.mp hodd))
  have hd : 0 < auxD q := (rad_pos_squarefree_dvd (auxT q) ht).1
  have hm : 0 < evenModulus q := Nat.mul_pos (Nat.mul_pos ht hq.pos) hd
  obtain ⟨inv, _, hinv⟩ := Nat.exists_mul_mod_eq_of_coprime 1 hcop hm.ne'
  have hinvmod : Nat.ModEq (evenModulus q) (ell * inv) 1 := hinv
  intro r hr
  obtain ⟨hrlt, hdr, hqr⟩ := Finset.mem_filter.mp hr |>.imp_left Finset.mem_range.mp
  let r' := inv * r % evenModulus q
  have hrmod : Nat.ModEq (evenModulus q) r' (inv * r) := Nat.mod_modEq _ _
  have hcong : Nat.ModEq (evenModulus q) (ell * r') r := by
    exact (hrmod.mul_left ell).trans (by simpa only [mul_assoc, one_mul] using hinvmod.mul_right r)
  have hdm : auxD q ∣ evenModulus q := dvd_mul_left _ _
  have hqm : q ∣ evenModulus q := dvd_mul_of_dvd_left (dvd_mul_left _ _) _
  refine ⟨r', Finset.mem_filter.mpr ⟨Finset.mem_range.mpr (Nat.mod_lt _ hm),
    (hrmod.dvd_iff hdm).mpr (dvd_mul_of_dvd_right hdr inv), ?_⟩, hcong⟩
  exact fun hqr' => hqr ((hcong.dvd_iff hqm).mp (dvd_mul_of_dvd_right hqr' ell))

/-- 论文命题 4.3 [prop:uniform-threshold]；论文式 (4.5) [eq:uniform-even-data]。 -/
theorem even_parameters_of_interval_chains (N q ell : ℕ) (hH : AdmissibleAuxiliaryPrime N q)
    (heven : Even N) (hell : Nat.Prime ell) (hcop : Nat.Coprime ell (evenModulus q))
    (T : ℝ) (hT : 0 < T) (hsize : T ≤ N)
    (hchains : ∀ r ∈ eligibleResidues q (evenModulus q) (auxD q), ∀ s : ℤ, IsSign s →
      ∃ C : IntervalChain q (evenModulus q) T ((ell : ℝ) * T) (r : ℤ) s,
        ∀ i : ℕ, i ≤ C.last → ell ∣ C.point i) :
    ∀ s : ℤ, IsSign s → ∃ v : ℕ, EvenRigidityParameter N q v ∧ g v = s := by
  have har := auxiliary_arithmetic N q hH
  obtain ⟨r, hrl, hdr, hqr, hrmod⟩ := even_residue_properties N q hH heven
  have hrmem : r ∈ eligibleResidues q (evenModulus q) (auxD q) :=
    Finset.mem_filter.mpr ⟨Finset.mem_range.mpr hrl, hdr, hqr⟩
  have hboth := scaling_chain_extension q (evenModulus q) ell har.1
    (Nat.mul_pos (Nat.mul_pos har.2.1 hH.2.1.pos) har.2.2.2.1) hell hcop T hT
    (eligibleResidues q (evenModulus q) (auxD q))
    (eligible_residues_inverse_closed q ell hH.2.1 hH.2.2.1 hcop) hchains (N : ℝ) hsize r hrmem
  intro s hs
  obtain ⟨v, hv, hlo, hhi, hmod, hsign⟩ := hboth s hs
  exact ⟨v, ⟨hv, hlo, hhi, hmod.trans hrmod⟩, hsign⟩

/-- 论文命题 4.3 [prop:uniform-threshold]；论文式 (4.7) [eq:uniform-odd-data]。 -/
theorem odd_parameters_of_bounded_witnesses (N q bound : ℕ) (hH : AdmissibleAuxiliaryPrime N q)
    (hsize : bound * auxT q ^ 2 < N)
    (hwitness : ∀ r : ℕ, r < q ^ 2 → ¬ q ∣ r → ∀ s : ℤ, IsSign s →
      ∃ A : ℕ, 0 < A ∧ A ≤ bound ∧ auxD q ∣ A ∧ Nat.ModEq (q ^ 2) A r ∧ g A = s) :
    ∀ s : ℤ, IsSign s → ∃ A : ℕ, OddRigidityParameter N q A ∧ g A = s := by
  have hq2 : 0 < q ^ 2 := Nat.pow_pos hH.2.1.pos
  have hr : Nat.ModEq (q ^ 2) (N % q ^ 2) N := Nat.mod_modEq _ _
  intro s hs
  obtain ⟨A, hA, hbound, hdA, hmod, hsign⟩ := hwitness (N % q ^ 2) (Nat.mod_lt _ hq2)
    (fun hdiv => hH.2.2.2.1 ((hr.dvd_iff (dvd_pow_self q (by decide : 2 ≠ 0))).mp hdiv)) s hs
  exact ⟨A, ⟨⟨hA, (Nat.mul_le_mul_right _ hbound).trans_lt hsize, hmod.trans hr⟩, hdA⟩, hsign⟩

/-- 论文命题 4.3 [prop:uniform-threshold]。 -/
theorem four_patterns_of_uniform_certificate (N q : ℕ)
    (hH : AdmissibleAuxiliaryPrime N q) (hcert : UniformCertificate q)
    (hsize : uniformThreshold q ≤ N) : FourPatternsAt N := by
  have har := auxiliary_arithmetic N q hH
  have hT : (0 : ℝ) < uniformThreshold q := by
    exact_mod_cast Nat.mul_pos (Nat.mul_pos (Nat.mul_pos (by decide : 0 < 128)
      har.2.2.2.1) (Nat.pow_pos hH.2.1.pos)) (Nat.pow_pos har.2.1)
  rcases Nat.even_or_odd N with heven | hodd
  · obtain ⟨ell, hell, hcop, hchains⟩ := hcert.2
    apply four_patterns_of_even_parameters N q hH heven
    apply even_parameters_of_interval_chains N q ell hH heven hell hcop (uniformThreshold q : ℝ) hT
      (by exact_mod_cast hsize)
    intro r hr s hs
    obtain ⟨hrlt, ⟨k, hk⟩, hqnot⟩ := Finset.mem_filter.mp hr |>.imp_left Finset.mem_range.mp
    have hklt : k < auxT q * q := (Nat.mul_lt_mul_left har.2.2.2.1).mp
      (by simpa only [hk, evenModulus, mul_comm, mul_assoc, mul_left_comm] using hrlt)
    have hqk : ¬ q ∣ k := fun hd => hqnot (hk ▸ dvd_mul_of_dvd_right hd (auxD q))
    rw [hk]
    exact hchains k hklt hqk s hs
  · obtain ⟨r, _, ⟨k₀, hrEq⟩, hqnot, hcrt⟩ := odd_parameter_crt N q hH
    have hrN : Nat.ModEq (q ^ 2) r N := ((hcrt r).mpr (Nat.ModEq.refl r)).2
    have hkmod : Nat.ModEq (q ^ 2) (k₀ % q ^ 2) k₀ := Nat.mod_modEq _ _
    have hknot : ¬ q ∣ k₀ % q ^ 2 := fun hd => hqnot
      (hrEq ▸ dvd_mul_of_dvd_right ((hkmod.dvd_iff (dvd_pow_self q (by decide : 2 ≠ 0))).mp hd) (auxD q))
    apply four_patterns_of_odd_parameters N q hH hodd
    intro s hs
    obtain ⟨k, hk, hklt, hmod, hsign⟩ := hcert.1 (k₀ % q ^ 2) (Nat.mod_lt _ (Nat.pow_pos hH.2.1.pos)) hknot s hs
    have hbound := Nat.mul_lt_mul_of_pos_right
      (Nat.mul_lt_mul_of_pos_left hklt har.2.2.2.1) (Nat.pow_pos (n := 2) har.2.1)
    refine ⟨auxD q * k, ⟨⟨Nat.mul_pos har.2.2.2.1 hk, ?_, ?_⟩, dvd_mul_right _ _⟩, hsign⟩
    · exact (show auxD q * k * auxT q ^ 2 < uniformThreshold q by
        simpa only [uniformThreshold, mul_comm, mul_assoc, mul_left_comm] using hbound).trans_le hsize
    · exact ((hmod.trans hkmod).mul_left (auxD q)).trans (by simpa only [hrEq] using hrN)

/-- 论文命题 4.3 [prop:uniform-threshold]；论文命题 C.5 [prop:uniform-certification]。 -/
theorem four_patterns_of_uniform_threshold (N q : ℕ)
    (hH : AdmissibleAuxiliaryPrime N q) (hq : q ∈ auxiliaryPrimeSet)
    (hsize : uniformThreshold q ≤ N) : FourPatternsAt N := by
  exact four_patterns_of_uniform_certificate N q hH (uniform_certificate_exists q hq) hsize

end GeneralizedGoldbach
