module

public import GeneralizedGoldbach.Certificates
public import GeneralizedGoldbach.SmallCertificates.Q3
public import GeneralizedGoldbach.SmallCertificates.Q5
public import GeneralizedGoldbach.SmallCertificates.Q7
public import Mathlib.Tactic.IntervalCases
public import Mathlib.Tactic.NormNum.Prime

/-!
论文命题 5.1 [prop:q3-q5]；
论文命题 5.3 [prop:q7]；
论文命题 5.4 [prop:small-primes]。
处理 q=3、5、7 的有限证书与两阶段链；q=7 的三个正正例外单独分类并给出明确分解。
-/
@[expose] public section
namespace GeneralizedGoldbach

/-- 论文命题 5.1 [prop:q3-q5]。 -/
def SmallEvenCertificate (q ell : ℕ) : Prop :=
  Nat.Prime ell ∧ Nat.Coprime ell (evenModulus q) ∧
    ∀ r ∈ eligibleResidues q (evenModulus q) (auxD q), ∀ s : ℤ, IsSign s →
      ∃ C : IntervalChain q (evenModulus q) 100000 ((ell : ℝ) * 100000) (r : ℤ) s,
        ∀ i : ℕ, i ≤ C.last → ell ∣ C.point i

/-- 论文命题 5.1 [prop:q3-q5]。 -/
def SmallOddCertificate (q bound : ℕ) : Prop :=
  ∀ r : ℕ, r < q ^ 2 → ¬ q ∣ r → ∀ s : ℤ, IsSign s →
    ∃ A : ℕ, 0 < A ∧ A ≤ bound ∧ auxD q ∣ A ∧ Nat.ModEq (q ^ 2) A r ∧ g A = s

/-- 论文命题 5.3 [prop:q7]。 -/
def Q7EvenCertificate : Prop :=
  ∀ r ∈ eligibleResidues 7 252 6, ∀ s : ℤ, IsSign s →
    Nonempty (IntervalChain 7 252 100000 1000000 (r : ℤ) s) ∧
    ∃ C : IntervalChain 7 252 1000000 5000000 (r : ℤ) s,
      ∀ i : ℕ, i ≤ C.last → 5 ∣ C.point i

/-- 论文命题 5.3 [prop:q7]。 -/
def q7OddBound (r : ℕ) (s : ℤ) : ℕ :=
  if s = -1 then 1074 else if r = 19 then 2910 else 2777

/-- 论文命题 5.3 [prop:q7]。 -/
def Q7OddCertificate : Prop :=
  ∀ r : ℕ, r < 49 → ¬ 7 ∣ r → ∀ s : ℤ, IsSign s →
    ∃ A : ℕ, 0 < A ∧ A ≤ q7OddBound r s ∧ 6 ∣ A ∧ Nat.ModEq 49 A r ∧ g A = s

/-- 论文命题 5.1 [prop:q3-q5]；论文式 (5.1) [eq:q3-odd-witnesses]。 -/
theorem q3_certificates : SmallEvenCertificate 3 5 ∧ SmallOddCertificate 3 64 := by
  have hd : auxD 3 = 2 := by decide +kernel
  have hm : evenModulus 3 = 12 := by decide +kernel
  constructor
  · refine ⟨by norm_num, by decide +kernel, ?_⟩
    rw [hm, hd, Nat.cast_ofNat, show (5 : ℝ) * 100000 = 500000 by norm_num]
    exact SmallCertificates.Q3.even_chains
  · unfold SmallOddCertificate
    rw [hd]
    exact SmallCertificates.Q3.odd_witnesses

/-- 论文命题 5.1 [prop:q3-q5]。 -/
theorem q5_certificates : SmallEvenCertificate 5 3 ∧ SmallOddCertificate 5 312 := by
  have hd : auxD 5 = 2 := by decide +kernel
  have hm : evenModulus 5 = 40 := by decide +kernel
  constructor
  · refine ⟨by norm_num, by decide +kernel, ?_⟩
    rw [hm, hd, Nat.cast_ofNat, show (3 : ℝ) * 100000 = 300000 by norm_num]
    exact SmallCertificates.Q5.even_chains
  · unfold SmallOddCertificate
    rw [hd]
    exact SmallCertificates.Q5.odd_witnesses

/-- 论文命题 5.3 [prop:q7]。 -/
theorem q7_certificates : Q7EvenCertificate ∧ Q7OddCertificate := by
  constructor
  · intro r hr s hs
    obtain ⟨C₀, _⟩ := SmallCertificates.Q7.stage0_chains r hr s hs
    exact ⟨⟨C₀⟩, SmallCertificates.Q7.stage1_chains r hr s hs⟩
  · exact SmallCertificates.Q7.odd_witnesses

