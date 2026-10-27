module

public import GeneralizedGoldbach.FullCertificateKernel
public import GeneralizedGoldbach.LargeCertificates.SharedPrimes

/-! 全量有限证书：外部生成数据，内核检查覆盖及各项条件。 -/
@[expose] public section
namespace GeneralizedGoldbach.LargeCertificates.Odd13.B0000
open FullCertificate
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
def part0000 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (0,[]) .empty) (0,[]) .empty) (339,[3,113]) (.node (.node .empty (1,[]) .empty) (171,[3,3,19]) .empty)) (2,[2]) (.node (.node (.node .empty (172,[2,2,43]) .empty) (3,[3]) .empty) (173,[173]) (.node .empty (4,[2,2]) .empty))) (5,[5]) (.node (.node (.node (.node .empty (512,[2,2,2,2,2,2,2,2,2]) .empty) (344,[2,2,2,43]) .empty) (6,[2,3]) (.node (.node .empty (7,[7]) .empty) (345,[3,5,23]) .empty)) (177,[3,59]) (.node (.node (.node .empty (8,[2,2,2]) .empty) (178,[2,89]) .empty) (9,[3,3]) (.node .empty (10,[2,5]) .empty)))) (517,[11,47]) (.node (.node (.node (.node (.node .empty (11,[11]) .empty) (518,[2,7,37]) .empty) (181,[181]) (.node (.node .empty (12,[2,2,3]) .empty) (0,[]) .empty)) (0,[]) (.node (.node (.node .empty (14,[2,7]) .empty) (690,[2,3,5,23]) .empty) (15,[3,5]) (.node .empty (860,[2,2,5,43]) .empty))) (354,[2,3,59]) (.node (.node (.node (.node .empty (16,[2,2,2,2]) .empty) (17,[17]) .empty) (355,[5,71]) (.node .empty (356,[2,2,89]) .empty)) (18,[2,3,3]) (.node (.node (.node .empty (19,[19]) .empty) (357,[3,7,17]) .empty) (20,[2,2,5]) (.node .empty (527,[17,31]) .empty)))))
theorem part0000_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 13 6 [2,3]) 0 42 part0000 := by
  change part0000.checkRange (checkOddEntry sharedPrimes 13 6 [2,3]) 0 42 = true
  decide +kernel

def part0001 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (190,[2,5,19]) .empty) (22,[2,11]) .empty) (1036,[2,2,7,37]) (.node (.node .empty (23,[23]) .empty) (192,[2,2,2,2,2,2,3]) .empty)) (193,[193]) (.node (.node (.node .empty (24,[2,2,2,3]) .empty) (25,[5,5]) .empty) (532,[2,2,7,19]) (.node .empty (0,[]) .empty))) (0,[]) (.node (.node (.node (.node .empty (196,[2,2,7,7]) .empty) (27,[3,3,3]) .empty) (28,[2,2,7]) (.node .empty (535,[5,107]) .empty)) (29,[29]) (.node (.node (.node .empty (705,[3,5,47]) .empty) (30,[2,3,5]) .empty) (875,[5,5,5,7]) (.node .empty (31,[31]) .empty)))) (707,[7,101]) (.node (.node (.node (.node (.node .empty (201,[3,67]) .empty) (32,[2,2,2,2,2]) .empty) (33,[3,11]) (.node (.node .empty (371,[7,53]) .empty) (34,[2,17]) .empty)) (203,[7,29]) (.node (.node (.node .empty (204,[2,2,3,17]) .empty) (35,[5,7]) .empty) (543,[3,181]) (.node .empty (36,[2,2,3,3]) .empty))) (37,[37]) (.node (.node (.node (.node .empty (713,[23,31]) .empty) (38,[2,19]) .empty) (545,[5,109]) (.node .empty (0,[]) .empty)) (0,[]) (.node (.node (.node .empty (40,[2,2,2,5]) .empty) (209,[11,19]) .empty) (41,[41]) (.node .empty (210,[2,3,5,7]) .empty)))))
theorem part0001_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 13 6 [2,3]) 43 84 part0001 := by
  change part0001.checkRange (checkOddEntry sharedPrimes 13 6 [2,3]) 43 84 = true
  decide +kernel

def part0002 : CertificateTree FactoredPoint := .node part0000 (21,[3,7]) part0001
theorem part0002_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 13 6 [2,3]) 0 84 part0002 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 13 6 [2,3]) 0 84
    part0000 part0001 (21,[3,7]) (by decide +kernel) part0000_valid
    (by decide +kernel) part0001_valid

