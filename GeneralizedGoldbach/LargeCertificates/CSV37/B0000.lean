module

public import GeneralizedGoldbach.FullCertificateKernel
public import GeneralizedGoldbach.LargeCertificates.SharedPrimes

/-! 全量有限证书：外部生成数据，内核检查覆盖及各项条件。 -/
@[expose] public section
namespace GeneralizedGoldbach.LargeCertificates.CSV37.B0000
open FullCertificate
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
def part0000 : CertificateTree NatFiniteRow := .empty
theorem part0000_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 37 100280245065) 1 1 part0000 := by
  change part0000.checkRange (checkFiniteEntry sharedPrimes 37 100280245065) 1 1 = true
  decide +kernel

def data : CertificateTree NatFiniteRow := part0000
theorem valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 37 100280245065) 1 1 data := by
  exact part0000_valid

end GeneralizedGoldbach.LargeCertificates.CSV37.B0000
