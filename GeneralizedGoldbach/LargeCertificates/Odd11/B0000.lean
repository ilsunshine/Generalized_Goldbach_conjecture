module

public import GeneralizedGoldbach.FullCertificateKernel
public import GeneralizedGoldbach.LargeCertificates.SharedPrimes

/-! 全量有限证书：外部生成数据，内核检查覆盖及各项条件。 -/
@[expose] public section
namespace GeneralizedGoldbach.LargeCertificates.Odd11.B0000
open FullCertificate
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
def part0000 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (0,[]) .empty) (0,[]) (.node .empty (122,[2,61]) .empty)) (1,[]) (.node (.node .empty (244,[2,2,61]) .empty) (2,[2]) (.node .empty (3,[3]) .empty))) (366,[2,3,61]) (.node (.node (.node .empty (367,[367]) .empty) (4,[2,2]) (.node .empty (368,[2,2,2,2,23]) .empty)) (5,[5]) (.node (.node .empty (6,[2,3]) .empty) (369,[3,3,41]) (.node .empty (7,[7]) .empty)))) (128,[2,2,2,2,2,2,2]) (.node (.node (.node (.node .empty (613,[613]) .empty) (8,[2,2,2]) (.node .empty (9,[3,3]) .empty)) (372,[2,2,3,31]) (.node (.node .empty (131,[131]) .empty) (10,[2,5]) (.node .empty (0,[]) .empty))) (0,[]) (.node (.node (.node .empty (12,[2,2,3]) .empty) (133,[7,19]) (.node .empty (13,[13]) .empty)) (255,[3,5,17]) (.node (.node .empty (14,[2,7]) .empty) (256,[2,2,2,2,2,2,2,2]) .empty)))) (15,[3,5]) (.node (.node (.node (.node (.node .empty (378,[2,3,3,3,7]) .empty) (137,[137]) (.node .empty (16,[2,2,2,2]) .empty)) (17,[17]) (.node (.node .empty (138,[2,3,23]) .empty) (18,[2,3,3]) (.node .empty (381,[3,127]) .empty))) (19,[19]) (.node (.node (.node .empty (261,[3,3,29]) .empty) (262,[2,131]) (.node .empty (20,[2,2,5]) .empty)) (142,[2,71]) (.node (.node .empty (21,[3,7]) .empty) (0,[]) .empty))) (0,[]) (.node (.node (.node (.node .empty (23,[23]) .empty) (507,[3,13,13]) (.node .empty (24,[2,2,2,3]) .empty)) (266,[2,7,19]) (.node (.node .empty (146,[2,73]) .empty) (25,[5,5]) (.node .empty (26,[2,13]) .empty))) (147,[3,7,7]) (.node (.node (.node .empty (27,[3,3,3]) .empty) (390,[2,3,5,13]) (.node .empty (28,[2,2,7]) .empty)) (391,[17,23]) (.node (.node .empty (29,[29]) .empty) (513,[3,3,3,19]) .empty)))))
theorem part0000_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 11 10 [2,5]) 0 60 part0000 := by
  change part0000.checkRange (checkOddEntry sharedPrimes 11 10 [2,5]) 0 60 = true
  decide +kernel

