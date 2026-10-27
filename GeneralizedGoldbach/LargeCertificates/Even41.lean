module

public import GeneralizedGoldbach.LargeCertificates.Even41.B0000
public import GeneralizedGoldbach.LargeCertificates.Even41.B0001
public import GeneralizedGoldbach.LargeCertificates.Even41.B0002
public import GeneralizedGoldbach.LargeCertificates.Even41.B0003
public import GeneralizedGoldbach.LargeCertificates.Even41.B0004
public import GeneralizedGoldbach.LargeCertificates.Even41.B0005
public import GeneralizedGoldbach.LargeCertificates.Even41.B0006
public import GeneralizedGoldbach.LargeCertificates.Even41.B0007

/-! 全量有限证书：外部生成数据，内核检查覆盖及各项条件。 -/
@[expose] public section
namespace GeneralizedGoldbach.LargeCertificates.Even41
open FullCertificate
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
def join0000 : CertificateTree (List FactoredPoint) := .node B0000.data [] B0001.data
theorem join0000_valid : CertificateTree.RangeCertified (checkEvenEntry sharedPrimes 41 10 16400 3442688000 3 [2,3,5]) 0 820 join0000 := by
  exact CertificateTree.range_certified_node (checkEvenEntry sharedPrimes 41 10 16400 3442688000 3 [2,3,5]) 0 820
    B0000.data B0001.data [] (by decide +kernel) B0000.valid
    (by decide +kernel) B0001.valid

def join0001 : CertificateTree (List FactoredPoint) := .node B0002.data [] B0003.data
theorem join0001_valid : CertificateTree.RangeCertified (checkEvenEntry sharedPrimes 41 10 16400 3442688000 3 [2,3,5]) 821 1640 join0001 := by
  exact CertificateTree.range_certified_node (checkEvenEntry sharedPrimes 41 10 16400 3442688000 3 [2,3,5]) 821 1640
    B0002.data B0003.data [] (by decide +kernel) B0002.valid
    (by decide +kernel) B0003.valid

def join0002 : CertificateTree (List FactoredPoint) := .node join0000 [] join0001
theorem join0002_valid : CertificateTree.RangeCertified (checkEvenEntry sharedPrimes 41 10 16400 3442688000 3 [2,3,5]) 0 1640 join0002 := by
  exact CertificateTree.range_certified_node (checkEvenEntry sharedPrimes 41 10 16400 3442688000 3 [2,3,5]) 0 1640
    join0000 join0001 [] (by decide +kernel) join0000_valid
    (by decide +kernel) join0001_valid

def join0003 : CertificateTree (List FactoredPoint) := .node B0004.data [] B0005.data
theorem join0003_valid : CertificateTree.RangeCertified (checkEvenEntry sharedPrimes 41 10 16400 3442688000 3 [2,3,5]) 1641 2460 join0003 := by
  exact CertificateTree.range_certified_node (checkEvenEntry sharedPrimes 41 10 16400 3442688000 3 [2,3,5]) 1641 2460
    B0004.data B0005.data [] (by decide +kernel) B0004.valid
    (by decide +kernel) B0005.valid

def join0004 : CertificateTree (List FactoredPoint) := .node B0006.data [] B0007.data
theorem join0004_valid : CertificateTree.RangeCertified (checkEvenEntry sharedPrimes 41 10 16400 3442688000 3 [2,3,5]) 2461 3280 join0004 := by
  exact CertificateTree.range_certified_node (checkEvenEntry sharedPrimes 41 10 16400 3442688000 3 [2,3,5]) 2461 3280
    B0006.data B0007.data [] (by decide +kernel) B0006.valid
    (by decide +kernel) B0007.valid

def join0005 : CertificateTree (List FactoredPoint) := .node join0003 [] join0004
theorem join0005_valid : CertificateTree.RangeCertified (checkEvenEntry sharedPrimes 41 10 16400 3442688000 3 [2,3,5]) 1641 3280 join0005 := by
  exact CertificateTree.range_certified_node (checkEvenEntry sharedPrimes 41 10 16400 3442688000 3 [2,3,5]) 1641 3280
    join0003 join0004 [] (by decide +kernel) join0003_valid
    (by decide +kernel) join0004_valid

def join0006 : CertificateTree (List FactoredPoint) := .node join0002 [] join0005
theorem join0006_valid : CertificateTree.RangeCertified (checkEvenEntry sharedPrimes 41 10 16400 3442688000 3 [2,3,5]) 0 3280 join0006 := by
  exact CertificateTree.range_certified_node (checkEvenEntry sharedPrimes 41 10 16400 3442688000 3 [2,3,5]) 0 3280
    join0002 join0005 [] (by decide +kernel) join0002_valid
    (by decide +kernel) join0005_valid

def data : CertificateTree (List FactoredPoint) := join0006
theorem valid : CertificateTree.RangeCertified (checkEvenEntry sharedPrimes 41 10 16400 3442688000 3 [2,3,5]) 0 3280 data := by
  exact join0006_valid

end GeneralizedGoldbach.LargeCertificates.Even41
