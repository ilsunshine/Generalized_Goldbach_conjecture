module

public import GeneralizedGoldbach.LargeCertificates.Odd53.B0000
public import GeneralizedGoldbach.LargeCertificates.Odd53.B0001

/-! 全量有限证书：外部生成数据，内核检查覆盖及各项条件。 -/
@[expose] public section
namespace GeneralizedGoldbach.LargeCertificates.Odd53
open FullCertificate
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
def join0000 : CertificateTree FactoredPoint := .node B0000.data (4213,[11,383]) B0001.data
theorem join0000_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 0 5618 join0000 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 0 5618
    B0000.data B0001.data (4213,[11,383]) (by decide +kernel) B0000.valid
    (by decide +kernel) B0001.valid

def data : CertificateTree FactoredPoint := join0000
theorem valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 0 5618 data := by
  exact join0000_valid

end GeneralizedGoldbach.LargeCertificates.Odd53
