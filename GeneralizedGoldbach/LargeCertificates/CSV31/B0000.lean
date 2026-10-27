module

public import GeneralizedGoldbach.FullCertificateKernel
public import GeneralizedGoldbach.LargeCertificates.SharedPrimes

/-! 全量有限证书：外部生成数据，内核检查覆盖及各项条件。 -/
@[expose] public section
namespace GeneralizedGoldbach.LargeCertificates.CSV31.B0000
open FullCertificate
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
def part0000 : CertificateTree NatFiniteRow := (.node .empty ((2,[2],[43,167,450473]),(1,[],[2,1617423307]),(3,[3],[2,2,3,12373,21787])) .empty)
theorem part0000_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 31 3234846615) 1 2 part0000 := by
  change part0000.checkRange (checkFiniteEntry sharedPrimes 31 3234846615) 1 2 = true
  decide +kernel

def data : CertificateTree NatFiniteRow := part0000
theorem valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 31 3234846615) 1 2 data := by
  exact part0000_valid

end GeneralizedGoldbach.LargeCertificates.CSV31.B0000