/-- 论文引理 5.2 [lem:q7-exceptions]。 -/
theorem q7_exception_classification (N : ℕ) (hlo : 100000 ≤ N) (hhi : N ≤ 104760)
    (hodd : Odd N) (hdiv : 15 ∣ N) (hres : Nat.ModEq 49 N 19) :
    N = 100665 ∨ N = 102135 ∨ N = 103605 := by
  have h30 : Nat.ModEq 30 N 100665 :=
    (Nat.modEq_and_modEq_iff_modEq_mul (by decide : Nat.Coprime 2 15)).mp
      ⟨Nat.odd_iff.mp hodd, Nat.mod_eq_zero_of_dvd hdiv⟩
  have h1470 : Nat.ModEq 1470 N 100665 :=
    (Nat.modEq_and_modEq_iff_modEq_mul (by decide : Nat.Coprime 30 49)).mp ⟨h30, hres⟩
  change N % 1470 = 705 at h1470
  clear h30 hres hdiv hodd
  omega

/-- 论文引理 5.2 [lem:q7-exceptions]；论文式 (5.3) [eq:q7-exception-decompositions]。 -/
theorem q7_exception_positive_positive :
    HasRepresentation 100665 1 1 ∧ HasRepresentation 102135 1 1 ∧
      HasRepresentation 103605 1 1 := by
  refine ⟨⟨1, 100664, ?_⟩, ⟨18, 102117, ?_⟩, ⟨6, 103599, ?_⟩⟩ <;> decide +kernel

/-- 论文命题 5.1 [prop:q3-q5]；论文引理 4.2 [lem:chain-scaling]。 -/
theorem four_patterns_of_small_certificates (N q ell bound : ℕ) (hH : AdmissibleAuxiliaryPrime N q)
    (hN : mainThreshold ≤ N) (hcert : SmallEvenCertificate q ell ∧ SmallOddCertificate q bound)
    (hbound : bound * auxT q ^ 2 < mainThreshold) : FourPatternsAt N := by
  rcases Nat.even_or_odd N with heven | hodd
  · obtain ⟨hell, hcop, hchains⟩ := hcert.1
    exact four_patterns_of_even_parameters N q hH heven
      (even_parameters_of_interval_chains N q ell hH heven hell hcop 100000 (by norm_num)
        (by exact_mod_cast hN) hchains)
  · exact four_patterns_of_odd_parameters N q hH hodd
      (odd_parameters_of_bounded_witnesses N q bound hH (hbound.trans_le hN) hcert.2)

/-- 论文命题 5.1 [prop:q3-q5]。 -/
theorem four_patterns_of_q3 (N : ℕ) (hN : mainThreshold ≤ N) (hnot : ¬ 3 ∣ N) :
    FourPatternsAt N := by
  have hH : AdmissibleAuxiliaryPrime N 3 := by
    refine ⟨lt_of_lt_of_le (by decide : 0 < mainThreshold) hN, by norm_num, by decide, hnot, ?_⟩
    intro p hp ho hd
    exact False.elim (Nat.not_dvd_of_pos_of_lt (by decide : 0 < 2) (hp.odd_iff.mp ho) hd)
  exact four_patterns_of_small_certificates N 3 5 64 hH hN q3_certificates (by decide +kernel)

/-- 论文命题 5.1 [prop:q3-q5]。 -/
theorem four_patterns_of_q5 (N : ℕ) (hN : mainThreshold ≤ N) (hnot : ¬ 5 ∣ N) :
    FourPatternsAt N := by
  have hH : AdmissibleAuxiliaryPrime N 5 := by
    refine ⟨lt_of_lt_of_le (by decide : 0 < mainThreshold) hN, by norm_num, by decide, hnot, ?_⟩
    intro p hp ho hd
    exact False.elim (Nat.not_dvd_of_pos_of_lt (by decide : 0 < 2) (hp.odd_iff.mp ho)
      (hp.dvd_of_dvd_pow (show p ∣ 2 ^ 2 from hd)))
  exact four_patterns_of_small_certificates N 5 3 312 hH hN q5_certificates (by decide +kernel)

