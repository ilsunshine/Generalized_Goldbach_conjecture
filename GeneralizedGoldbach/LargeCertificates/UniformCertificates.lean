module

public import GeneralizedGoldbach.LargeCertificates.Even11
public import GeneralizedGoldbach.LargeCertificates.Odd11
public import GeneralizedGoldbach.LargeCertificates.Even13
public import GeneralizedGoldbach.LargeCertificates.Odd13
public import GeneralizedGoldbach.LargeCertificates.Even17
public import GeneralizedGoldbach.LargeCertificates.Odd17
public import GeneralizedGoldbach.LargeCertificates.Even19
public import GeneralizedGoldbach.LargeCertificates.Odd19
public import GeneralizedGoldbach.LargeCertificates.Even23
public import GeneralizedGoldbach.LargeCertificates.Odd23
public import GeneralizedGoldbach.LargeCertificates.Even29
public import GeneralizedGoldbach.LargeCertificates.Odd29
public import GeneralizedGoldbach.LargeCertificates.Even31
public import GeneralizedGoldbach.LargeCertificates.Odd31
public import GeneralizedGoldbach.LargeCertificates.Even37
public import GeneralizedGoldbach.LargeCertificates.Odd37
public import GeneralizedGoldbach.LargeCertificates.Even41
public import GeneralizedGoldbach.LargeCertificates.Odd41
public import GeneralizedGoldbach.LargeCertificates.Even43
public import GeneralizedGoldbach.LargeCertificates.Odd43
public import GeneralizedGoldbach.LargeCertificates.Even47
public import GeneralizedGoldbach.LargeCertificates.Odd47
public import GeneralizedGoldbach.LargeCertificates.Even53
public import GeneralizedGoldbach.LargeCertificates.Odd53
public import GeneralizedGoldbach.LargeCertificates.Even59
public import GeneralizedGoldbach.LargeCertificates.Odd59

/-! 全量有限证书：外部生成数据，内核检查覆盖及各项条件。 -/
@[expose] public section
namespace GeneralizedGoldbach.LargeCertificates.UniformCertificates
open FullCertificate
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem uniform11 : UniformCertificate 11 := by
  have hparams : auxD 11 = 10 ∧ evenModulus 11 = 1100 ∧
      uniformThreshold 11 = 15488000 := by decide +kernel
  exact ⟨uniformOdd_of_table sharedPrimes 11 [2,5]
    Odd11.data sharedPrimes_valid (by simpa only [hparams.1] using Odd11.valid),
    uniformEven_of_table sharedPrimes 11 3 [2,3,5]
      Even11.data sharedPrimes_valid (by decide +kernel) (by decide +kernel)
      (by simpa only [hparams.1, hparams.2.1, hparams.2.2, auxT] using Even11.valid)⟩

theorem uniform13 : UniformCertificate 13 := by
  have hparams : auxD 13 = 6 ∧ evenModulus 13 = 936 ∧
      uniformThreshold 13 = 18690048 := by decide +kernel
  exact ⟨uniformOdd_of_table sharedPrimes 13 [2,3]
    Odd13.data sharedPrimes_valid (by simpa only [hparams.1] using Odd13.valid),
    uniformEven_of_table sharedPrimes 13 5 [2,3,5]
      Even13.data sharedPrimes_valid (by decide +kernel) (by decide +kernel)
      (by simpa only [hparams.1, hparams.2.1, hparams.2.2, auxT] using Even13.valid)⟩

theorem uniform17 : UniformCertificate 17 := by
  have hparams : auxD 17 = 2 ∧ evenModulus 17 = 544 ∧
      uniformThreshold 17 = 18939904 := by decide +kernel
  exact ⟨uniformOdd_of_table sharedPrimes 17 [2]
    Odd17.data sharedPrimes_valid (by simpa only [hparams.1] using Odd17.valid),
    uniformEven_of_table sharedPrimes 17 3 [2,3]
      Even17.data sharedPrimes_valid (by decide +kernel) (by decide +kernel)
      (by simpa only [hparams.1, hparams.2.1, hparams.2.2, auxT] using Even17.valid)⟩

theorem uniform19 : UniformCertificate 19 := by
  have hparams : auxD 19 = 6 ∧ evenModulus 19 = 2052 ∧
      uniformThreshold 19 = 89828352 := by decide +kernel
  exact ⟨uniformOdd_of_table sharedPrimes 19 [2,3]
    Odd19.data sharedPrimes_valid (by simpa only [hparams.1] using Odd19.valid),
    uniformEven_of_table sharedPrimes 19 5 [2,3,5]
      Even19.data sharedPrimes_valid (by decide +kernel) (by decide +kernel)
      (by simpa only [hparams.1, hparams.2.1, hparams.2.2, auxT] using Even19.valid)⟩

theorem uniform23 : UniformCertificate 23 := by
  have hparams : auxD 23 = 22 ∧ evenModulus 23 = 11132 ∧
      uniformThreshold 23 = 720997376 := by decide +kernel
  exact ⟨uniformOdd_of_table sharedPrimes 23 [2,11]
    Odd23.data sharedPrimes_valid (by simpa only [hparams.1] using Odd23.valid),
    uniformEven_of_table sharedPrimes 23 3 [2,3,11]
      Even23.data sharedPrimes_valid (by decide +kernel) (by decide +kernel)
      (by simpa only [hparams.1, hparams.2.1, hparams.2.2, auxT] using Even23.valid)⟩

