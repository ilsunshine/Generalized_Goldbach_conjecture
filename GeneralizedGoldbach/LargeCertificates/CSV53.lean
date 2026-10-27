module

public import GeneralizedGoldbach.LargeCertificates.CSV53.B0000

/-! 全量有限证书：外部生成数据，内核检查覆盖及各项条件。 -/
@[expose] public section
namespace GeneralizedGoldbach.LargeCertificates.CSV53
open FullCertificate
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def data : CertificateTree NatFiniteRow := B0000.data
theorem valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 53 307444891294245705) 1 1 data := by
  exact B0000.valid

end GeneralizedGoldbach.LargeCertificates.CSV53
