module

public import GeneralizedGoldbach.LargeCertificates.Even17.B0000

/-! 全量有限证书：外部生成数据，内核检查覆盖及各项条件。 -/
@[expose] public section
namespace GeneralizedGoldbach.LargeCertificates.Even17
open FullCertificate
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def data : CertificateTree (List FactoredPoint) := B0000.data
theorem valid : CertificateTree.RangeCertified (checkEvenEntry sharedPrimes 17 2 544 18939904 3 [2,3]) 0 544 data := by
  exact B0000.valid

end GeneralizedGoldbach.LargeCertificates.Even17
