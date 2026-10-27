module

public import GeneralizedGoldbach.AuxiliaryPrime
public import Mathlib.Data.Int.ModEq
public import Mathlib.Tactic.LinearCombination
public import Mathlib.Tactic.Linarith

/-!
论文引理 3.1 [lem:four-decompositions]。
先证明精确整除、正性和四个加法等式，再保存自然数分解及其素数剩余关系。
-/
@[expose] public section
namespace GeneralizedGoldbach

/-- 论文引理 3.1 [lem:four-decompositions]。 -/
def FourDecompositionParameter (N q A : ℕ) : Prop :=
  0 < A ∧ A * auxT q ^ 2 < N ∧ Nat.ModEq (q ^ 2) A N

/-- 论文引理 3.1 [lem:four-decompositions]；论文式 (3.1) [eq:four-decompositions]。 -/
structure FourDecomposition (N q A : ℕ) where
  u : ℕ
  v : ℕ
  w : ℕ
  A_pos : 0 < A
  u_pos : 0 < u
  v_pos : 0 < v
  w_pos : 0 < w
  first : N = A + q ^ 2 * u
  second : N = auxT q * q * u + v
  third : N = auxT q * v + w
  fourth : N = auxT q ^ 2 * A + q * w

/-- 论文引理 3.1 [lem:four-decompositions]；论文式 (3.3) [eq:four-prime-relations]。
四分解中的素数剩余关系；仅需 q>0，不依赖额外的互素性。 -/
theorem four_decomposition_congruences (N q A : ℕ) (hq : 0 < q)
    (D : FourDecomposition N q A) :
    Nat.ModEq q D.v N ∧ Int.ModEq (q : ℤ) (D.w : ℤ) (2 * (N : ℤ)) := by
  obtain ⟨t, rfl⟩ := Nat.exists_eq_succ_of_ne_zero hq.ne'
  have h2 : (N : ℤ) = (t : ℤ) * ((t : ℤ) + 1) * (D.u : ℤ) + (D.v : ℤ) := by
    exact_mod_cast (show N = t * (t + 1) * D.u + D.v from by simpa [auxT] using D.second)
  have h3 : (N : ℤ) = (t : ℤ) * (D.v : ℤ) + (D.w : ℤ) := by
    exact_mod_cast (show N = t * D.v + D.w from by simpa [auxT] using D.third)
  refine ⟨Nat.modEq_iff_dvd.mpr ⟨(t : ℤ) * (D.u : ℤ), ?_⟩,
    Int.modEq_iff_dvd.mpr ⟨(N : ℤ) - (t : ℤ) ^ 2 * (D.u : ℤ), ?_⟩⟩
  · push_cast
    linear_combination h2
  · push_cast
    linear_combination -(t : ℤ) * h2 + h3

/-- 论文引理 3.1 [lem:four-decompositions]；论文式 (3.1) [eq:four-decompositions]。 -/
theorem exists_four_decomposition (N q A : ℕ) (hq : Nat.Prime q)
    (hodd : Odd q) (_hqN : ¬ q ∣ N) (hA : FourDecompositionParameter N q A) :
    Nonempty (FourDecomposition N q A) := by
  have hq3 : 3 ≤ q := hq.odd_iff.mp hodd
  have ht : 0 < auxT q := Nat.sub_pos_of_lt ((by decide : 1 < 3).trans_le hq3)
  have hAN : A < N := (Nat.le_mul_of_pos_right A (Nat.pow_pos ht)).trans_lt hA.2.1
  obtain ⟨u, hu⟩ := (Nat.modEq_iff_exists_eq_add hAN.le).mp hA.2.2
  have hupos : 0 < u := Nat.pos_of_ne_zero (fun hzero =>
    hAN.ne (by simpa [hzero] using hu.symm))
  have hcoef : auxT q * q < q ^ 2 := by
    simpa [pow_two, auxT] using
      Nat.mul_lt_mul_of_pos_right (Nat.sub_lt hq.pos (by decide : 0 < 1)) hq.pos
  have hlt : auxT q * q * u < N :=
    (Nat.mul_lt_mul_of_pos_right hcoef hupos).trans_le (by omega)
  obtain ⟨v, hvpos, hvEq⟩ : ∃ v : ℕ, 0 < v ∧ N = auxT q * q * u + v :=
    ⟨N - auxT q * q * u, Nat.sub_pos_of_lt hlt, (Nat.add_sub_of_le hlt.le).symm⟩
  have hqt : q = auxT q + 1 := (Nat.sub_add_cancel (by omega : 1 ≤ q)).symm
  have hqv : q * v = N + auxT q * A := by
    nlinarith only [congrArg (fun x : ℕ => auxT q * x) hu,
      congrArg (fun x : ℕ => q * x) hvEq, congrArg (fun x : ℕ => N * x) hqt]
  have htv : auxT q * v < N := (Nat.mul_lt_mul_left hq.pos).mp (by
    nlinarith only [hA.2.1, congrArg (fun x : ℕ => auxT q * x) hqv,
      congrArg (fun x : ℕ => N * x) hqt])
  obtain ⟨w, hwpos, hwEq⟩ : ∃ w : ℕ, 0 < w ∧ N = auxT q * v + w :=
    ⟨N - auxT q * v, Nat.sub_pos_of_lt htv, (Nat.add_sub_of_le htv.le).symm⟩
  have hfour : N = auxT q ^ 2 * A + q * w := by
    nlinarith only [congrArg (fun x : ℕ => auxT q * x) hqv,
      congrArg (fun x : ℕ => q * x) hwEq, congrArg (fun x : ℕ => N * x) hqt]
  exact ⟨⟨u, v, w, hA.1, hupos, hvpos, hwpos, hu, hvEq, hwEq, hfour⟩⟩

