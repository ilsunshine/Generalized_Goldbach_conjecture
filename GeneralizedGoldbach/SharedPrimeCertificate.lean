module

public import GeneralizedGoldbach.CertificateTree

/-!
论文引理 C.1 [lem:prime-certificate]；
论文引理 C.2 [lem:factor-certificate]。
共享已认证素数，供大量因子表查找；每个接受的查询仍连接到目标整数的素性证明。
-/
@[expose] public section
namespace GeneralizedGoldbach.FullCertificate

/-- 论文引理 C.1 [lem:prime-certificate]。 -/
abbrev PrimeTree := CertificateTree (ℕ × Hex.Nat.PrimeCert)

/-- 论文引理 C.1 [lem:prime-certificate]。 -/
def checkPrimeEntry (pc : ℕ × Hex.Nat.PrimeCert) : Bool :=
  Certified.checkPrimeCertificate pc.1 pc.2

/-- 论文引理 C.1 [lem:prime-certificate]。 -/
def PrimeTreeCertified (tree : PrimeTree) : Prop := tree.all checkPrimeEntry = true

/-- 论文引理 C.1 [lem:prime-certificate]。 -/
theorem prime_node_valid (left right : PrimeTree) (pc : ℕ × Hex.Nat.PrimeCert)
    (hl : PrimeTreeCertified left) (hv : checkPrimeEntry pc = true)
    (hr : PrimeTreeCertified right) : PrimeTreeCertified (.node left pc right) := by
  exact CertificateTree.all_node_valid checkPrimeEntry left right pc hl hv hr

/-- 论文引理 C.1 [lem:prime-certificate]。 -/
def primeContains : PrimeTree → ℕ → Bool
  | .empty, _ => false
  | .node left pc right, p =>
      if p = pc.1 then true else if p < pc.1 then primeContains left p else primeContains right p

/-- 论文引理 C.1 [lem:prime-certificate]。 -/
def primeTest (tree : PrimeTree) (p : ℕ) : Bool :=
  if p < 100000 then Certified.checkPrimeCertificate p (.small p) else primeContains tree p

/-- 论文引理 C.1 [lem:prime-certificate]。 -/
theorem prime_of_contains (tree : PrimeTree) (p : ℕ)
    (hvalid : PrimeTreeCertified tree) (h : primeContains tree p = true) :
    Nat.Prime p := by
  induction tree with
  | empty => simp only [primeContains, Bool.false_eq_true] at h
  | node left pc right ihl ihr =>
    simp only [PrimeTreeCertified, CertificateTree.all, Bool.and_eq_true] at hvalid
    exact if heq : p = pc.1 then
      heq.symm ▸ Certified.prime_of_certificate pc.1 pc.2 hvalid.1.2
    else if hlt : p < pc.1 then
      ihl hvalid.1.1 (by simpa only [primeContains, if_neg heq, if_pos hlt] using h)
    else
      ihr hvalid.2 (by simpa only [primeContains, if_neg heq, if_neg hlt] using h)

/-- 论文引理 C.1 [lem:prime-certificate]。 -/
theorem primeTest_sound (tree : PrimeTree) (p : ℕ)
    (hvalid : PrimeTreeCertified tree) (h : primeTest tree p = true) : Nat.Prime p := by
  exact if hp : p < 100000 then
    Certified.prime_of_certificate p (.small p) (by simpa only [primeTest, if_pos hp] using h)
  else
    prime_of_contains tree p hvalid (by simpa only [primeTest, if_neg hp] using h)

/-- 论文引理 C.2 [lem:factor-certificate]。 -/
def checkFactors (tree : PrimeTree) (n : ℕ) (factors : List ℕ) : Bool :=
  factors.prod == n && factors.all (primeTest tree)

/-- 论文式 (C.2) [eq:factor-sign]。 -/
def factorSign (factors : List ℕ) : ℤ := (-1 : ℤ) ^ factors.toFinset.card

end GeneralizedGoldbach.FullCertificate
