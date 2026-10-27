module

public import GeneralizedGoldbach.FactorCertificate

/-!
论文引理 C.3 [lem:range-coverage]。
平衡树按中点递归认证整个整数位置区间，覆盖结论由归纳推出，不依赖外部报告的行数。
-/
@[expose] public section
namespace GeneralizedGoldbach.FullCertificate

inductive CertificateTree (α : Type) where
  | empty
  | node (left : CertificateTree α) (value : α) (right : CertificateTree α)

namespace CertificateTree

/-- 论文引理 C.1 [lem:prime-certificate]。 -/
def all {α : Type} (test : α → Bool) : CertificateTree α → Bool
  | .empty => true
  | .node left value right => left.all test && test value && right.all test

/-- 论文引理 C.3 [lem:range-coverage]。 -/
def checkRange {α : Type} (test : ℕ → α → Bool) (lo hi : ℕ) :
    CertificateTree α → Bool
  | .empty => lo == hi
  | .node left value right =>
      decide (lo < hi) && left.checkRange test lo ((lo + hi) / 2) &&
      test ((lo + hi) / 2) value && right.checkRange test (((lo + hi) / 2) + 1) hi

/-- 论文引理 C.3 [lem:range-coverage]。
名义化的证明接口，连接数据块时不重复展开已认证计算。 -/
def RangeCertified {α : Type} (test : ℕ → α → Bool) (lo hi : ℕ)
    (tree : CertificateTree α) : Prop := tree.checkRange test lo hi = true

/-- 论文引理 C.3 [lem:range-coverage]；论文式 (C.3) [eq:range-coverage]。 -/
theorem range_sound {α : Type} (test : ℕ → α → Bool) (tree : CertificateTree α)
    (lo hi : ℕ) (h : tree.checkRange test lo hi = true) :
    ∀ i : ℕ, lo ≤ i → i < hi → ∃ value : α, test i value = true := by
  induction tree generalizing lo hi with
  | empty =>
    simp only [checkRange, beq_iff_eq] at h
    omega
  | node left value right ihl ihr =>
    simp only [checkRange, Bool.and_eq_true, decide_eq_true_eq] at h
    intro i hlo hhi
    exact (lt_trichotomy i ((lo + hi) / 2)).elim
      (fun hlt => ihl _ _ h.1.1.2 i hlo hlt)
      (fun hrest => hrest.elim
        (fun heq => heq.symm ▸ ⟨value, h.1.2⟩)
        (fun hgt => ihr _ _ h.2 i (Nat.succ_le_of_lt hgt) hhi))

/-- 论文引理 C.1 [lem:prime-certificate]。 -/
theorem all_node_valid {α : Type} (test : α → Bool) (left right : CertificateTree α)
    (value : α) (hl : left.all test = true) (hv : test value = true)
    (hr : right.all test = true) : (node left value right).all test = true := by
  simpa only [all, Bool.and_eq_true] using And.intro (And.intro hl hv) hr

/-- 论文引理 C.3 [lem:range-coverage]。 -/
theorem range_node_valid {α : Type} (test : ℕ → α → Bool) (lo hi : ℕ)
    (left right : CertificateTree α) (value : α) (hlo : lo < hi)
    (hl : left.checkRange test lo ((lo + hi) / 2) = true)
    (hv : test ((lo + hi) / 2) value = true)
    (hr : right.checkRange test (((lo + hi) / 2) + 1) hi = true) :
    (node left value right).checkRange test lo hi = true := by
  simpa only [checkRange, Bool.and_eq_true, decide_eq_true_eq] using
    And.intro (And.intro (And.intro hlo hl) hv) hr

/-- 论文引理 C.3 [lem:range-coverage]。 -/
theorem range_certified_node {α : Type} (test : ℕ → α → Bool) (lo hi : ℕ)
    (left right : CertificateTree α) (value : α) (hlo : lo < hi)
    (hl : RangeCertified test lo ((lo + hi) / 2) left)
    (hv : test ((lo + hi) / 2) value = true)
    (hr : RangeCertified test (((lo + hi) / 2) + 1) hi right) :
    RangeCertified test lo hi (node left value right) := by
  exact range_node_valid test lo hi left right value hlo hl hv hr

end CertificateTree
end GeneralizedGoldbach.FullCertificate
