module

public import GeneralizedGoldbach.LargeCertificates.Odd29.B0000

/-! 全量有限证书：外部生成数据，内核检查覆盖及各项条件。 -/
@[expose] public section
namespace GeneralizedGoldbach.LargeCertificates.Odd29
open FullCertificate
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def data : CertificateTree FactoredPoint := B0000.data
theorem valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 29 14 [2,7]) 0 1682 data := by
  exact B0000.valid

end GeneralizedGoldbach.LargeCertificates.Odd29
