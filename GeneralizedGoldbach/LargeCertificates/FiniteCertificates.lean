module

public import GeneralizedGoldbach.LargeCertificates.CSV11
public import GeneralizedGoldbach.LargeCertificates.CSV13
public import GeneralizedGoldbach.LargeCertificates.CSV17
public import GeneralizedGoldbach.LargeCertificates.CSV19
public import GeneralizedGoldbach.LargeCertificates.CSV23
public import GeneralizedGoldbach.LargeCertificates.CSV29
public import GeneralizedGoldbach.LargeCertificates.CSV31
public import GeneralizedGoldbach.LargeCertificates.CSV37
public import GeneralizedGoldbach.LargeCertificates.CSV41
public import GeneralizedGoldbach.LargeCertificates.CSV43
public import GeneralizedGoldbach.LargeCertificates.CSV47
public import GeneralizedGoldbach.LargeCertificates.CSV53
public import GeneralizedGoldbach.LargeCertificates.CSV59

/-! 全量有限证书：外部生成数据，内核检查覆盖及各项条件。 -/
@[expose] public section
namespace GeneralizedGoldbach.LargeCertificates.FiniteCertificates
open FullCertificate
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem finite11 : ∀ N : ℕ, FiniteCandidate N 11 → Nonempty (FiniteWitness N) := by
  have hparams : oddPrimeProduct 11 = 105 ∧ candidateLower 11 = 953 ∧
      candidateUpper 11 = 147504 := by decide +kernel
  exact finiteWitness_of_table sharedPrimes 11 CSV11.data sharedPrimes_valid
    (by simpa only [hparams.1, hparams.2.1, hparams.2.2] using CSV11.valid)

theorem finite13 : ∀ N : ℕ, FiniteCandidate N 13 → Nonempty (FiniteWitness N) := by
  have hparams : oddPrimeProduct 13 = 1155 ∧ candidateLower 13 = 87 ∧
      candidateUpper 13 = 16181 := by decide +kernel
  exact finiteWitness_of_table sharedPrimes 13 CSV13.data sharedPrimes_valid
    (by simpa only [hparams.1, hparams.2.1, hparams.2.2] using CSV13.valid)

theorem finite17 : ∀ N : ℕ, FiniteCandidate N 17 → Nonempty (FiniteWitness N) := by
  have hparams : oddPrimeProduct 17 = 15015 ∧ candidateLower 17 = 7 ∧
      candidateUpper 17 = 1261 := by decide +kernel
  exact finiteWitness_of_table sharedPrimes 17 CSV17.data sharedPrimes_valid
    (by simpa only [hparams.1, hparams.2.1, hparams.2.2] using CSV17.valid)

theorem finite19 : ∀ N : ℕ, FiniteCandidate N 19 → Nonempty (FiniteWitness N) := by
  have hparams : oddPrimeProduct 19 = 255255 ∧ candidateLower 19 = 1 ∧
      candidateUpper 19 = 351 := by decide +kernel
  exact finiteWitness_of_table sharedPrimes 19 CSV19.data sharedPrimes_valid
    (by simpa only [hparams.1, hparams.2.1, hparams.2.2] using CSV19.valid)

theorem finite23 : ∀ N : ℕ, FiniteCandidate N 23 → Nonempty (FiniteWitness N) := by
  have hparams : oddPrimeProduct 23 = 4849845 ∧ candidateLower 23 = 1 ∧
      candidateUpper 23 = 148 := by decide +kernel
  exact finiteWitness_of_table sharedPrimes 23 CSV23.data sharedPrimes_valid
    (by simpa only [hparams.1, hparams.2.1, hparams.2.2] using CSV23.valid)

theorem finite29 : ∀ N : ℕ, FiniteCandidate N 29 → Nonempty (FiniteWitness N) := by
  have hparams : oddPrimeProduct 29 = 111546435 ∧ candidateLower 29 = 1 ∧
      candidateUpper 29 = 10 := by decide +kernel
  exact finiteWitness_of_table sharedPrimes 29 CSV29.data sharedPrimes_valid
    (by simpa only [hparams.1, hparams.2.1, hparams.2.2] using CSV29.valid)

