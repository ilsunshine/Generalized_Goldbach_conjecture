module

public import GeneralizedGoldbach.LargeCertificates.CSV13.B0000
public import GeneralizedGoldbach.LargeCertificates.CSV13.B0001
public import GeneralizedGoldbach.LargeCertificates.CSV13.B0002
public import GeneralizedGoldbach.LargeCertificates.CSV13.B0003
public import GeneralizedGoldbach.LargeCertificates.CSV13.B0004
public import GeneralizedGoldbach.LargeCertificates.CSV13.B0005
public import GeneralizedGoldbach.LargeCertificates.CSV13.B0006
public import GeneralizedGoldbach.LargeCertificates.CSV13.B0007

/-! 全量有限证书：外部生成数据，内核检查覆盖及各项条件。 -/
@[expose] public section
namespace GeneralizedGoldbach.LargeCertificates.CSV13
open FullCertificate
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
def join0000 : CertificateTree NatFiniteRow := .node B0000.data ((2,[2],[2,2,23,26339]),(6,[2,3],[2,2,2,2,3,19,2657]),(3,[3],[3,3,13,139,149])) B0001.data
theorem join0000_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 13 1155) 87 4110 join0000 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 13 1155) 87 4110
    B0000.data B0001.data ((2,[2],[2,2,23,26339]),(6,[2,3],[2,2,2,2,3,19,2657]),(3,[3],[3,3,13,139,149])) (by decide +kernel) B0000.valid
    (by decide +kernel) B0001.valid

def join0001 : CertificateTree NatFiniteRow := .node B0002.data ((2,[2],[2,2,13,135979]),(1,[],[101,70009]),(5,[5],[5,1414181])) B0003.data
theorem join0001_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 13 1155) 4111 8134 join0001 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 13 1155) 4111 8134
    B0002.data B0003.data ((2,[2],[2,2,13,135979]),(1,[],[101,70009]),(5,[5],[5,1414181])) (by decide +kernel) B0002.valid
    (by decide +kernel) B0003.valid

def join0002 : CertificateTree NatFiniteRow := .node join0000 ((4,[2,2],[2,17,139619]),(1,[],[163,29123]),(2,[2],[2,2,2,593381])) join0001
theorem join0002_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 13 1155) 87 8134 join0002 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 13 1155) 87 8134
    join0000 join0001 ((4,[2,2],[2,17,139619]),(1,[],[163,29123]),(2,[2],[2,2,2,593381])) (by decide +kernel) join0000_valid
    (by decide +kernel) join0001_valid

def join0003 : CertificateTree NatFiniteRow := .node B0004.data ((3,[3],[3,17,229777]),(1,[],[13,13,69341]),(2,[2],[2,2,2929657])) B0005.data
theorem join0003_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 13 1155) 8135 12158 join0003 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 13 1155) 8135 12158
    B0004.data B0005.data ((3,[3],[3,17,229777]),(1,[],[13,13,69341]),(2,[2],[2,2,2929657])) (by decide +kernel) B0004.valid
    (by decide +kernel) B0005.valid

def join0004 : CertificateTree NatFiniteRow := .node B0006.data ((0,[],[]),(0,[],[]),(0,[],[])) B0007.data
theorem join0004_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 13 1155) 12159 16182 join0004 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 13 1155) 12159 16182
    B0006.data B0007.data ((0,[],[]),(0,[],[]),(0,[],[])) (by decide +kernel) B0006.valid
    (by decide +kernel) B0007.valid

def join0005 : CertificateTree NatFiniteRow := .node join0003 ((2,[2],[2,2,2,647,2713]),(1,[],[23,610543]),(3,[3],[3,79,193,307])) join0004
theorem join0005_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 13 1155) 8135 16182 join0005 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 13 1155) 8135 16182
    join0003 join0004 ((2,[2],[2,2,2,647,2713]),(1,[],[23,610543]),(3,[3],[3,79,193,307])) (by decide +kernel) join0003_valid
    (by decide +kernel) join0004_valid

def join0006 : CertificateTree NatFiniteRow := .node join0002 ((5,[5],[5,173,10861]),(1,[],[43,43,5081]),(2,[2],[2,2,2,2,587173])) join0005
theorem join0006_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 13 1155) 87 16182 join0006 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 13 1155) 87 16182
    join0002 join0005 ((5,[5],[5,173,10861]),(1,[],[43,43,5081]),(2,[2],[2,2,2,2,587173])) (by decide +kernel) join0002_valid
    (by decide +kernel) join0005_valid

def data : CertificateTree NatFiniteRow := join0006
theorem valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 13 1155) 87 16182 data := by
  exact join0006_valid

end GeneralizedGoldbach.LargeCertificates.CSV13
