module

public import GeneralizedGoldbach.IntervalChains

/-!
论文命题 4.3 [prop:uniform-threshold]；
论文命题 C.5 [prop:uniform-certification]。
将奇数有界见证和偶数有限链定义为证书类型；其无限范围结论由独立的伸缩与刚性引理推出。
-/
@[expose] public section
namespace GeneralizedGoldbach

/-- 论文式 (4.4) [eq:uniform-parameters]。 -/
def auxiliaryPrimeSet : Finset ℕ := {11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59}

/-- 论文式 (4.4) [eq:uniform-parameters]。 -/
def uniformThreshold (q : ℕ) : ℕ := 128 * auxD q * q ^ 2 * auxT q ^ 2

/-- 论文式 (4.6) [eq:congruence-cancellation]。 -/
def eligibleResidues (q m d : ℕ) : Finset ℕ :=
  (Finset.range m).filter fun r => d ∣ r ∧ ¬ q ∣ r

/-- 论文式 (4.7) [eq:uniform-odd-data]。 -/
def UniformOddCertificate (q : ℕ) : Prop :=
  ∀ r : ℕ, r < q ^ 2 → ¬ q ∣ r → ∀ s : ℤ, IsSign s →
    ∃ k : ℕ, 0 < k ∧ k < 128 * q ^ 2 ∧ Nat.ModEq (q ^ 2) k r ∧ g (auxD q * k) = s

/-- 论文式 (4.5) [eq:uniform-even-data]。 -/
def UniformEvenCertificate (q : ℕ) : Prop :=
  ∃ ell : ℕ, Nat.Prime ell ∧ Nat.Coprime ell (evenModulus q) ∧
    ∀ r : ℕ, r < auxT q * q → ¬ q ∣ r → ∀ s : ℤ, IsSign s →
      ∃ C : IntervalChain q (evenModulus q) (uniformThreshold q : ℝ)
          ((ell : ℝ) * (uniformThreshold q : ℝ)) ((auxD q * r : ℕ) : ℤ) s,
        ∀ i : ℕ, i ≤ C.last → ell ∣ C.point i

/-- 论文命题 C.5 [prop:uniform-certification]。 -/
def UniformCertificate (q : ℕ) : Prop := UniformOddCertificate q ∧ UniformEvenCertificate q

/-- 论文式 (4.4) [eq:uniform-parameters]。 -/
theorem auxiliaryPrimeSet_properties (q : ℕ) (hq : q ∈ auxiliaryPrimeSet) : Nat.Prime q ∧ Odd q := by
  exact (by decide +kernel : ∀ q ∈ auxiliaryPrimeSet, Nat.Prime q ∧ Odd q) q hq

end GeneralizedGoldbach
