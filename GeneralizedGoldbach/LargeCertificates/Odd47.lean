module

public import GeneralizedGoldbach.LargeCertificates.Odd47.B0000
public import GeneralizedGoldbach.LargeCertificates.Odd47.B0001

/-! 全量有限证书：外部生成数据，内核检查覆盖及各项条件。 -/
@[expose] public section
namespace GeneralizedGoldbach.LargeCertificates.Odd47
open FullCertificate
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
def join0000 : CertificateTree FactoredPoint := .node B0000.data (5522,[2,11,251]) B0001.data
theorem join0000_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 47 46 [2,23]) 0 4418 join0000 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 47 46 [2,23]) 0 4418
    B0000.data B0001.data (5522,[2,11,251]) (by decide +kernel) B0000.valid
    (by decide +kernel) B0001.valid

def data : CertificateTree FactoredPoint := join0000
theorem valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 47 46 [2,23]) 0 4418 data := by
  exact join0000_valid

end GeneralizedGoldbach.LargeCertificates.Odd47