theorem finite31 : ∀ N : ℕ, FiniteCandidate N 31 → Nonempty (FiniteWitness N) := by
  have hparams : oddPrimeProduct 31 = 3234846615 ∧ candidateLower 31 = 1 ∧
      candidateUpper 31 = 1 := by decide +kernel
  exact finiteWitness_of_table sharedPrimes 31 CSV31.data sharedPrimes_valid
    (by simpa only [hparams.1, hparams.2.1, hparams.2.2] using CSV31.valid)

theorem finite37 : ∀ N : ℕ, FiniteCandidate N 37 → Nonempty (FiniteWitness N) := by
  have hparams : oddPrimeProduct 37 = 100280245065 ∧ candidateLower 37 = 1 ∧
      candidateUpper 37 = 0 := by decide +kernel
  exact finiteWitness_of_table sharedPrimes 37 CSV37.data sharedPrimes_valid
    (by simpa only [hparams.1, hparams.2.1, hparams.2.2] using CSV37.valid)

theorem finite41 : ∀ N : ℕ, FiniteCandidate N 41 → Nonempty (FiniteWitness N) := by
  have hparams : oddPrimeProduct 41 = 3710369067405 ∧ candidateLower 41 = 1 ∧
      candidateUpper 41 = 0 := by decide +kernel
  exact finiteWitness_of_table sharedPrimes 41 CSV41.data sharedPrimes_valid
    (by simpa only [hparams.1, hparams.2.1, hparams.2.2] using CSV41.valid)

theorem finite43 : ∀ N : ℕ, FiniteCandidate N 43 → Nonempty (FiniteWitness N) := by
  have hparams : oddPrimeProduct 43 = 152125131763605 ∧ candidateLower 43 = 1 ∧
      candidateUpper 43 = 0 := by decide +kernel
  exact finiteWitness_of_table sharedPrimes 43 CSV43.data sharedPrimes_valid
    (by simpa only [hparams.1, hparams.2.1, hparams.2.2] using CSV43.valid)

theorem finite47 : ∀ N : ℕ, FiniteCandidate N 47 → Nonempty (FiniteWitness N) := by
  have hparams : oddPrimeProduct 47 = 6541380665835015 ∧ candidateLower 47 = 1 ∧
      candidateUpper 47 = 0 := by decide +kernel
  exact finiteWitness_of_table sharedPrimes 47 CSV47.data sharedPrimes_valid
    (by simpa only [hparams.1, hparams.2.1, hparams.2.2] using CSV47.valid)

theorem finite53 : ∀ N : ℕ, FiniteCandidate N 53 → Nonempty (FiniteWitness N) := by
  have hparams : oddPrimeProduct 53 = 307444891294245705 ∧ candidateLower 53 = 1 ∧
      candidateUpper 53 = 0 := by decide +kernel
  exact finiteWitness_of_table sharedPrimes 53 CSV53.data sharedPrimes_valid
    (by simpa only [hparams.1, hparams.2.1, hparams.2.2] using CSV53.valid)

theorem finite59 : ∀ N : ℕ, FiniteCandidate N 59 → Nonempty (FiniteWitness N) := by
  have hparams : oddPrimeProduct 59 = 16294579238595022365 ∧ candidateLower 59 = 1 ∧
      candidateUpper 59 = 0 := by decide +kernel
  exact finiteWitness_of_table sharedPrimes 59 CSV59.data sharedPrimes_valid
    (by simpa only [hparams.1, hparams.2.1, hparams.2.2] using CSV59.valid)

theorem all (N q : ℕ) (h : FiniteCandidate N q) : Nonempty (FiniteWitness N) := by
  exact auxiliaryPrimeSet_cases (fun q => ∀ N : ℕ, FiniteCandidate N q → Nonempty (FiniteWitness N))
    finite11 finite13 finite17 finite19 finite23 finite29 finite31 finite37 finite41 finite43 finite47 finite53 finite59 q h.1 N h

end GeneralizedGoldbach.LargeCertificates.FiniteCertificates
