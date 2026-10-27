module

public import GeneralizedGoldbach.Rigidity
public import Mathlib.Analysis.SpecialFunctions.Sqrt

/-!
论文引理 4.2 [lem:chain-scaling]。
有限链使用严格端点和重叠条件；伸缩指数允许实数参数，并用 ell 的整除性保持素因子符号。
-/
@[expose] public section
namespace GeneralizedGoldbach

/-- 论文引理 6.4 [lem:two-signs-gap]。 -/
def HasSignedPoint (m : ℕ) (L U : ℝ) (r s : ℤ) : Prop :=
  ∃ n : ℕ, 0 < n ∧ L < (n : ℝ) ∧ (n : ℝ) < U ∧
    Int.ModEq (m : ℤ) (n : ℤ) r ∧ g n = s

/-- 论文引理 6.4 [lem:two-signs-gap]。 -/
def BothSignsInClass (m : ℕ) (L U : ℝ) (r : ℤ) : Prop :=
  ∀ s : ℤ, IsSign s → HasSignedPoint m L U r s

/-- 论文定义 4.1 [def:interval-chain]；论文式 (4.1) [eq:chain-conditions]。 -/
structure IntervalChain (q m : ℕ) (L U : ℝ) (r s : ℤ) where
  last : ℕ
  point : ℕ → ℕ
  positive : ∀ i : ℕ, i ≤ last → 0 < point i
  residue : ∀ i : ℕ, i ≤ last → Int.ModEq (m : ℤ) (point i : ℤ) r
  sign : ∀ i : ℕ, i ≤ last → g (point i) = s
  increasing : ∀ i : ℕ, i < last → point i < point (i + 1)
  start_left : (auxT q : ℝ) * (point 0 : ℝ) < L
  start_right : L < (q : ℝ) * (point 0 : ℝ)
  overlap : ∀ i : ℕ, i < last →
    (auxT q : ℝ) * (point (i + 1) : ℝ) < (q : ℝ) * (point i : ℝ)
  end_right : U < (q : ℝ) * (point last : ℝ)

/-- 论文引理 4.2 [lem:chain-scaling]。
有限剩余类集合在乘 ell 的逆映射下封闭；互素时等价于逆元写法。 -/
def InverseClosed (m ell : ℕ) (R : Finset ℕ) : Prop :=
  ∀ r ∈ R, ∃ r' ∈ R, Nat.ModEq m (ell * r') r

/-- 论文定义 4.1 [def:interval-chain]；论文式 (4.1) [eq:chain-conditions]。
保留所选链点的下标，供后续调用该点的整除性质。 -/
theorem interval_chain_covers_index (q m : ℕ) (hq : 3 ≤ q) (L U X : ℝ)
    (r s : ℤ) (C : IntervalChain q m L U r s) (hLX : L ≤ X) (hXU : X ≤ U) :
    ∃ i : ℕ, i ≤ C.last ∧ X / (q : ℝ) < C.point i ∧
      (C.point i : ℝ) < X / (auxT q : ℝ) := by
  have hqpos : (0 : ℝ) < q := by exact_mod_cast (show 0 < q by omega)
  have htpos : (0 : ℝ) < auxT q := by
    exact_mod_cast Nat.sub_pos_of_lt (show 1 < q by omega)
  have hex : ∃ i : ℕ, i ≤ C.last ∧ X < (q : ℝ) * C.point i :=
    ⟨C.last, le_rfl, hXU.trans_lt C.end_right⟩
  let i := Nat.find hex
  have hi : i ≤ C.last ∧ X < (q : ℝ) * C.point i := Nat.find_spec hex
  have hleft : (auxT q : ℝ) * C.point i < X := by
    cases hiEq : i with
    | zero => simpa [hiEq] using C.start_left.trans_le hLX
    | succ j =>
      have hj : j < C.last := by omega
      have hprev : (q : ℝ) * C.point j ≤ X := le_of_not_gt (fun hlt =>
        Nat.find_min hex (show j < i by omega) ⟨hj.le, hlt⟩)
      simpa [hiEq] using (C.overlap j hj).trans_le hprev
  exact ⟨i, hi.1, (div_lt_iff₀ hqpos).mpr (by simpa [mul_comm] using hi.2),
    (lt_div_iff₀ htpos).mpr (by simpa [mul_comm] using hleft)⟩

/-- 论文定义 4.1 [def:interval-chain]；论文式 (4.1) [eq:chain-conditions]。 -/
theorem interval_chain_covers (q m : ℕ) (hq : 3 ≤ q) (_hm : 0 < m)
    (L U X : ℝ) (r s : ℤ) (C : IntervalChain q m L U r s)
    (hLX : L ≤ X) (hXU : X ≤ U) :
    HasSignedPoint m (X / (q : ℝ)) (X / (auxT q : ℝ)) r s := by
  have hqpos : (0 : ℝ) < q := by exact_mod_cast (show 0 < q by omega)
  have htpos : (0 : ℝ) < auxT q := by
    exact_mod_cast Nat.sub_pos_of_lt (show 1 < q by omega)
  have hex : ∃ i : ℕ, i ≤ C.last ∧ X < (q : ℝ) * C.point i :=
    ⟨C.last, le_rfl, hXU.trans_lt C.end_right⟩
  let i := Nat.find hex
  have hi : i ≤ C.last ∧ X < (q : ℝ) * C.point i := Nat.find_spec hex
  have hleft : (auxT q : ℝ) * C.point i < X := by
    cases hiEq : i with
    | zero => simpa [hiEq] using C.start_left.trans_le hLX
    | succ j =>
      have hj : j < C.last := by omega
      have hprev : (q : ℝ) * C.point j ≤ X := le_of_not_gt (fun hlt =>
        Nat.find_min hex (show j < i by omega) ⟨hj.le, hlt⟩)
      simpa [hiEq] using (C.overlap j hj).trans_le hprev
  exact ⟨C.point i, C.positive i hi.1,
    (div_lt_iff₀ hqpos).mpr (by simpa [mul_comm] using hi.2),
    (lt_div_iff₀ htpos).mpr (by simpa [mul_comm] using hleft), C.residue i hi.1, C.sign i hi.1⟩