def part0003 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (380,[2,2,5,19]) .empty) (43,[43]) .empty) (550,[2,5,5,11]) (.node (.node .empty (44,[2,2,11]) .empty) (551,[19,29]) .empty)) (45,[3,3,5]) (.node (.node (.node .empty (721,[7,103]) .empty) (46,[2,23]) .empty) (215,[5,43]) (.node .empty (47,[47]) .empty))) (216,[2,2,2,3,3,3]) (.node (.node (.node (.node .empty (386,[2,193]) .empty) (48,[2,2,2,2,3]) .empty) (49,[7,7]) (.node (.node .empty (725,[5,5,29]) .empty) (50,[2,5,5]) .empty)) (895,[5,179]) (.node (.node (.node .empty (51,[3,17]) .empty) (220,[2,2,5,11]) .empty) (0,[]) (.node .empty (0,[]) .empty)))) (53,[53]) (.node (.node (.node (.node (.node .empty (391,[17,23]) .empty) (223,[223]) .empty) (54,[2,3,3,3]) (.node (.node .empty (224,[2,2,2,2,2,7]) .empty) (55,[5,11]) .empty)) (56,[2,2,2,7]) (.node (.node (.node .empty (901,[17,53]) .empty) (57,[3,19]) .empty) (395,[5,79]) (.node .empty (58,[2,29]) .empty))) (565,[5,113]) (.node (.node (.node (.node .empty (59,[59]) .empty) (735,[3,5,7,7]) .empty) (60,[2,2,3,5]) (.node .empty (905,[5,181]) .empty)) (61,[61]) (.node (.node (.node .empty (230,[2,5,23]) .empty) (62,[2,31]) .empty) (231,[3,7,11]) (.node .empty (63,[3,3,7]) .empty)))))
theorem part0003_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 13 6 [2,3]) 85 127 part0003 := by
  change part0003.checkRange (checkOddEntry sharedPrimes 13 6 [2,3]) 85 127 = true
  decide +kernel

def part0004 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (233,[233]) .empty) (64,[2,2,2,2,2,2]) .empty) (0,[]) (.node (.node .empty (0,[]) .empty) (66,[2,3,11]) .empty)) (235,[5,47]) (.node (.node (.node .empty (67,[67]) .empty) (574,[2,7,41]) .empty) (68,[2,2,17]) (.node .empty (406,[2,7,29]) .empty))) (69,[3,23]) (.node (.node (.node (.node .empty (238,[2,7,17]) .empty) (239,[239]) .empty) (70,[2,5,7]) (.node .empty (71,[71]) .empty)) (1254,[2,3,11,19]) (.node (.node (.node .empty (241,[241]) .empty) (72,[2,2,2,3,3]) .empty) (73,[73]) (.node .empty (580,[2,2,5,29]) .empty)))) (74,[2,37]) (.node (.node (.node (.node (.node .empty (243,[3,3,3,3,3]) .empty) (75,[3,5,5]) .empty) (413,[7,59]) (.node (.node .empty (76,[2,2,19]) .empty) (245,[5,7,7]) .empty)) (246,[2,3,41]) (.node (.node (.node .empty (77,[7,11]) .empty) (0,[]) .empty) (0,[]) (.node .empty (79,[79]) .empty))) (755,[5,151]) (.node (.node (.node (.node .empty (80,[2,2,2,2,5]) .empty) (418,[2,11,19]) .empty) (250,[2,5,5,5]) (.node .empty (81,[3,3,3,3]) .empty)) (82,[2,41]) (.node (.node (.node .empty (420,[2,2,3,5,7]) .empty) (83,[83]) .empty) (590,[2,5,59]) (.node .empty (84,[2,2,3,7]) .empty)))))
theorem part0004_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 13 6 [2,3]) 128 169 part0004 := by
  change part0004.checkRange (checkOddEntry sharedPrimes 13 6 [2,3]) 128 169 = true
  decide +kernel

def part0005 : CertificateTree FactoredPoint := .node part0003 (570,[2,3,5,19]) part0004
theorem part0005_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 13 6 [2,3]) 85 169 part0005 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 13 6 [2,3]) 85 169
    part0003 part0004 (570,[2,3,5,19]) (by decide +kernel) part0003_valid
    (by decide +kernel) part0004_valid

def part0006 : CertificateTree FactoredPoint := .node part0002 (42,[2,3,7]) part0005
theorem part0006_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 13 6 [2,3]) 0 169 part0006 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 13 6 [2,3]) 0 169
    part0002 part0005 (42,[2,3,7]) (by decide +kernel) part0002_valid
    (by decide +kernel) part0005_valid