theorem uniform29 : UniformCertificate 29 := by
  have hparams : auxD 29 = 14 ∧ evenModulus 29 = 11368 ∧
      uniformThreshold 29 = 1181544448 := by decide +kernel
  exact ⟨uniformOdd_of_table sharedPrimes 29 [2,7]
    Odd29.data sharedPrimes_valid (by simpa only [hparams.1] using Odd29.valid),
    uniformEven_of_table sharedPrimes 29 3 [2,3,7]
      Even29.data sharedPrimes_valid (by decide +kernel) (by decide +kernel)
      (by simpa only [hparams.1, hparams.2.1, hparams.2.2, auxT] using Even29.valid)⟩

theorem uniform31 : UniformCertificate 31 := by
  have hparams : auxD 31 = 30 ∧ evenModulus 31 = 27900 ∧
      uniformThreshold 31 = 3321216000 := by decide +kernel
  exact ⟨uniformOdd_of_table sharedPrimes 31 [2,3,5]
    Odd31.data sharedPrimes_valid (by simpa only [hparams.1] using Odd31.valid),
    uniformEven_of_table sharedPrimes 31 7 [2,3,5,7]
      Even31.data sharedPrimes_valid (by decide +kernel) (by decide +kernel)
      (by simpa only [hparams.1, hparams.2.1, hparams.2.2, auxT] using Even31.valid)⟩

theorem uniform37 : UniformCertificate 37 := by
  have hparams : auxD 37 = 6 ∧ evenModulus 37 = 7992 ∧
      uniformThreshold 37 = 1362604032 := by decide +kernel
  exact ⟨uniformOdd_of_table sharedPrimes 37 [2,3]
    Odd37.data sharedPrimes_valid (by simpa only [hparams.1] using Odd37.valid),
    uniformEven_of_table sharedPrimes 37 5 [2,3,5]
      Even37.data sharedPrimes_valid (by decide +kernel) (by decide +kernel)
      (by simpa only [hparams.1, hparams.2.1, hparams.2.2, auxT] using Even37.valid)⟩

theorem uniform41 : UniformCertificate 41 := by
  have hparams : auxD 41 = 10 ∧ evenModulus 41 = 16400 ∧
      uniformThreshold 41 = 3442688000 := by decide +kernel
  exact ⟨uniformOdd_of_table sharedPrimes 41 [2,5]
    Odd41.data sharedPrimes_valid (by simpa only [hparams.1] using Odd41.valid),
    uniformEven_of_table sharedPrimes 41 3 [2,3,5]
      Even41.data sharedPrimes_valid (by decide +kernel) (by decide +kernel)
      (by simpa only [hparams.1, hparams.2.1, hparams.2.2, auxT] using Even41.valid)⟩

theorem uniform43 : UniformCertificate 43 := by
  have hparams : auxD 43 = 42 ∧ evenModulus 43 = 75852 ∧
      uniformThreshold 43 = 17534555136 := by decide +kernel
  exact ⟨uniformOdd_of_table sharedPrimes 43 [2,3,7]
    Odd43.data sharedPrimes_valid (by simpa only [hparams.1] using Odd43.valid),
    uniformEven_of_table sharedPrimes 43 5 [2,3,5,7]
      Even43.data sharedPrimes_valid (by decide +kernel) (by decide +kernel)
      (by simpa only [hparams.1, hparams.2.1, hparams.2.2, auxT] using Even43.valid)⟩

theorem uniform47 : UniformCertificate 47 := by
  have hparams : auxD 47 = 46 ∧ evenModulus 47 = 99452 ∧
      uniformThreshold 47 = 27521948672 := by decide +kernel
  exact ⟨uniformOdd_of_table sharedPrimes 47 [2,23]
    Odd47.data sharedPrimes_valid (by simpa only [hparams.1] using Odd47.valid),
    uniformEven_of_table sharedPrimes 47 3 [2,3,23]
      Even47.data sharedPrimes_valid (by decide +kernel) (by decide +kernel)
      (by simpa only [hparams.1, hparams.2.1, hparams.2.2, auxT] using Even47.valid)⟩

theorem uniform53 : UniformCertificate 53 := by
  have hparams : auxD 53 = 26 ∧ evenModulus 53 = 71656 ∧
      uniformThreshold 53 = 25277943808 := by decide +kernel
  exact ⟨uniformOdd_of_table sharedPrimes 53 [2,13]
    Odd53.data sharedPrimes_valid (by simpa only [hparams.1] using Odd53.valid),
    uniformEven_of_table sharedPrimes 53 3 [2,3,13]
      Even53.data sharedPrimes_valid (by decide +kernel) (by decide +kernel)
      (by simpa only [hparams.1, hparams.2.1, hparams.2.2, auxT] using Even53.valid)⟩

theorem uniform59 : UniformCertificate 59 := by
  have hparams : auxD 59 = 58 ∧ evenModulus 59 = 198476 ∧
      uniformThreshold 59 = 86935663616 := by decide +kernel
  exact ⟨uniformOdd_of_table sharedPrimes 59 [2,29]
    Odd59.data sharedPrimes_valid (by simpa only [hparams.1] using Odd59.valid),
    uniformEven_of_table sharedPrimes 59 3 [2,3,29]
      Even59.data sharedPrimes_valid (by decide +kernel) (by decide +kernel)
      (by simpa only [hparams.1, hparams.2.1, hparams.2.2, auxT] using Even59.valid)⟩

theorem all : ∀ q ∈ auxiliaryPrimeSet, UniformCertificate q := by
  exact auxiliaryPrimeSet_cases UniformCertificate uniform11 uniform13 uniform17 uniform19 uniform23 uniform29 uniform31 uniform37 uniform41 uniform43 uniform47 uniform53 uniform59

end GeneralizedGoldbach.LargeCertificates.UniformCertificates
