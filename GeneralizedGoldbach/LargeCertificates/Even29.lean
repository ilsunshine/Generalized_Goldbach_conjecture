module

public import GeneralizedGoldbach.LargeCertificates.Even29.B0000
public import GeneralizedGoldbach.LargeCertificates.Even29.B0001
public import GeneralizedGoldbach.LargeCertificates.Even29.B0002
public import GeneralizedGoldbach.LargeCertificates.Even29.B0003

/-! 全量有限证书：外部生成数据，内核检查覆盖及各项条件。 -/
@[expose] public section
namespace GeneralizedGoldbach.LargeCertificates.Even29
open FullCertificate
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
def join0000 : CertificateTree (List FactoredPoint) := .node B0000.data [] B0001.data
theorem join0000_valid : CertificateTree.RangeCertified (checkEvenEntry sharedPrimes 29 14 11368 1181544448 3 [2,3,7]) 0 812 join0000 := by
  exact CertificateTree.range_certified_node (checkEvenEntry sharedPrimes 29 14 11368 1181544448 3 [2,3,7]) 0 812
    B0000.data B0001.data [] (by decide +kernel) B0000.valid
    (by decide +kernel) B0001.valid

def join0001 : CertificateTree (List FactoredPoint) := .node B0002.data [] B0003.data
theorem join0001_valid : CertificateTree.RangeCertified (checkEvenEntry sharedPrimes 29 14 11368 1181544448 3 [2,3,7]) 813 1624 join0001 := by
  exact CertificateTree.range_certified_node (checkEvenEntry sharedPrimes 29 14 11368 1181544448 3 [2,3,7]) 813 1624
    B0002.data B0003.data [] (by decide +kernel) B0002.valid
    (by decide +kernel) B0003.valid

def join0002 : CertificateTree (List FactoredPoint) := .node join0000 [] join0001
theorem join0002_valid : CertificateTree.RangeCertified (checkEvenEntry sharedPrimes 29 14 11368 1181544448 3 [2,3,7]) 0 1624 join0002 := by
  exact CertificateTree.range_certified_node (checkEvenEntry sharedPrimes 29 14 11368 1181544448 3 [2,3,7]) 0 1624
    join0000 join0001 [] (by decide +kernel) join0000_valid
    (by decide +kernel) join0001_valid

def data : CertificateTree (List FactoredPoint) := join0002
theorem valid : CertificateTree.RangeCertified (checkEvenEntry sharedPrimes 29 14 11368 1181544448 3 [2,3,7]) 0 1624 data := by
  exact join0002_valid

end GeneralizedGoldbach.LargeCertificates.Even29
