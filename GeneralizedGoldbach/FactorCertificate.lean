module

public import GeneralizedGoldbach.Basic
public import HexPrimalityTheory.Prime

/-!
论文引理 C.1 [lem:prime-certificate]；
论文引理 C.2 [lem:factor-certificate]。
先匹配素性证书的目标，再验证完整因子乘积；符号只计算去重后的不同素因子数目。
-/
@[expose] public section
namespace GeneralizedGoldbach.Certified

/-- 论文引理 C.1 [lem:prime-certificate]。
显式检查素性证书的目标整数，不能把另一整数的证书移用过来。 -/
def checkPrimeCertificate (n : ℕ) (c : Hex.Nat.PrimeCert) : Bool :=
  c.subject == n && Hex.Nat.checkPrime c

/-- 论文引理 C.1 [lem:prime-certificate]。 -/
theorem prime_of_certificate (n : ℕ) (c : Hex.Nat.PrimeCert)
    (h : checkPrimeCertificate n c = true) : Nat.Prime n := by
  exact Hex.Nat.natPrime_of_checkPrimeAt h

/-- 论文引理 C.2 [lem:factor-certificate]。
每个素因子连同自己的目标匹配证书；允许重复，空表表示整数 1。 -/
abbrev FactorCertificate := List (ℕ × Hex.Nat.PrimeCert)

/-- 论文式 (C.1) [eq:factor-certificate]。 -/
def factorValues (f : FactorCertificate) : List ℕ := f.map Prod.fst

/-- 论文引理 C.2 [lem:factor-certificate]。 -/
def checkFactorization (n : ℕ) (f : FactorCertificate) : Bool :=
  (factorValues f).prod == n && f.all (fun pc => checkPrimeCertificate pc.1 pc.2)

/-- 论文式 (C.2) [eq:factor-sign]。 -/
def factorSign (f : FactorCertificate) : ℤ :=
  (-1 : ℤ) ^ (factorValues f).toFinset.card

/-- 论文引理 C.2 [lem:factor-certificate]；论文式 (C.1) [eq:factor-certificate]。 -/
theorem factorization_sound (n : ℕ) (f : FactorCertificate)
    (h : checkFactorization n f = true) :
    0 < n ∧ n.primeFactors = (factorValues f).toFinset := by
  have hc : (factorValues f).prod = n ∧
      ∀ pc ∈ f, checkPrimeCertificate pc.1 pc.2 = true := by
    simpa only [checkFactorization, Bool.and_eq_true, beq_iff_eq,
      List.all_eq_true] using h
  have hprime : ∀ p ∈ factorValues f, Nat.Prime p :=
    fun p hp => (List.mem_map.mp hp).elim fun pc hpc =>
      hpc.2 ▸ prime_of_certificate pc.1 pc.2 (hc.2 pc hpc.1)
  refine ⟨Nat.pos_of_ne_zero (hc.1 ▸
    List.prod_ne_zero (fun hz => (hprime 0 hz).ne_zero rfl)), ?_⟩
  simpa only [Nat.toFinset_factors] using
    (List.toFinset_eq_of_perm _ _ (Nat.primeFactorsList_unique hc.1 hprime)).symm

/-- 论文引理 C.2 [lem:factor-certificate]；论文式 (C.2) [eq:factor-sign]。
只计不同素因子的符号，与项目原定义完全一致。 -/
theorem g_of_certificate (n : ℕ) (f : FactorCertificate)
    (h : checkFactorization n f = true) : g n = factorSign f := by
  exact congrArg (fun S : Finset ℕ => (-1 : ℤ) ^ S.card) (factorization_sound n f h).2

end GeneralizedGoldbach.Certified
