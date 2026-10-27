module

public import GeneralizedGoldbach.LargeCertificates.Even23.B0000
public import GeneralizedGoldbach.LargeCertificates.Even23.B0001

/-! 全量有限证书：外部生成数据，内核检查覆盖及各项条件。 -/
@[expose] public section
namespace GeneralizedGoldbach.LargeCertificates.Even23
open FullCertificate
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
def join0000 : CertificateTree (List FactoredPoint) := .node B0000.data [] B0001.data
theorem join0000_valid : CertificateTree.RangeCertified (checkEvenEntry sharedPrimes 23 22 11132 720997376 3 [2,3,11]) 0 1012 join0000 := by
  exact CertificateTree.range_certified_node (checkEvenEntry sharedPrimes 23 22 11132 720997376 3 [2,3,11]) 0 1012
    B0000.data B0001.data [] (by decide +kernel) B0000.valid
    (by decide +kernel) B0001.valid

def data : CertificateTree (List FactoredPoint) := join0000
theorem valid : CertificateTree.RangeCertified (checkEvenEntry sharedPrimes 23 22 11132 720997376 3 [2,3,11]) 0 1012 data := by
  exact join0000_valid

end GeneralizedGoldbach.LargeCertificates.Even23
