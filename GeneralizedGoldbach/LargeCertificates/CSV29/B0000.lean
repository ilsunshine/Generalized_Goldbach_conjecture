module

public import GeneralizedGoldbach.FullCertificateKernel
public import GeneralizedGoldbach.LargeCertificates.SharedPrimes

/-! 全量有限证书：外部生成数据，内核检查覆盖及各项条件。 -/
@[expose] public section
namespace GeneralizedGoldbach.LargeCertificates.CSV29.B0000
open FullCertificate
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
def part0000 : CertificateTree NatFiniteRow := (.node (.node (.node (.node .empty ((2,[2],[111546433]),(6,[2,3],[3,43,433,1997]),(3,[3],[2,2,2,2,2,2,3,3,31,6247])) .empty) ((2,[2],[2,2,4801,11617]),(6,[2,3],[2,2,2,2,2,2,2,3,3,31,6247]),(3,[3],[3,74364289])) .empty) ((2,[2],[139,229,10513]),(1,[],[2,2,2,41829913]),(3,[3],[2,3,4801,11617])) (.node (.node .empty ((3,[3],[3,3,3571,13883]),(1,[],[41,10882579]),(2,[2],[2,37,131,46027])) .empty) ((2,[2],[557732173]),(1,[],[2,47,977,6073]),(5,[5],[2,5,4801,11617])) .empty)) ((5,[5],[5,1181,113341]),(6,[2,3],[2,2,3,4801,11617]),(2,[2],[2,2,2,2,41829913])) (.node (.node (.node .empty ((3,[3],[2,3,3,3,14459723]),(1,[],[2,2,53,569,6473]),(2,[2],[13339,58537])) .empty) ((2,[2],[2,41,10882579]),(6,[2,3],[2,3,3,3571,13883]),(3,[3],[3,297457159])) .empty) ((2,[2],[151,293,22691]),(1,[],[2,501958957]),(5,[5],[2,5,197,509603])) (.node .empty ((9,[3,3],[3,53,7015499]),(1,[],[2521,442469]),(2,[2],[2,2,47,977,6073])) .empty)))
theorem part0000_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 29 111546435) 1 11 part0000 := by
  change part0000.checkRange (checkFiniteEntry sharedPrimes 29 111546435) 1 11 = true
  decide +kernel

def data : CertificateTree NatFiniteRow := part0000
theorem valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 29 111546435) 1 11 data := by
  exact part0000_valid

end GeneralizedGoldbach.LargeCertificates.CSV29.B0000