def part0001 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (393,[3,131]) .empty) (31,[31]) (.node .empty (636,[2,2,3,53]) .empty)) (274,[2,137]) (.node (.node .empty (32,[2,2,2,2,2]) .empty) (0,[]) (.node .empty (0,[]) .empty))) (34,[2,17]) (.node (.node (.node .empty (276,[2,2,3,23]) .empty) (35,[5,7]) (.node .empty (156,[2,2,3,13]) .empty)) (36,[2,2,3,3]) (.node (.node .empty (762,[2,3,127]) .empty) (37,[37]) (.node .empty (279,[3,3,31]) .empty)))) (38,[2,19]) (.node (.node (.node (.node .empty (159,[3,53]) .empty) (281,[281]) (.node .empty (39,[3,13]) .empty)) (524,[2,2,131]) (.node (.node .empty (40,[2,2,2,5]) .empty) (41,[41]) (.node .empty (525,[3,5,5,7]) .empty))) (163,[163]) (.node (.node (.node .empty (42,[2,3,7]) .empty) (43,[43]) (.node .empty (285,[3,5,19]) .empty)) (0,[]) (.node (.node .empty (0,[]) .empty) (45,[3,3,5]) .empty)))) (287,[7,41]) (.node (.node (.node (.node (.node .empty (46,[2,23]) .empty) (893,[19,47]) (.node .empty (47,[47]) .empty)) (168,[2,2,2,3,7]) (.node (.node .empty (48,[2,2,2,2,3]) .empty) (411,[3,137]) (.node .empty (49,[7,7]) .empty))) (291,[3,97]) (.node (.node (.node .empty (292,[2,2,73]) .empty) (50,[2,5,5]) (.node .empty (172,[2,2,43]) .empty)) (51,[3,17]) (.node (.node .empty (52,[2,2,13]) .empty) (294,[2,3,7,7]) .empty))) (53,[53]) (.node (.node (.node (.node .empty (174,[2,3,29]) .empty) (54,[2,3,3,3]) (.node .empty (417,[3,139]) .empty)) (0,[]) (.node (.node .empty (0,[]) .empty) (56,[2,2,2,7]) (.node .empty (177,[3,59]) .empty))) (178,[2,89]) (.node (.node (.node .empty (57,[3,19]) .empty) (58,[2,29]) (.node .empty (1026,[2,3,3,3,19]) .empty)) (59,[59]) (.node (.node .empty (301,[7,43]) .empty) (60,[2,2,3,5]) .empty)))))
theorem part0001_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 11 10 [2,5]) 61 121 part0001 := by
  change part0001.checkRange (checkOddEntry sharedPrimes 11 10 [2,5]) 61 121 = true
  decide +kernel

def part0002 : CertificateTree FactoredPoint := .node part0000 (30,[2,3,5]) part0001
theorem part0002_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 11 10 [2,5]) 0 121 part0002 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 11 10 [2,5]) 0 121
    part0000 part0001 (30,[2,3,5]) (by decide +kernel) part0000_valid
    (by decide +kernel) part0001_valid

def part0003 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (61,[61]) .empty) (182,[2,7,13]) (.node .empty (62,[2,31]) .empty)) (183,[3,61]) (.node (.node .empty (184,[2,2,2,23]) .empty) (63,[3,3,7]) (.node .empty (185,[5,37]) .empty))) (64,[2,2,2,2,2,2]) (.node (.node (.node .empty (65,[5,13]) .empty) (186,[2,3,31]) (.node .empty (0,[]) .empty)) (0,[]) (.node (.node .empty (67,[67]) .empty) (309,[3,103]) (.node .empty (68,[2,2,17]) .empty)))) (189,[3,3,3,7]) (.node (.node (.node (.node .empty (190,[2,5,19]) .empty) (69,[3,23]) (.node .empty (70,[2,5,7]) .empty)) (312,[2,2,2,3,13]) (.node (.node .empty (71,[71]) .empty) (434,[2,7,31]) (.node .empty (72,[2,2,2,3,3]) .empty))) (435,[3,5,29]) (.node (.node (.node .empty (73,[73]) .empty) (315,[3,3,5,7]) (.node .empty (74,[2,37]) .empty)) (195,[3,5,13]) (.node (.node .empty (75,[3,5,5]) .empty) (438,[2,3,73]) .empty)))) (76,[2,2,19]) (.node (.node (.node (.node (.node .empty (318,[2,3,53]) .empty) (0,[]) (.node .empty (0,[]) .empty)) (199,[199]) (.node (.node .empty (78,[2,3,13]) .empty) (79,[79]) (.node .empty (200,[2,2,2,5,5]) .empty))) (443,[443]) (.node (.node (.node .empty (80,[2,2,2,2,5]) .empty) (81,[3,3,3,3]) (.node .empty (323,[17,19]) .empty)) (82,[2,41]) (.node (.node .empty (203,[7,29]) .empty) (83,[83]) .empty))) (204,[2,2,3,17]) (.node (.node (.node (.node .empty (205,[5,41]) .empty) (84,[2,2,3,7]) (.node .empty (85,[5,17]) .empty)) (327,[3,109]) (.node (.node .empty (86,[2,43]) .empty) (207,[3,3,23]) (.node .empty (208,[2,2,2,2,13]) .empty))) (87,[3,29]) (.node (.node (.node .empty (0,[]) .empty) (0,[]) (.node .empty (89,[89]) .empty)) (210,[2,3,5,7]) (.node (.node .empty (90,[2,3,3,5]) .empty) (453,[3,151]) .empty)))))
theorem part0003_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 11 10 [2,5]) 122 182 part0003 := by
  change part0003.checkRange (checkOddEntry sharedPrimes 11 10 [2,5]) 122 182 = true
  decide +kernel