/-- 论文式 (4.2) [eq:scaling-exponent]。
补充伸缩指数存在性：X,T 是实数，无需 X 或 X/ell^k 为整数。 -/
theorem exists_scaling_exponent (ell : ℕ) (hell : 1 < ell) (T X : ℝ)
    (hT : 0 < T) (hX : T ≤ X) :
    ∃ k : ℕ, T ≤ X / (ell : ℝ) ^ k ∧ X / (ell : ℝ) ^ k < (ell : ℝ) * T := by
  have hellR : (1 : ℝ) < ell := by exact_mod_cast hell
  obtain ⟨k, hlow, hupp⟩ := exists_nat_pow_near
    ((le_div_iff₀ hT).mpr (by simpa using hX)) hellR
  refine ⟨k, (le_div_iff₀ (pow_pos (by linarith : (0 : ℝ) < ell) k)).mpr ?_,
    (div_lt_iff₀ (pow_pos (by linarith : (0 : ℝ) < ell) k)).mpr ?_⟩
  · simpa [mul_comm] using (le_div_iff₀ hT).mp hlow
  · simpa [pow_succ, mul_assoc, mul_comm, mul_left_comm] using (div_lt_iff₀ hT).mp hupp

/-- 论文引理 4.2 [lem:chain-scaling]。
逆映射封闭性迭代到任意非负整数次幂。 -/
theorem inverseClosed_pow (m ell : ℕ) (R : Finset ℕ) (hR : InverseClosed m ell R)
    (k : ℕ) : ∀ r ∈ R, ∃ r' ∈ R, Nat.ModEq m (ell ^ k * r') r := by
  induction k with
  | zero => intro r hr; exact ⟨r, hr, by simpa using (Nat.ModEq.refl r : Nat.ModEq m r r)⟩
  | succ k ih =>
    intro r hr
    obtain ⟨r₁, hr₁, hcong₁⟩ := hR r hr
    obtain ⟨r', hr', hcong'⟩ := ih r₁ hr₁
    exact ⟨r', hr', by simpa [pow_succ', mul_assoc] using
      (hcong'.mul_left ell).trans hcong₁⟩

/-- 论文引理 4.2 [lem:chain-scaling]；论文式 (4.3) [eq:scaled-point]。 -/
theorem scaling_chain_extension (q m ell : ℕ) (hq : 3 ≤ q) (_hm : 0 < m)
    (hell : Nat.Prime ell) (_hcop : Nat.Coprime ell m) (T : ℝ) (hT : 0 < T)
    (R : Finset ℕ) (hR : InverseClosed m ell R)
    (hchains : ∀ r ∈ R, ∀ s : ℤ, IsSign s →
      ∃ C : IntervalChain q m T ((ell : ℝ) * T) (r : ℤ) s,
        ∀ i : ℕ, i ≤ C.last → ell ∣ C.point i) :
    ∀ X : ℝ, T ≤ X → ∀ r ∈ R,
      BothSignsInClass m (X / (q : ℝ)) (X / (auxT q : ℝ)) (r : ℤ) := by
  intro X hX r hr s hs
  obtain ⟨k, hklo, hkhi⟩ := exists_scaling_exponent ell hell.one_lt T X hT hX
  obtain ⟨r', hr', hcong⟩ := inverseClosed_pow m ell R hR k r hr
  obtain ⟨C, hdiv⟩ := hchains r' hr' s hs
  obtain ⟨i, hi, hlo, hhi⟩ := interval_chain_covers_index q m hq T ((ell : ℝ) * T)
    (X / (ell : ℝ) ^ k) (r' : ℤ) s C hklo hkhi.le
  refine ⟨ell ^ k * C.point i, Nat.mul_pos (Nat.pow_pos hell.pos) (C.positive i hi), ?_, ?_, ?_, ?_⟩
  · have := (div_lt_iff₀ (pow_pos (show (0 : ℝ) < ell by exact_mod_cast hell.pos) k)).mp
      (show (X / (q : ℝ)) / (ell : ℝ) ^ k < (C.point i : ℝ) by simpa [div_right_comm] using hlo)
    simpa [mul_comm] using this
  · have := (lt_div_iff₀ (pow_pos (show (0 : ℝ) < ell by exact_mod_cast hell.pos) k)).mp
      (show (C.point i : ℝ) < (X / (auxT q : ℝ)) / (ell : ℝ) ^ k by simpa [div_right_comm] using hhi)
    simpa [mul_comm] using this
  · have hc := (C.residue i hi).mul_left ((ell : ℤ) ^ k)
    have hc' : Int.ModEq (m : ℤ) ((ell ^ k * C.point i : ℕ) : ℤ) ((ell ^ k * r' : ℕ) : ℤ) := by
      simpa only [Nat.cast_mul, Nat.cast_pow] using hc
    exact hc'.trans (Int.natCast_modEq_iff.mpr hcong)
  · rw [g_prime_pow_mul_of_dvd ell (C.point i) k hell (C.positive i hi) (hdiv i hi), C.sign i hi]

end GeneralizedGoldbach
