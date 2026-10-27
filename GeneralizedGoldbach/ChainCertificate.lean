module

public import GeneralizedGoldbach.IntervalChains

/-!
论文引理 C.4 [lem:numeric-chain]。
把逐项整数条件和有限表覆盖连接到实数区间链；每个点的正性、符号、同余、整除和严格端点均保留。
-/
@[expose] public section
namespace GeneralizedGoldbach

/-- 论文引理 C.4 [lem:numeric-chain]。 -/
structure ChainRow where
  residue : ℕ
  sign : ℤ
  points : List ℕ
  deriving DecidableEq

/-- 论文引理 C.4 [lem:numeric-chain]。 -/
def NumericChainValid (q m L U ell : ℕ) (row : ChainRow) : Prop :=
  0 < row.points.length ∧
  (∀ i < row.points.length, 0 < row.points.getD i 0 ∧
    Int.ModEq (m : ℤ) (row.points.getD i 0 : ℤ) (row.residue : ℤ) ∧
    g (row.points.getD i 0) = row.sign ∧ ell ∣ row.points.getD i 0) ∧
  (∀ i < row.points.length - 1, row.points.getD i 0 < row.points.getD (i + 1) 0) ∧
  auxT q * row.points.getD 0 0 < L ∧ L < q * row.points.getD 0 0 ∧
  (∀ i < row.points.length - 1,
    auxT q * row.points.getD (i + 1) 0 < q * row.points.getD i 0) ∧
  U < q * row.points.getD (row.points.length - 1) 0

instance (q m L U ell : ℕ) (row : ChainRow) : Decidable (NumericChainValid q m L U ell row) :=
  inferInstanceAs (Decidable (0 < row.points.length ∧
    (∀ i < row.points.length, 0 < row.points.getD i 0 ∧
      Int.ModEq (m : ℤ) (row.points.getD i 0 : ℤ) (row.residue : ℤ) ∧
      g (row.points.getD i 0) = row.sign ∧ ell ∣ row.points.getD i 0) ∧
    (∀ i < row.points.length - 1, row.points.getD i 0 < row.points.getD (i + 1) 0) ∧
    auxT q * row.points.getD 0 0 < L ∧ L < q * row.points.getD 0 0 ∧
    (∀ i < row.points.length - 1,
      auxT q * row.points.getD (i + 1) 0 < q * row.points.getD i 0) ∧
    U < q * row.points.getD (row.points.length - 1) 0))

/-- 论文引理 C.4 [lem:numeric-chain]。 -/
theorem intervalChain_of_numeric (q m L U ell : ℕ) (row : ChainRow)
    (h : NumericChainValid q m L U ell row) :
    ∃ C : IntervalChain q m (L : ℝ) (U : ℝ) (row.residue : ℤ) row.sign,
      ∀ i : ℕ, i ≤ C.last → ell ∣ C.point i := by
  have hlen : 0 < row.points.length := h.1
  let C : IntervalChain q m (L : ℝ) (U : ℝ) (row.residue : ℤ) row.sign := {
    last := row.points.length - 1
    point := fun i => row.points.getD i 0
    positive := fun i hi => (h.2.1 i (by omega)).1
    residue := fun i hi => (h.2.1 i (by omega)).2.1
    sign := fun i hi => (h.2.1 i (by omega)).2.2.1
    increasing := h.2.2.1
    start_left := by exact_mod_cast h.2.2.2.1
    start_right := by exact_mod_cast h.2.2.2.2.1
    overlap := fun i hi => by exact_mod_cast h.2.2.2.2.2.1 i hi
    end_right := by exact_mod_cast h.2.2.2.2.2.2 }
  exact ⟨C, fun i hi => (h.2.1 i (by change i ≤ row.points.length - 1 at hi; omega)).2.2.2⟩

/-- 论文引理 C.4 [lem:numeric-chain]；论文命题 C.5 [prop:uniform-certification]。 -/
theorem intervalChains_of_table (q m L U ell : ℕ) (R : Finset ℕ) (rows : List ChainRow)
    (hvalid : ∀ row ∈ rows, NumericChainValid q m L U ell row)
    (hcover : ∀ r ∈ R, ∀ s ∈ ({-1, 1} : Finset ℤ),
      ∃ row ∈ rows, row.residue = r ∧ row.sign = s) :
    ∀ r ∈ R, ∀ s : ℤ, IsSign s →
      ∃ C : IntervalChain q m (L : ℝ) (U : ℝ) (r : ℤ) s,
        ∀ i : ℕ, i ≤ C.last → ell ∣ C.point i := by
  intro r hr s hs
  obtain ⟨row, hrow, hrEq, hsEq⟩ := hcover r hr s (by simpa [IsSign, or_comm] using hs)
  rw [← hrEq, ← hsEq]
  exact intervalChain_of_numeric q m L U ell row (hvalid row hrow)

end GeneralizedGoldbach