/-- 论文命题 5.3 [prop:q7]。 -/
theorem four_patterns_of_q7 (N : ℕ) (hN : mainThreshold ≤ N)
    (hdiv : 15 ∣ N) (hnot : ¬ 7 ∣ N) : FourPatternsAt N := by
  have hH : AdmissibleAuxiliaryPrime N 7 := by
    refine ⟨lt_of_lt_of_le (by decide : 0 < mainThreshold) hN, by norm_num, by decide, hnot, ?_⟩
    intro p hp ho hd
    have hp3 : p ∣ 3 := (hp.dvd_mul.mp (show p ∣ 2 * 3 from hd)).resolve_left
      (Nat.not_dvd_of_pos_of_lt (by decide : 0 < 2) (hp.odd_iff.mp ho))
    exact hp3.trans ((by decide : 3 ∣ 15).trans hdiv)
  have hd7 : auxD 7 = 6 := by decide +kernel
  have hm7 : evenModulus 7 = 252 := by decide +kernel
  rcases Nat.even_or_odd N with heven | hodd
  · apply four_patterns_of_even_parameters N 7 hH heven
    by_cases hsmall : N ≤ 1000000
    · obtain ⟨r, hrl, hdr, hqr, hrmod⟩ := even_residue_properties N 7 hH heven
      rw [hm7] at hrl hrmod
      rw [hd7] at hdr
      have hrmem : r ∈ eligibleResidues 7 252 6 :=
        Finset.mem_filter.mpr ⟨Finset.mem_range.mpr hrl, hdr, hqr⟩
      intro s hs
      obtain ⟨C⟩ := (q7_certificates.1 r hrmem s hs).1
      obtain ⟨v, hv, hlo, hhi, hmod, hsign⟩ := interval_chain_covers 7 252 (by decide) (by decide)
        100000 1000000 (N : ℝ) (r : ℤ) s C (by exact_mod_cast hN) (by exact_mod_cast hsmall)
      exact ⟨v, ⟨hv, hlo, hhi, by rw [hm7]; exact hmod.trans hrmod⟩, hsign⟩
    · exact even_parameters_of_interval_chains N 7 5 hH heven (by norm_num) (by decide +kernel)
        1000000 (by norm_num) (by exact_mod_cast (Nat.le_of_lt (Nat.lt_of_not_ge hsmall)))
        (by
          intro r hr s hs
          rw [hm7, hd7] at hr
          rw [hm7]
          rw [Nat.cast_ofNat, show (5 : ℝ) * 1000000 = 5000000 by norm_num]
          exact (q7_certificates.1 r hr s hs).2)
  · let r := N % 49
    have hr : Nat.ModEq 49 r N := Nat.mod_modEq _ _
    have hrl : r < 49 := Nat.mod_lt _ (by decide)
    have hqr : ¬ 7 ∣ r := fun hd => hnot ((hr.dvd_iff (by decide : 7 ∣ 49)).mp hd)
    obtain ⟨Aneg, hAneg, hboundNeg, hdNeg, hmodNeg, hsignNeg⟩ := q7_certificates.2 r hrl hqr (-1) (Or.inr rfl)
    have hparamNeg : OddRigidityParameter N 7 Aneg := by
      have hb : Aneg ≤ 1074 := by simpa only [q7OddBound, if_pos rfl] using hboundNeg
      exact ⟨⟨hAneg, by change Aneg * 36 < N; change 100000 ≤ N at hN; omega,
        hmodNeg.trans hr⟩, by rw [hd7]; exact hdNeg⟩
    have hmm : HasRepresentation N (-1) (-1) := by
      by_contra hmissing
      have hrig := odd_missing_pattern_rigidity N 7 hodd hH (-1) (Or.inr rfl) hmissing Aneg hparamNeg
      rw [hsignNeg] at hrig
      norm_num at hrig
    have hmix := mixed_patterns_of_odd_parameter N 7 Aneg hodd hH hparamNeg
    have hpp : HasRepresentation N 1 1 := by
      obtain ⟨Apos, hApos, hboundPos, hdPos, hmodPos, hsignPos⟩ := q7_certificates.2 r hrl hqr 1 (Or.inl rfl)
      by_cases hfits : Apos * 36 < N
      · have hparamPos : OddRigidityParameter N 7 Apos :=
          ⟨⟨hApos, hfits, hmodPos.trans hr⟩, by rw [hd7]; exact hdPos⟩
        by_contra hmissing
        have hrig := odd_missing_pattern_rigidity N 7 hodd hH 1 (Or.inl rfl) hmissing Apos hparamPos
        rw [hsignPos] at hrig
        norm_num at hrig
      · have hr19 : r = 19 := by
          by_contra hne
          have hb : Apos ≤ 2777 := by simpa [q7OddBound, hne] using hboundPos
          change 100000 ≤ N at hN
          omega
        have hb : Apos ≤ 2910 := by simpa [q7OddBound, hr19] using hboundPos
        have hhi : N ≤ 104760 := by omega
        have hres : Nat.ModEq 49 N 19 := by change N % 49 = 19; exact hr19
        have hex := q7_exception_classification N hN hhi hodd hdiv hres
        rcases hex with rfl | rfl | rfl
        · exact q7_exception_positive_positive.1
        · exact q7_exception_positive_positive.2.1
        · exact q7_exception_positive_positive.2.2
    intro s t hs ht
    grind [IsSign]

/-- 论文命题 5.4 [prop:small-primes]。 -/
theorem four_patterns_of_small_least_prime (N q : ℕ) (hN : mainThreshold ≤ N)
    (hleast : IsLeastMissingOddPrime N q) (hq : q ≤ 7) : FourPatternsAt N := by
  have hcases : q = 3 ∨ q = 5 ∨ q = 7 := by
    have hprime := hleast.2.1
    have hq3 := hprime.odd_iff.mp hleast.2.2.1
    interval_cases q <;> norm_num at *
  rcases hcases with rfl | rfl | rfl
  · exact four_patterns_of_q3 N hN hleast.2.2.2.1
  · exact four_patterns_of_q5 N hN hleast.2.2.2.1
  · have h15 : 15 ∣ N := by
      simpa only [show oddPrimeProduct 7 = 15 by decide +kernel] using least_missing_product_dvd N 7 hleast
    exact four_patterns_of_q7 N hN h15 hleast.2.2.2.1

end GeneralizedGoldbach
