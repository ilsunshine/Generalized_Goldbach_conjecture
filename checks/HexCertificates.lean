import GeneralizedGoldbach
import HexPrimalityTheory
import Lean.Util.CollectAxioms
import Lean.Elab.Command

/-! 真实 CSV 样本与损坏证书回归；不表示已经核验全部 CSV。 -/
namespace GeneralizedGoldbach.CertifiedRegression
open Certified

def primeCert2 : Hex.Nat.PrimeCert := .small 2

def primeCert3 : Hex.Nat.PrimeCert := .small 3

def primeCert7 : Hex.Nat.PrimeCert := .small 7

def primeCert11 : Hex.Nat.PrimeCert := .small 11

def primeCert13 : Hex.Nat.PrimeCert := .small 13

def primeCert17 : Hex.Nat.PrimeCert := .small 17

def primeCert19 : Hex.Nat.PrimeCert := .small 19

def primeCert29 : Hex.Nat.PrimeCert := .small 29

def primeCert43 : Hex.Nat.PrimeCert := .small 43

def primeCert47 : Hex.Nat.PrimeCert := .small 47

def primeCert157 : Hex.Nat.PrimeCert := .small 157

def primeCert179 : Hex.Nat.PrimeCert := .small 179

def primeCert197 : Hex.Nat.PrimeCert := .small 197

def primeCert491 : Hex.Nat.PrimeCert := .small 491

def primeCert509 : Hex.Nat.PrimeCert := .small 509

def primeCert659 : Hex.Nat.PrimeCert := .small 659

def primeCert2089 : Hex.Nat.PrimeCert := .small 2089

def primeCert2129 : Hex.Nat.PrimeCert := .small 2129

def primeCert2381 : Hex.Nat.PrimeCert := .small 2381

def primeCert14323 : Hex.Nat.PrimeCert := .small 14323

def primeCert33353 : Hex.Nat.PrimeCert := .small 33353

def primeCert100003 : Hex.Nat.PrimeCert := .pock 100003 [(2, 0, primeCert2), (2, 0, primeCert3), (2, 0, primeCert7), (2, 0, primeCert2381)]

def csvRow0 : FiniteWitnessCertificate :=
  ⟨⟨4, [(2, primeCert2), (2, primeCert2)], [(13, primeCert13), (43, primeCert43), (179, primeCert179)]⟩, ⟨6, [(2, primeCert2), (3, primeCert3)], [(3, primeCert3), (33353, primeCert33353)]⟩, ⟨2, [(2, primeCert2)], [(47, primeCert47), (2129, primeCert2129)]⟩⟩

theorem csvRow0_accepted : checkFiniteWitness 100065 csvRow0 = true := by
  decide +kernel

theorem csvRow0_patterns : FourPatternsAt 100065 := by
  exact fourPatterns_of_certificate 100065 csvRow0 csvRow0_accepted

def csvRow1 : FiniteWitnessCertificate :=
  ⟨⟨2, [(2, primeCert2)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (19, primeCert19), (659, primeCert659)]⟩, ⟨6, [(2, primeCert2), (3, primeCert3)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (17, primeCert17), (491, primeCert491)]⟩, ⟨4, [(2, primeCert2), (2, primeCert2)], [(2, primeCert2), (11, primeCert11), (29, primeCert29), (157, primeCert157)]⟩⟩

theorem csvRow1_accepted : checkFiniteWitness 100170 csvRow1 = true := by
  decide +kernel

theorem csvRow1_patterns : FourPatternsAt 100170 := by
  exact fourPatterns_of_certificate 100170 csvRow1 csvRow1_accepted

def csvRow2 : FiniteWitnessCertificate :=
  ⟨⟨3, [(3, primeCert3)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (2089, primeCert2089)]⟩, ⟨14, [(2, primeCert2), (7, primeCert7)], [(7, primeCert7), (14323, primeCert14323)]⟩, ⟨2, [(2, primeCert2)], [(197, primeCert197), (509, primeCert509)]⟩⟩

theorem csvRow2_accepted : checkFiniteWitness 100275 csvRow2 = true := by
  decide +kernel

theorem csvRow2_patterns : FourPatternsAt 100275 := by
  exact fourPatterns_of_certificate 100275 csvRow2 csvRow2_accepted

theorem pocklingtonAccepted : Nat.Prime 100003 := by
  exact prime_of_certificate 100003 primeCert100003 (by decide +kernel)

theorem targetMismatchRejected : checkPrimeCertificate 100019 primeCert100003 = false := by
  decide +kernel

theorem compositeRejected : checkPrimeCertificate 100 (.small 100) = false := by
  decide +kernel

theorem malformedPocklingtonRejected : checkPrimeCertificate 100003 (.pock 100003 []) = false := by
  decide +kernel

theorem productMismatchRejected : checkFactorization 15 [(3, primeCert3), (7, primeCert7)] = false := by
  decide +kernel

theorem zeroRejected : checkFactorization 0 [] = false := by
  decide +kernel

theorem unitAccepted : checkFactorization 1 [] = true := by
  decide +kernel

theorem squareDistinctSign : factorSign [(2, primeCert2), (2, primeCert2)] = -1 := by
  decide +kernel

theorem squareMatchesOriginal : g 4 = -1 := by
  exact (g_of_certificate 4 [(2, primeCert2), (2, primeCert2)] (by decide +kernel)).trans squareDistinctSign

theorem corruptedCSVRejected :
    checkFiniteWitness 100065 { csvRow0 with mm := { csvRow0.mm with a := 0 } } = false := by
  decide +kernel

open SmallCertificates.Q3 in
theorem wrongChainSignRejected :
    checkCertifiedChain 3 12 100000 500000 5 { evenRow0 with sign := 1 } evenRow0Factors = false := by
  decide +kernel

open SmallCertificates.Q3 in
theorem missingPointCertificateRejected :
    checkCertifiedChain 3 12 100000 500000 5 evenRow0 evenRow0Factors.tail = false := by
  decide +kernel

open SmallCertificates.Q3 in
theorem endpointEqualityRejected :
    checkCertifiedChain 3 12 (auxT 3 * evenRow0.points.getD 0 0) 500000 5
      evenRow0 evenRow0Factors = false := by
  decide +kernel

open SmallCertificates.Q3 in
theorem incompleteCoverageRejected :
    ¬ (∀ r ∈ eligibleResidues 3 12 2, ∀ s ∈ ({-1, 1} : Finset ℤ),
      ∃ row ∈ evenRows.tail, row.residue = r ∧ row.sign = s) := by
  decide +kernel

theorem tacticBridgeAccepted : Nat.Prime 2147483647 := by
  primality

end GeneralizedGoldbach.CertifiedRegression

#print axioms GeneralizedGoldbach.CertifiedRegression.pocklingtonAccepted
#print axioms GeneralizedGoldbach.CertifiedRegression.tacticBridgeAccepted

open Lean Elab Command in
run_elab do
  let env ← getEnv
  let allowed : Array Name := #[``propext, ``Classical.choice, ``Quot.sound]
  let mut count := 0
  for (name, _) in env.constants.toList do
    if (`GeneralizedGoldbach.CertifiedRegression).isPrefixOf name then
      count := count + 1
      for ax in (← collectAxioms name) do
        unless allowed.contains ax do
          throwError "Unfinished certificate regression: {name} -> {ax}"
  unless count >= 40 do
    throwError "Missing certificate regressions: {count} declarations"
  logInfo m!"Hex certificate regressions: {count} declarations; standard axioms only."
