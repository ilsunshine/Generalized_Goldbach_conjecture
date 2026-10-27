module

public import GeneralizedGoldbach.Basic
public import Lean.Elab.Tactic.Omega

/-!
论文定理 1.1 [thm:main]；
论文定义 A.1 [def:formal-patterns]。
定义严格正加数的有序表示、四种符号模式与表示数，并证明计数和存在性的等价。
-/
@[expose] public section
namespace GeneralizedGoldbach

/-- 论文定义 A.1 [def:formal-patterns]。 -/
def IsSign (s : ℤ) : Prop := s = 1 ∨ s = -1

/-- 论文定义 A.1 [def:formal-patterns]；论文式 (1.3) [eq:main]。 -/
def HasRepresentation (N : ℕ) (s t : ℤ) : Prop :=
  ∃ a b : ℕ, 0 < a ∧ 0 < b ∧ N = a + b ∧ g a = s ∧ g b = t

/-- 论文定义 A.1 [def:formal-patterns]。 -/
def FourPatternsAt (N : ℕ) : Prop :=
  ∀ s t : ℤ, IsSign s → IsSign t → HasRepresentation N s t

/-- 论文式 (1.2) [eq:representation-count]。
range N 保证 a<N，过滤条件排除 a=0。 -/
def representationCount (N : ℕ) (s t : ℤ) : ℕ :=
  ((Finset.range N).filter fun a => 0 < a ∧ g a = s ∧ g (N - a) = t).card

/-- 论文定理 1.1 [thm:main]。 -/
def mainThreshold : ℕ := 100000

/-- 论文定理 1.1 [thm:main]。
全称主目标，不附加证书或素数分布假设。 -/
def FourPatternsConjecture : Prop :=
  ∀ N : ℕ, mainThreshold ≤ N → FourPatternsAt N

/-- 论文推论 1.2 [cor:negative-negative]。 -/
def NegativeNegativeConjecture : Prop :=
  ∀ N : ℕ, mainThreshold ≤ N →
    ∃ a b : ℕ, 0 < a ∧ 0 < b ∧ N = a + b ∧ Odd (omega a) ∧ Odd (omega b)

/-- 论文引理 A.2 [lem:formal-count]；论文式 (1.2) [eq:representation-count]。
计数形式与正加数存在性完全等价。 -/
theorem representationCount_pos_iff (N : ℕ) (s t : ℤ) :
    0 < representationCount N s t ↔ HasRepresentation N s t := by
  simp only [representationCount, Finset.card_pos, Finset.Nonempty, Finset.mem_filter, Finset.mem_range]
  exact ⟨fun ⟨a, hlt, ha, hs, ht⟩ =>
      ⟨a, N - a, ha, by omega, by omega, hs, ht⟩,
    fun ⟨a, b, ha, hb, hN, hs, ht⟩ =>
      ⟨a, by omega, ha, hs, by simpa [hN] using ht⟩⟩

/-- 论文引理 A.2 [lem:formal-count]。 -/
theorem representation_swap (N : ℕ) (s t : ℤ)
    (h : HasRepresentation N s t) : HasRepresentation N t s := by
  exact match h with
    | ⟨a, b, ha, hb, hN, hs, ht⟩ => ⟨b, a, hb, ha, hN.trans (Nat.add_comm a b), ht, hs⟩

end GeneralizedGoldbach