def part0007 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (254,[2,127]) .empty) (85,[5,17]) .empty) (86,[2,43]) (.node (.node .empty (255,[3,5,17]) .empty) (87,[3,29]) .empty)) (256,[2,2,2,2,2,2,2,2]) (.node (.node (.node .empty (88,[2,2,2,11]) .empty) (1102,[2,19,29]) .empty) (89,[89]) (.node .empty (427,[7,61]) .empty))) (90,[2,3,3,5]) (.node (.node (.node (.node .empty (259,[7,37]) .empty) (0,[]) .empty) (0,[]) (.node (.node .empty (92,[2,2,23]) .empty) (430,[2,5,43]) .empty)) (93,[3,31]) (.node (.node (.node .empty (938,[2,7,67]) .empty) (94,[2,47]) .empty) (432,[2,2,2,2,3,3,3]) (.node .empty (264,[2,2,2,3,11]) .empty)))) (95,[5,19]) (.node (.node (.node (.node (.node .empty (603,[3,3,67]) .empty) (96,[2,2,2,2,2,3]) .empty) (97,[97]) (.node (.node .empty (266,[2,7,19]) .empty) (98,[2,7,7]) .empty)) (605,[5,11,11]) (.node (.node (.node .empty (99,[3,3,11]) .empty) (437,[19,23]) .empty) (100,[2,2,5,5]) (.node .empty (945,[3,3,3,5,7]) .empty))) (101,[101]) (.node (.node (.node (.node .empty (777,[3,7,37]) .empty) (102,[2,3,17]) .empty) (440,[2,2,2,5,11]) (.node .empty (103,[103]) .empty)) (610,[2,5,61]) (.node (.node (.node .empty (0,[]) .empty) (0,[]) .empty) (274,[2,137]) (.node .empty (105,[3,5,7]) .empty)))))
theorem part0007_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 13 6 [2,3]) 170 212 part0007 := by
  change part0007.checkRange (checkOddEntry sharedPrimes 13 6 [2,3]) 170 212 = true
  decide +kernel

def part0008 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (275,[5,5,11]) .empty) (107,[107]) .empty) (445,[5,89]) (.node (.node .empty (277,[277]) .empty) (108,[2,2,3,3,3]) .empty)) (109,[109]) (.node (.node (.node .empty (616,[2,2,2,7,11]) .empty) (279,[3,3,31]) .empty) (110,[2,5,11]) (.node .empty (111,[3,37]) .empty))) (280,[2,2,2,5,7]) (.node (.node (.node (.node .empty (112,[2,2,2,2,7]) .empty) (957,[3,11,29]) .empty) (113,[113]) (.node .empty (451,[11,41]) .empty)) (114,[2,3,19]) (.node (.node (.node .empty (790,[2,5,79]) .empty) (284,[2,2,71]) .empty) (115,[5,23]) (.node .empty (116,[2,2,29]) .empty)))) (285,[3,5,19]) (.node (.node (.node (.node (.node .empty (0,[]) .empty) (0,[]) .empty) (118,[2,59]) (.node (.node .empty (287,[7,41]) .empty) (457,[457]) .empty)) (119,[7,17]) (.node (.node (.node .empty (120,[2,2,2,3,5]) .empty) (627,[3,11,19]) .empty) (121,[11,11]) (.node .empty (290,[2,5,29]) .empty))) (122,[2,61]) (.node (.node (.node (.node .empty (460,[2,2,5,23]) .empty) (123,[3,41]) .empty) (630,[2,3,3,5,7]) (.node .empty (124,[2,2,31]) .empty)) (462,[2,3,7,11]) (.node (.node (.node .empty (125,[5,5,5]) .empty) (970,[2,5,97]) .empty) (126,[2,3,3,7]) (.node .empty (295,[5,59]) .empty)))))
theorem part0008_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 13 6 [2,3]) 213 254 part0008 := by
  change part0008.checkRange (checkOddEntry sharedPrimes 13 6 [2,3]) 213 254 = true
  decide +kernel

def part0009 : CertificateTree FactoredPoint := .node part0007 (106,[2,53]) part0008
theorem part0009_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 13 6 [2,3]) 170 254 part0009 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 13 6 [2,3]) 170 254
    part0007 part0008 (106,[2,53]) (by decide +kernel) part0007_valid
    (by decide +kernel) part0008_valid

