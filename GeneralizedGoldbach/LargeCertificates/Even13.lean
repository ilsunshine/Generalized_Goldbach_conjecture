module

public import GeneralizedGoldbach.LargeCertificates.Even13.B0000

/-! 全量有限证书：外部生成数据，内核检查覆盖及各项条件。 -/
@[expose] public section
namespace GeneralizedGoldbach.LargeCertificates.Even13
open FullCertificate
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def data : CertificateTree (List FactoredPoint) := B0000.data
theorem valid : CertificateTree.RangeCertified (checkEvenEntry sharedPrimes 13 6 936 18690048 5 [2,3,5]) 0 312 data := by
  exact B0000.valid

end GeneralizedGoldbach.LargeCertificates.Even13