def part0004 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (91,[7,13]) .empty) (92,[2,2,23]) (.node .empty (213,[3,71]) .empty)) (214,[2,107]) (.node (.node .empty (93,[3,31]) .empty) (94,[2,47]) (.node .empty (336,[2,2,2,2,3,7]) .empty))) (95,[5,19]) (.node (.node (.node .empty (579,[3,193]) .empty) (96,[2,2,2,2,2,3]) (.node .empty (217,[7,31]) .empty)) (97,[97]) (.node (.node .empty (339,[3,113]) .empty) (98,[2,7,7]) .empty))) (219,[3,73]) (.node (.node (.node (.node .empty (0,[]) .empty) (0,[]) (.node .empty (463,[463]) .empty)) (100,[2,2,5,5]) (.node (.node .empty (101,[101]) .empty) (222,[2,3,37]) (.node .empty (223,[223]) .empty))) (102,[2,3,17]) (.node (.node (.node .empty (103,[103]) .empty) (345,[3,5,23]) (.node .empty (104,[2,2,2,13]) .empty)) (588,[2,2,3,7,7]) (.node (.node .empty (226,[2,113]) .empty) (105,[3,5,7]) .empty)))) (106,[2,53]) (.node (.node (.node (.node (.node .empty (348,[2,2,3,29]) .empty) (107,[107]) (.node .empty (228,[2,2,3,19]) .empty)) (108,[2,2,3,3,3]) (.node (.node .empty (471,[3,157]) .empty) (109,[109]) (.node .empty (351,[3,3,3,13]) .empty))) (0,[]) (.node (.node (.node .empty (0,[]) .empty) (232,[2,2,2,29]) (.node .empty (111,[3,37]) .empty)) (112,[2,2,2,2,7]) (.node (.node .empty (354,[2,3,59]) .empty) (113,[113]) .empty))) (234,[2,3,3,13]) (.node (.node (.node (.node .empty (235,[5,47]) .empty) (114,[2,3,19]) (.node .empty (115,[5,23]) .empty)) (962,[2,13,37]) (.node (.node .empty (116,[2,2,29]) .empty) (237,[3,79]) (.node .empty (359,[359]) .empty))) (117,[3,3,13]) (.node (.node (.node .empty (118,[2,59]) .empty) (481,[13,37]) (.node .empty (240,[2,2,2,2,3,5]) .empty)) (119,[7,17]) (.node (.node .empty (120,[2,2,2,3,5]) .empty) (846,[2,3,3,47]) .empty)))))
theorem part0004_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 11 10 [2,5]) 183 242 part0004 := by
  change part0004.checkRange (checkOddEntry sharedPrimes 11 10 [2,5]) 183 242 = true
  decide +kernel

def part0005 : CertificateTree FactoredPoint := .node part0003 (212,[2,2,53]) part0004
theorem part0005_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 11 10 [2,5]) 122 242 part0005 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 11 10 [2,5]) 122 242
    part0003 part0004 (212,[2,2,53]) (by decide +kernel) part0003_valid
    (by decide +kernel) part0004_valid

def part0006 : CertificateTree FactoredPoint := .node part0002 (423,[3,3,47]) part0005
theorem part0006_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 11 10 [2,5]) 0 242 part0006 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 11 10 [2,5]) 0 242
    part0002 part0005 (423,[3,3,47]) (by decide +kernel) part0002_valid
    (by decide +kernel) part0005_valid

def data : CertificateTree FactoredPoint := part0006
theorem valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 11 10 [2,5]) 0 242 data := by
  exact part0006_valid

end GeneralizedGoldbach.LargeCertificates.Odd11.B0000