def part0010 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (465,[3,5,31]) .empty) (297,[3,3,3,11]) .empty) (128,[2,2,2,2,2,2,2]) (.node (.node .empty (129,[3,43]) .empty) (1650,[2,3,5,5,11]) .empty)) (0,[]) (.node (.node (.node .empty (0,[]) .empty) (131,[131]) .empty) (469,[7,67]) (.node .empty (132,[2,2,3,11]) .empty))) (301,[7,43]) (.node (.node (.node (.node .empty (302,[2,151]) .empty) (133,[7,19]) .empty) (134,[2,67]) (.node .empty (979,[11,89]) .empty)) (135,[3,3,3,5]) (.node (.node (.node .empty (473,[11,43]) .empty) (136,[2,2,2,17]) .empty) (305,[5,61]) (.node .empty (137,[137]) .empty)))) (475,[5,5,19]) (.node (.node (.node (.node (.node .empty (138,[2,3,23]) .empty) (476,[2,2,7,17]) .empty) (139,[139]) (.node (.node .empty (308,[2,2,7,11]) .empty) (309,[3,103]) .empty)) (140,[2,2,5,7]) (.node (.node (.node .empty (141,[3,47]) .empty) (310,[2,5,31]) .empty) (142,[2,71]) (.node .empty (649,[11,59]) .empty))) (0,[]) (.node (.node (.node (.node .empty (0,[]) .empty) (313,[313]) .empty) (144,[2,2,2,2,3,3]) (.node .empty (314,[2,157]) .empty)) (145,[5,29]) (.node (.node (.node .empty (146,[2,73]) .empty) (315,[3,3,5,7]) .empty) (147,[3,7,7]) (.node .empty (485,[5,97]) .empty)))))
theorem part0010_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 13 6 [2,3]) 255 296 part0010 := by
  change part0010.checkRange (checkOddEntry sharedPrimes 13 6 [2,3]) 255 296 = true
  decide +kernel

def part0011 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (486,[2,3,3,3,3,3]) .empty) (149,[149]) .empty) (825,[3,5,5,11]) (.node (.node .empty (150,[2,3,5,5]) .empty) (319,[11,29]) .empty)) (151,[151]) (.node (.node (.node .empty (658,[2,7,47]) .empty) (152,[2,2,2,19]) .empty) (490,[2,5,7,7]) (.node .empty (153,[3,3,17]) .empty))) (322,[2,7,23]) (.node (.node (.node (.node .empty (492,[2,2,3,41]) .empty) (154,[2,7,11]) .empty) (662,[2,331]) (.node .empty (155,[5,31]) .empty)) (0,[]) (.node (.node (.node .empty (0,[]) .empty) (157,[157]) .empty) (495,[3,3,5,11]) (.node .empty (158,[2,79]) .empty)))) (1003,[17,59]) (.node (.node (.node (.node (.node .empty (159,[3,53]) .empty) (497,[7,71]) .empty) (160,[2,2,2,2,2,5]) (.node (.node .empty (329,[7,47]) .empty) (499,[499]) .empty)) (161,[7,23]) (.node (.node (.node .empty (331,[331]) .empty) (162,[2,3,3,3,3]) .empty) (163,[163]) (.node .empty (670,[2,5,67]) .empty))) (164,[2,2,41]) (.node (.node (.node (.node .empty (671,[11,61]) .empty) (334,[2,167]) .empty) (165,[3,5,11]) (.node .empty (166,[2,83]) .empty)) (335,[5,67]) (.node (.node (.node .empty (167,[167]) .empty) (505,[5,101]) .empty) (168,[2,2,2,3,7]) (.node .empty (506,[2,11,23]) .empty)))))
theorem part0011_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 13 6 [2,3]) 297 338 part0011 := by
  change part0011.checkRange (checkOddEntry sharedPrimes 13 6 [2,3]) 297 338 = true
  decide +kernel

def part0012 : CertificateTree FactoredPoint := .node part0010 (148,[2,2,37]) part0011
theorem part0012_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 13 6 [2,3]) 255 338 part0012 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 13 6 [2,3]) 255 338
    part0010 part0011 (148,[2,2,37]) (by decide +kernel) part0010_valid
    (by decide +kernel) part0011_valid

def part0013 : CertificateTree FactoredPoint := .node part0009 (127,[127]) part0012
theorem part0013_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 13 6 [2,3]) 170 338 part0013 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 13 6 [2,3]) 170 338
    part0009 part0012 (127,[127]) (by decide +kernel) part0009_valid
    (by decide +kernel) part0012_valid

def part0014 : CertificateTree FactoredPoint := .node part0006 (253,[11,23]) part0013
theorem part0014_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 13 6 [2,3]) 0 338 part0014 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 13 6 [2,3]) 0 338
    part0006 part0013 (253,[11,23]) (by decide +kernel) part0006_valid
    (by decide +kernel) part0013_valid

def data : CertificateTree FactoredPoint := part0014
theorem valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 13 6 [2,3]) 0 338 data := by
  exact part0014_valid

end GeneralizedGoldbach.LargeCertificates.Odd13.B0000