/-- 论文式 (3.2) [eq:four-formulas]。 -/
theorem four_decomposition_formulas (N q A : ℕ) (hq : 0 < q)
    (D : FourDecomposition N q A) :
    (D.u : ℤ) = ((N : ℤ) - (A : ℤ)) / (q : ℤ) ^ 2 ∧
    (D.v : ℤ) = ((N : ℤ) + (auxT q : ℤ) * (A : ℤ)) / (q : ℤ) ∧
    (D.w : ℤ) = ((N : ℤ) - (auxT q : ℤ) ^ 2 * (A : ℤ)) / (q : ℤ) := by
  obtain ⟨t, rfl⟩ := Nat.exists_eq_succ_of_ne_zero hq.ne'
  have h1 : (N : ℤ) = (A : ℤ) + ((t : ℤ) + 1) ^ 2 * (D.u : ℤ) := by
    exact_mod_cast D.first
  have h2 : (N : ℤ) = (t : ℤ) * ((t : ℤ) + 1) * (D.u : ℤ) + (D.v : ℤ) := by
    exact_mod_cast (show N = t * (t + 1) * D.u + D.v from by simpa [auxT] using D.second)
  have h3 : (N : ℤ) = (t : ℤ) * (D.v : ℤ) + (D.w : ℤ) := by
    exact_mod_cast (show N = t * D.v + D.w from by simpa [auxT] using D.third)
  have hv : ((t : ℤ) + 1) * (D.v : ℤ) = (N : ℤ) + (t : ℤ) * (A : ℤ) := by
    linear_combination (t : ℤ) * h1 - ((t : ℤ) + 1) * h2
  have hw : ((t : ℤ) + 1) * (D.w : ℤ) = (N : ℤ) - (t : ℤ) ^ 2 * (A : ℤ) := by
    linear_combination -((t : ℤ) + 1) * h3 - (t : ℤ) * hv
  have hu : ((t : ℤ) + 1) ^ 2 * (D.u : ℤ) = (N : ℤ) - (A : ℤ) := by
    linear_combination -h1
  have hz : (t : ℤ) + 1 ≠ 0 := by omega
  simp [auxT, Nat.cast_succ, ← hu, ← hv, ← hw,
    Int.mul_ediv_cancel_left _ hz, Int.mul_ediv_cancel_left _ (pow_ne_zero 2 hz)]

/-- 论文式 (3.3) [eq:four-prime-relations]。 -/
theorem four_decomposition_prime_relations (N q A : ℕ) (hq : Nat.Prime q)
    (hodd : Odd q) (hqN : ¬ q ∣ N) (D : FourDecomposition N q A) :
    g (q ^ 2 * D.u) = g (q * D.u) ∧ ¬ q ∣ D.v ∧ ¬ q ∣ D.w ∧
      g (q * D.w) = -g D.w := by
  obtain ⟨hv, hw⟩ := four_decomposition_congruences N q A hq.pos D
  have hnotv : ¬ q ∣ D.v := fun hd => hqN ((hv.dvd_iff (dvd_refl q)).mp hd)
  have hnotw : ¬ q ∣ D.w := fun hd => hqN <|
    (hq.dvd_mul.mp (show q ∣ 2 * N from by
      exact_mod_cast (hw.dvd_iff.mp (Int.natCast_dvd_natCast.mpr hd)))).resolve_left
      (Nat.not_dvd_of_pos_of_lt (by decide : 0 < 2)
        ((by decide : 2 < 3).trans_le (hq.odd_iff.mp hodd)))
  exact ⟨g_prime_sq_mul q D.u hq D.u_pos, hnotv, hnotw,
    g_prime_mul_of_not_dvd q D.w hq D.w_pos hnotw⟩

end GeneralizedGoldbach
