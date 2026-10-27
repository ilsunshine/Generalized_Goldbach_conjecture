module

public import GeneralizedGoldbach.FullCertificateKernel
public import GeneralizedGoldbach.LargeCertificates.SharedPrimes

/-! 全量有限证书：外部生成数据，内核检查覆盖及各项条件。 -/
@[expose] public section
namespace GeneralizedGoldbach.LargeCertificates.Odd19.B0000
open FullCertificate
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
def part0000 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (0,[]) .empty) (0,[]) .empty) (362,[2,181]) (.node (.node .empty (1,[]) .empty) (363,[3,11,11]) .empty)) (2,[2]) (.node (.node (.node .empty (1086,[2,3,181]) .empty) (3,[3]) .empty) (726,[2,3,11,11]) (.node (.node .empty (4,[2,2]) .empty) (5,[5]) .empty))) (1449,[3,3,7,23]) (.node (.node (.node (.node .empty (367,[367]) .empty) (6,[2,3]) .empty) (7,[7]) (.node (.node .empty (729,[3,3,3,3,3,3]) .empty) (369,[3,3,41]) .empty)) (8,[2,2,2]) (.node (.node (.node .empty (1453,[1453]) .empty) (9,[3,3]) .empty) (10,[2,5]) (.node .empty (371,[7,53]) .empty)))) (11,[11]) (.node (.node (.node (.node (.node .empty (1455,[3,5,97]) .empty) (373,[373]) .empty) (12,[2,2,3]) (.node (.node .empty (13,[13]) .empty) (374,[2,11,17]) .empty)) (14,[2,7]) (.node (.node (.node .empty (1458,[2,3,3,3,3,3,3]) .empty) (15,[3,5]) .empty) (737,[11,67]) (.node (.node .empty (738,[2,3,3,41]) .empty) (16,[2,2,2,2]) .empty))) (17,[17]) (.node (.node (.node (.node .empty (1100,[2,2,5,5,11]) .empty) (379,[379]) .empty) (18,[2,3,3]) (.node (.node .empty (0,[]) .empty) (0,[]) .empty)) (20,[2,2,5]) (.node (.node (.node .empty (742,[2,7,53]) .empty) (21,[3,7]) .empty) (1465,[5,293]) (.node .empty (22,[2,11]) .empty)))))
theorem part0000_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 19 6 [2,3]) 0 45 part0000 := by
  change part0000.checkRange (checkOddEntry sharedPrimes 19 6 [2,3]) 0 45 = true
  decide +kernel

def part0001 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (23,[23]) .empty) (384,[2,2,2,2,2,2,2,3]) .empty) (385,[5,7,11]) (.node (.node .empty (24,[2,2,2,3]) .empty) (25,[5,5]) .empty)) (1469,[13,113]) (.node (.node (.node .empty (26,[2,13]) .empty) (748,[2,2,11,17]) .empty) (388,[2,2,97]) (.node (.node .empty (27,[3,3,3]) .empty) (28,[2,2,7]) .empty))) (1111,[11,101]) (.node (.node (.node (.node .empty (29,[29]) .empty) (390,[2,3,5,13]) .empty) (30,[2,3,5]) (.node (.node .empty (391,[17,23]) .empty) (31,[31]) .empty)) (1475,[5,5,59]) (.node (.node (.node .empty (393,[3,131]) .empty) (32,[2,2,2,2,2]) .empty) (33,[3,11]) (.node .empty (755,[5,151]) .empty)))) (34,[2,17]) (.node (.node (.node (.node (.node .empty (395,[5,79]) .empty) (396,[2,2,3,3,11]) .empty) (35,[5,7]) (.node (.node .empty (397,[397]) .empty) (36,[2,2,3,3]) .empty)) (37,[37]) (.node (.node (.node .empty (759,[3,11,23]) .empty) (0,[]) .empty) (0,[]) (.node .empty (39,[3,13]) .empty))) (1122,[2,3,11,17]) (.node (.node (.node (.node .empty (40,[2,2,2,5]) .empty) (1484,[2,2,7,53]) .empty) (41,[41]) (.node (.node .empty (763,[7,109]) .empty) (42,[2,3,7]) .empty)) (403,[13,31]) (.node (.node (.node .empty (43,[43]) .empty) (765,[3,3,5,17]) .empty) (44,[2,2,11]) (.node .empty (1127,[7,7,23]) .empty)))))
theorem part0001_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 19 6 [2,3]) 46 90 part0001 := by
  change part0001.checkRange (checkOddEntry sharedPrimes 19 6 [2,3]) 46 90 = true
  decide +kernel

def part0002 : CertificateTree FactoredPoint := .node part0000 (1827,[3,3,7,29]) part0001
theorem part0002_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 19 6 [2,3]) 0 90 part0002 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 19 6 [2,3]) 0 90
    part0000 part0001 (1827,[3,3,7,29]) (by decide +kernel) part0000_valid
    (by decide +kernel) part0001_valid

def part0003 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (406,[2,7,29]) .empty) (46,[2,23]) .empty) (407,[11,37]) (.node (.node .empty (47,[47]) .empty) (1130,[2,5,113]) .empty)) (409,[409]) (.node (.node (.node .empty (48,[2,2,2,2,3]) .empty) (49,[7,7]) .empty) (410,[2,5,41]) (.node (.node .empty (50,[2,5,5]) .empty) (1133,[11,103]) .empty))) (51,[3,17]) (.node (.node (.node (.node .empty (3300,[2,2,3,5,5,11]) .empty) (52,[2,2,13]) .empty) (413,[7,59]) (.node (.node .empty (53,[53]) .empty) (775,[5,5,31]) .empty)) (776,[2,2,2,97]) (.node (.node (.node .empty (54,[2,3,3,3]) .empty) (416,[2,2,2,2,2,13]) .empty) (55,[5,11]) (.node .empty (56,[2,2,2,7]) .empty)))) (1139,[17,67]) (.node (.node (.node (.node (.node .empty (0,[]) .empty) (0,[]) .empty) (58,[2,29]) (.node (.node .empty (780,[2,2,3,5,13]) .empty) (59,[59]) .empty)) (420,[2,2,3,5,7]) (.node (.node (.node .empty (60,[2,2,3,5]) .empty) (782,[2,17,23]) .empty) (61,[61]) (.node .empty (1144,[2,2,2,11,13]) .empty))) (62,[2,31]) (.node (.node (.node (.node .empty (1145,[5,229]) .empty) (63,[3,3,7]) .empty) (785,[5,157]) (.node (.node .empty (786,[2,3,131]) .empty) (64,[2,2,2,2,2,2]) .empty)) (426,[2,3,71]) (.node (.node (.node .empty (65,[5,13]) .empty) (66,[2,3,11]) .empty) (427,[7,61]) (.node .empty (67,[67]) .empty)))))
theorem part0003_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 19 6 [2,3]) 91 135 part0003 := by
  change part0003.checkRange (checkOddEntry sharedPrimes 19 6 [2,3]) 91 135 = true
  decide +kernel

def part0004 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (68,[2,2,17]) .empty) (429,[3,11,13]) .empty) (69,[3,23]) (.node (.node .empty (430,[2,5,43]) .empty) (431,[431]) .empty)) (70,[2,5,7]) (.node (.node (.node .empty (71,[71]) .empty) (432,[2,2,2,2,3,3,3]) .empty) (433,[433]) (.node (.node .empty (72,[2,2,2,3,3]) .empty) (73,[73]) .empty))) (434,[2,7,31]) (.node (.node (.node (.node .empty (74,[2,37]) .empty) (435,[3,5,29]) .empty) (75,[3,5,5]) (.node (.node .empty (1519,[7,7,31]) .empty) (0,[]) .empty)) (0,[]) (.node (.node (.node .empty (438,[2,3,73]) .empty) (77,[7,11]) .empty) (78,[2,3,13]) (.node .empty (1883,[7,269]) .empty)))) (79,[79]) (.node (.node (.node (.node (.node .empty (440,[2,2,2,5,11]) .empty) (80,[2,2,2,2,5]) .empty) (2607,[3,11,79]) (.node (.node .empty (1164,[2,2,3,97]) .empty) (81,[3,3,3,3]) .empty)) (82,[2,41]) (.node (.node (.node .empty (1165,[5,233]) .empty) (83,[83]) .empty) (1166,[2,11,53]) (.node .empty (84,[2,2,3,7]) .empty))) (445,[5,89]) (.node (.node (.node (.node .empty (446,[2,223]) .empty) (85,[5,17]) .empty) (86,[2,43]) (.node (.node .empty (1169,[7,167]) .empty) (87,[3,29]) .empty)) (1170,[2,3,3,5,13]) (.node (.node (.node .empty (88,[2,2,2,11]) .empty) (2254,[2,7,7,23]) .empty) (89,[89]) (.node .empty (1533,[3,7,73]) .empty)))))
theorem part0004_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 19 6 [2,3]) 136 180 part0004 := by
  change part0004.checkRange (checkOddEntry sharedPrimes 19 6 [2,3]) 136 180 = true
  decide +kernel

def part0005 : CertificateTree FactoredPoint := .node part0003 (1150,[2,5,5,23]) part0004
theorem part0005_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 19 6 [2,3]) 91 180 part0005 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 19 6 [2,3]) 91 180
    part0003 part0004 (1150,[2,5,5,23]) (by decide +kernel) part0003_valid
    (by decide +kernel) part0004_valid

def part0006 : CertificateTree FactoredPoint := .node part0002 (45,[3,3,5]) part0005
theorem part0006_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 19 6 [2,3]) 0 180 part0006 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 19 6 [2,3]) 0 180
    part0002 part0005 (45,[3,3,5]) (by decide +kernel) part0002_valid
    (by decide +kernel) part0005_valid

def part0007 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (451,[11,41]) .empty) (452,[2,2,113]) .empty) (91,[7,13]) (.node (.node .empty (92,[2,2,23]) .empty) (814,[2,11,37]) .empty)) (93,[3,31]) (.node (.node (.node .empty (815,[5,163]) .empty) (94,[2,47]) .empty) (1177,[11,107]) (.node (.node .empty (0,[]) .empty) (0,[]) .empty))) (457,[457]) (.node (.node (.node (.node .empty (96,[2,2,2,2,2,3]) .empty) (97,[97]) .empty) (819,[3,3,7,13]) (.node (.node .empty (98,[2,7,7]) .empty) (820,[2,2,5,41]) .empty)) (99,[3,3,11]) (.node (.node (.node .empty (460,[2,2,5,23]) .empty) (100,[2,2,5,5]) .empty) (1183,[7,13,13]) (.node .empty (101,[101]) .empty)))) (462,[2,3,7,11]) (.node (.node (.node (.node (.node .empty (102,[2,3,17]) .empty) (1185,[3,5,79]) .empty) (103,[103]) (.node (.node .empty (825,[3,5,5,11]) .empty) (104,[2,2,2,13]) .empty)) (465,[3,5,31]) (.node (.node (.node .empty (466,[2,233]) .empty) (105,[3,5,7]) .empty) (106,[2,53]) (.node (.node .empty (1189,[29,41]) .empty) (107,[107]) .empty))) (1551,[3,11,47]) (.node (.node (.node (.node .empty (1191,[3,397]) .empty) (108,[2,2,3,3,3]) .empty) (109,[109]) (.node (.node .empty (470,[2,5,47]) .empty) (471,[3,157]) .empty)) (110,[2,5,11]) (.node (.node (.node .empty (111,[3,37]) .empty) (833,[7,7,17]) .empty) (112,[2,2,2,2,7]) (.node .empty (473,[11,43]) .empty)))))
theorem part0007_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 19 6 [2,3]) 181 226 part0007 := by
  change part0007.checkRange (checkOddEntry sharedPrimes 19 6 [2,3]) 181 226 = true
  decide +kernel

def part0008 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (835,[5,167]) .empty) (0,[]) .empty) (0,[]) (.node (.node .empty (837,[3,3,3,31]) .empty) (115,[5,23]) .empty)) (116,[2,2,29]) (.node (.node (.node .empty (1199,[11,109]) .empty) (117,[3,3,13]) .empty) (1561,[7,223]) (.node (.node .empty (118,[2,59]) .empty) (840,[2,2,2,3,5,7]) .empty))) (480,[2,2,2,2,2,3,5]) (.node (.node (.node (.node .empty (119,[7,17]) .empty) (120,[2,2,2,3,5]) .empty) (481,[13,37]) (.node (.node .empty (121,[11,11]) .empty) (1204,[2,2,7,43]) .empty)) (122,[2,61]) (.node (.node (.node .empty (483,[3,7,23]) .empty) (123,[3,41]) .empty) (845,[5,13,13]) (.node .empty (124,[2,2,31]) .empty)))) (485,[5,97]) (.node (.node (.node (.node (.node .empty (125,[5,5,5]) .empty) (486,[2,3,3,3,3,3]) .empty) (126,[2,3,3,7]) (.node (.node .empty (1209,[3,13,31]) .empty) (127,[127]) .empty)) (1210,[2,5,11,11]) (.node (.node (.node .empty (489,[3,163]) .empty) (128,[2,2,2,2,2,2,2]) .empty) (129,[3,43]) (.node .empty (490,[2,5,7,7]) .empty))) (491,[491]) (.node (.node (.node (.node .empty (130,[2,5,13]) .empty) (131,[131]) .empty) (1575,[3,3,5,5,7]) (.node (.node .empty (132,[2,2,3,11]) .empty) (493,[17,29]) .empty)) (0,[]) (.node (.node (.node .empty (0,[]) .empty) (134,[2,67]) .empty) (495,[3,3,5,11]) (.node .empty (135,[3,3,3,5]) .empty)))))
theorem part0008_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 19 6 [2,3]) 227 271 part0008 := by
  change part0008.checkRange (checkOddEntry sharedPrimes 19 6 [2,3]) 227 271 = true
  decide +kernel

def part0009 : CertificateTree FactoredPoint := .node part0007 (113,[113]) part0008
theorem part0009_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 19 6 [2,3]) 181 271 part0009 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 19 6 [2,3]) 181 271
    part0007 part0008 (113,[113]) (by decide +kernel) part0007_valid
    (by decide +kernel) part0008_valid

def part0010 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (136,[2,2,2,17]) .empty) (497,[7,71]) .empty) (137,[137]) (.node (.node .empty (1220,[2,2,5,61]) .empty) (138,[2,3,23]) .empty)) (860,[2,2,5,43]) (.node (.node (.node .empty (139,[139]) .empty) (861,[3,7,41]) .empty) (501,[3,167]) (.node (.node .empty (140,[2,2,5,7]) .empty) (141,[3,47]) .empty))) (1585,[5,317]) (.node (.node (.node (.node .empty (142,[2,71]) .empty) (864,[2,2,2,2,2,3,3,3]) .empty) (504,[2,2,2,3,3,7]) (.node (.node .empty (143,[11,13]) .empty) (866,[2,433]) .empty)) (144,[2,2,2,2,3,3]) (.node (.node (.node .empty (867,[3,17,17]) .empty) (145,[5,29]) .empty) (146,[2,73]) (.node .empty (868,[2,2,7,31]) .empty)))) (147,[3,7,7]) (.node (.node (.node (.node (.node .empty (869,[11,79]) .empty) (148,[2,2,37]) .empty) (870,[2,3,5,29]) (.node (.node .empty (149,[149]) .empty) (510,[2,3,5,17]) .empty)) (150,[2,3,5,5]) (.node (.node (.node .empty (511,[7,73]) .empty) (151,[151]) .empty) (512,[2,2,2,2,2,2,2,2,2]) (.node .empty (0,[]) .empty))) (0,[]) (.node (.node (.node (.node .empty (153,[3,3,17]) .empty) (875,[5,5,5,7]) .empty) (876,[2,2,3,73]) (.node (.node .empty (154,[2,7,11]) .empty) (516,[2,2,3,43]) .empty)) (155,[5,31]) (.node (.node (.node .empty (156,[2,2,3,13]) .empty) (517,[11,47]) .empty) (157,[157]) (.node .empty (518,[2,7,37]) .empty)))))
theorem part0010_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 19 6 [2,3]) 272 316 part0010 := by
  change part0010.checkRange (checkOddEntry sharedPrimes 19 6 [2,3]) 272 316 = true
  decide +kernel

def part0011 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (880,[2,2,2,2,5,11]) .empty) (159,[3,53]) .empty) (520,[2,2,2,5,13]) (.node (.node .empty (160,[2,2,2,2,2,5]) .empty) (1243,[11,113]) .empty)) (522,[2,3,3,29]) (.node (.node (.node .empty (161,[7,23]) .empty) (523,[523]) .empty) (162,[2,3,3,3,3]) (.node (.node .empty (163,[163]) .empty) (885,[3,5,59]) .empty))) (164,[2,2,41]) (.node (.node (.node (.node .empty (525,[3,5,5,7]) .empty) (526,[2,263]) .empty) (165,[3,5,11]) (.node (.node .empty (166,[2,83]) .empty) (527,[17,31]) .empty)) (167,[167]) (.node (.node (.node .empty (889,[7,127]) .empty) (168,[2,2,2,3,7]) .empty) (890,[2,5,89]) (.node .empty (169,[13,13]) .empty)))) (530,[2,5,53]) (.node (.node (.node (.node (.node .empty (531,[3,3,59]) .empty) (170,[2,5,17]) .empty) (0,[]) (.node (.node .empty (0,[]) .empty) (172,[2,2,43]) .empty)) (533,[13,41]) (.node (.node (.node .empty (173,[173]) .empty) (895,[5,179]) .empty) (174,[2,3,29]) (.node .empty (535,[5,107]) .empty))) (536,[2,2,2,67]) (.node (.node (.node (.node .empty (175,[5,5,7]) .empty) (176,[2,2,2,2,11]) .empty) (1981,[7,283]) (.node (.node .empty (177,[3,59]) .empty) (899,[29,31]) .empty)) (178,[2,89]) (.node (.node (.node .empty (539,[7,7,11]) .empty) (179,[179]) .empty) (901,[17,53]) (.node .empty (180,[2,2,3,3,5]) .empty)))))
theorem part0011_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 19 6 [2,3]) 317 361 part0011 := by
  change part0011.checkRange (checkOddEntry sharedPrimes 19 6 [2,3]) 317 361 = true
  decide +kernel

def part0012 : CertificateTree FactoredPoint := .node part0010 (158,[2,79]) part0011
theorem part0012_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 19 6 [2,3]) 272 361 part0012 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 19 6 [2,3]) 272 361
    part0010 part0011 (158,[2,79]) (by decide +kernel) part0010_valid
    (by decide +kernel) part0011_valid

def part0013 : CertificateTree FactoredPoint := .node part0009 (1218,[2,3,7,29]) part0012
theorem part0013_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 19 6 [2,3]) 181 361 part0013 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 19 6 [2,3]) 181 361
    part0009 part0012 (1218,[2,3,7,29]) (by decide +kernel) part0009_valid
    (by decide +kernel) part0012_valid

def part0014 : CertificateTree FactoredPoint := .node part0006 (90,[2,3,3,5]) part0013
theorem part0014_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 19 6 [2,3]) 0 361 part0014 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 19 6 [2,3]) 0 361
    part0006 part0013 (90,[2,3,3,5]) (by decide +kernel) part0006_valid
    (by decide +kernel) part0013_valid

def part0015 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (181,[181]) .empty) (903,[3,7,43]) .empty) (543,[3,181]) (.node (.node .empty (182,[2,7,13]) .empty) (183,[3,61]) .empty)) (905,[5,181]) (.node (.node (.node .empty (184,[2,2,2,23]) .empty) (545,[5,109]) .empty) (907,[907]) (.node (.node .empty (185,[5,37]) .empty) (186,[2,3,31]) .empty))) (1630,[2,5,163]) (.node (.node (.node (.node .empty (548,[2,2,137]) .empty) (187,[11,17]) .empty) (188,[2,2,47]) (.node (.node .empty (1271,[31,41]) .empty) (189,[3,3,3,7]) .empty)) (550,[2,5,5,11]) (.node (.node (.node .empty (0,[]) .empty) (0,[]) .empty) (191,[191]) (.node .empty (913,[11,83]) .empty)))) (914,[2,457]) (.node (.node (.node (.node (.node .empty (192,[2,2,2,2,2,2,3]) .empty) (193,[193]) .empty) (915,[3,5,61]) (.node (.node .empty (194,[2,97]) .empty) (555,[3,5,37]) .empty)) (556,[2,2,139]) (.node (.node (.node .empty (195,[3,5,13]) .empty) (196,[2,2,7,7]) .empty) (1640,[2,2,2,5,41]) (.node (.node .empty (197,[197]) .empty) (2363,[17,139]) .empty))) (198,[2,3,3,11]) (.node (.node (.node (.node .empty (559,[13,43]) .empty) (199,[199]) .empty) (560,[2,2,2,2,5,7]) (.node (.node .empty (200,[2,2,2,5,5]) .empty) (561,[3,11,17]) .empty)) (201,[3,67]) (.node (.node (.node .empty (923,[13,71]) .empty) (202,[2,101]) .empty) (924,[2,2,3,7,11]) (.node .empty (564,[2,2,3,47]) .empty)))))
theorem part0015_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 19 6 [2,3]) 362 407 part0015 := by
  change part0015.checkRange (checkOddEntry sharedPrimes 19 6 [2,3]) 362 407 = true
  decide +kernel

def part0016 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (204,[2,2,3,17]) .empty) (565,[5,113]) .empty) (566,[2,283]) (.node (.node .empty (205,[5,41]) .empty) (206,[2,103]) .empty)) (1650,[2,3,5,5,11]) (.node (.node (.node .empty (207,[3,3,23]) .empty) (1290,[2,3,5,43]) .empty) (208,[2,2,2,2,13]) (.node (.node .empty (930,[2,3,5,31]) .empty) (0,[]) .empty))) (0,[]) (.node (.node (.node (.node .empty (571,[571]) .empty) (210,[2,3,5,7]) .empty) (211,[211]) (.node (.node .empty (572,[2,2,11,13]) .empty) (212,[2,2,53]) .empty)) (2378,[2,29,41]) (.node (.node (.node .empty (213,[3,71]) .empty) (574,[2,7,41]) .empty) (214,[2,107]) (.node .empty (575,[5,5,23]) .empty)))) (937,[937]) (.node (.node (.node (.node (.node .empty (215,[5,43]) .empty) (577,[577]) .empty) (216,[2,2,2,3,3,3]) (.node (.node .empty (578,[2,17,17]) .empty) (217,[7,31]) .empty)) (218,[2,109]) (.node (.node (.node .empty (940,[2,2,5,47]) .empty) (219,[3,73]) .empty) (580,[2,2,5,29]) (.node .empty (942,[2,3,157]) .empty))) (220,[2,2,5,11]) (.node (.node (.node (.node .empty (582,[2,3,97]) .empty) (221,[13,17]) .empty) (222,[2,3,37]) (.node (.node .empty (583,[11,53]) .empty) (223,[223]) .empty)) (945,[3,3,3,5,7]) (.node (.node (.node .empty (224,[2,2,2,2,2,7]) .empty) (585,[3,3,5,13]) .empty) (225,[3,3,5,5]) (.node .empty (3113,[11,283]) .empty)))))
theorem part0016_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 19 6 [2,3]) 408 452 part0016 := by
  change part0016.checkRange (checkOddEntry sharedPrimes 19 6 [2,3]) 408 452 = true
  decide +kernel

def part0017 : CertificateTree FactoredPoint := .node part0015 (203,[7,29]) part0016
theorem part0017_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 19 6 [2,3]) 362 452 part0017 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 19 6 [2,3]) 362 452
    part0015 part0016 (203,[7,29]) (by decide +kernel) part0015_valid
    (by decide +kernel) part0016_valid

def part0018 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1670,[2,5,167]) .empty) (227,[227]) .empty) (949,[13,73]) (.node (.node .empty (0,[]) .empty) (0,[]) .empty)) (229,[229]) (.node (.node (.node .empty (590,[2,5,59]) .empty) (591,[3,197]) .empty) (230,[2,5,23]) (.node (.node .empty (592,[2,2,2,2,37]) .empty) (231,[3,7,11]) .empty))) (232,[2,2,2,29]) (.node (.node (.node (.node .empty (1315,[5,263]) .empty) (233,[233]) .empty) (955,[5,191]) (.node (.node .empty (234,[2,3,3,13]) .empty) (2761,[11,251]) .empty)) (596,[2,2,149]) (.node (.node (.node .empty (235,[5,47]) .empty) (236,[2,2,59]) .empty) (1680,[2,2,2,2,3,5,7]) (.node .empty (237,[3,79]) .empty)))) (598,[2,13,23]) (.node (.node (.node (.node (.node .empty (599,[599]) .empty) (238,[2,7,17]) .empty) (239,[239]) (.node (.node .empty (1683,[3,3,11,17]) .empty) (240,[2,2,2,2,3,5]) .empty)) (962,[2,13,37]) (.node (.node (.node .empty (241,[241]) .empty) (602,[2,7,43]) .empty) (242,[2,11,11]) (.node .empty (1325,[5,5,53]) .empty))) (604,[2,2,151]) (.node (.node (.node (.node .empty (243,[3,3,3,3,3]) .empty) (244,[2,2,61]) .empty) (605,[5,11,11]) (.node (.node .empty (606,[2,3,101]) .empty) (245,[5,7,7]) .empty)) (246,[2,3,41]) (.node (.node (.node .empty (1690,[2,5,13,13]) .empty) (0,[]) .empty) (0,[]) (.node .empty (248,[2,2,2,31]) .empty)))))
theorem part0018_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 19 6 [2,3]) 453 497 part0018 := by
  change part0018.checkRange (checkOddEntry sharedPrimes 19 6 [2,3]) 453 497 = true
  decide +kernel

def part0019 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (249,[3,83]) .empty) (610,[2,5,61]) .empty) (250,[2,5,5,5]) (.node (.node .empty (611,[13,47]) .empty) (251,[251]) .empty)) (973,[7,139]) (.node (.node (.node .empty (252,[2,2,3,3,7]) .empty) (1335,[3,5,89]) .empty) (614,[2,307]) (.node (.node .empty (253,[11,23]) .empty) (254,[2,127]) .empty))) (615,[3,5,41]) (.node (.node (.node (.node .empty (977,[977]) .empty) (255,[3,5,17]) .empty) (617,[617]) (.node (.node .empty (256,[2,2,2,2,2,2,2,2]) .empty) (257,[257]) .empty)) (979,[11,89]) (.node (.node (.node .empty (258,[2,3,43]) .empty) (980,[2,2,5,7,7]) .empty) (981,[3,3,109]) (.node .empty (259,[7,37]) .empty)))) (621,[3,3,3,23]) (.node (.node (.node (.node (.node .empty (260,[2,2,5,13]) .empty) (261,[3,3,29]) .empty) (2788,[2,2,17,41]) (.node (.node .empty (262,[2,131]) .empty) (623,[7,89]) .empty)) (263,[263]) (.node (.node (.node .empty (985,[5,197]) .empty) (264,[2,2,2,3,11]) .empty) (986,[2,17,29]) (.node .empty (626,[2,313]) .empty))) (265,[5,53]) (.node (.node (.node (.node .empty (0,[]) .empty) (0,[]) .empty) (267,[3,89]) (.node (.node .empty (989,[23,43]) .empty) (268,[2,2,67]) .empty)) (629,[17,37]) (.node (.node (.node .empty (269,[269]) .empty) (630,[2,3,3,5,7]) .empty) (270,[2,3,3,3,5]) (.node .empty (1353,[3,11,41]) .empty)))))
theorem part0019_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 19 6 [2,3]) 498 542 part0019 := by
  change part0019.checkRange (checkOddEntry sharedPrimes 19 6 [2,3]) 498 542 = true
  decide +kernel

def part0020 : CertificateTree FactoredPoint := .node part0018 (609,[3,7,29]) part0019
theorem part0020_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 19 6 [2,3]) 453 542 part0020 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 19 6 [2,3]) 453 542
    part0018 part0019 (609,[3,7,29]) (by decide +kernel) part0018_valid
    (by decide +kernel) part0019_valid

def part0021 : CertificateTree FactoredPoint := .node part0017 (226,[2,113]) part0020
theorem part0021_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 19 6 [2,3]) 362 542 part0021 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 19 6 [2,3]) 362 542
    part0017 part0020 (226,[2,113]) (by decide +kernel) part0017_valid
    (by decide +kernel) part0020_valid

def part0022 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1715,[5,7,7,7]) .empty) (272,[2,2,2,2,17]) .empty) (994,[2,7,71]) (.node (.node .empty (634,[2,317]) .empty) (273,[3,7,13]) .empty)) (274,[2,137]) (.node (.node (.node .empty (635,[5,127]) .empty) (636,[2,2,3,53]) .empty) (275,[5,5,11]) (.node (.node .empty (276,[2,2,3,23]) .empty) (637,[7,7,13]) .empty))) (277,[277]) (.node (.node (.node (.node .empty (638,[2,11,29]) .empty) (278,[2,139]) .empty) (1722,[2,3,7,41]) (.node (.node .empty (279,[3,3,31]) .empty) (2445,[3,5,163]) .empty)) (641,[641]) (.node (.node (.node .empty (280,[2,2,2,5,7]) .empty) (281,[281]) .empty) (1003,[17,59]) (.node .empty (282,[2,3,47]) .empty)))) (3170,[2,5,317]) (.node (.node (.node (.node (.node .empty (283,[283]) .empty) (644,[2,2,7,23]) .empty) (284,[2,2,71]) (.node (.node .empty (645,[3,5,43]) .empty) (0,[]) .empty)) (0,[]) (.node (.node (.node .empty (647,[647]) .empty) (286,[2,11,13]) .empty) (1009,[1009]) (.node .empty (287,[7,41]) .empty))) (1371,[3,457]) (.node (.node (.node (.node .empty (288,[2,2,2,2,2,3,3]) .empty) (289,[17,17]) .empty) (650,[2,5,5,13]) (.node (.node .empty (1373,[1373]) .empty) (290,[2,5,29]) .empty)) (291,[3,97]) (.node (.node (.node .empty (1735,[5,347]) .empty) (292,[2,2,73]) .empty) (1375,[5,5,5,11]) (.node .empty (293,[293]) .empty)))))
theorem part0022_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 19 6 [2,3]) 543 587 part0022 := by
  change part0022.checkRange (checkOddEntry sharedPrimes 19 6 [2,3]) 543 587 = true
  decide +kernel

def part0023 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (294,[2,3,7,7]) .empty) (655,[5,131]) .empty) (656,[2,2,2,2,41]) (.node (.node .empty (295,[5,59]) .empty) (296,[2,2,2,37]) .empty)) (1379,[7,197]) (.node (.node (.node .empty (297,[3,3,3,11]) .empty) (658,[2,7,47]) .empty) (298,[2,149]) (.node (.node .empty (1020,[2,2,3,5,17]) .empty) (1021,[1021]) .empty))) (299,[13,23]) (.node (.node (.node (.node .empty (300,[2,2,3,5,5]) .empty) (1022,[2,7,73]) .empty) (662,[2,331]) (.node (.node .empty (301,[7,43]) .empty) (302,[2,151]) .empty)) (663,[3,13,17]) (.node (.node (.node .empty (303,[3,101]) .empty) (1025,[5,5,41]) .empty) (0,[]) (.node .empty (0,[]) .empty)))) (666,[2,3,3,37]) (.node (.node (.node (.node (.node .empty (305,[5,61]) .empty) (306,[2,3,3,17]) .empty) (667,[23,29]) (.node (.node .empty (307,[307]) .empty) (1390,[2,5,139]) .empty)) (669,[3,223]) (.node (.node (.node .empty (308,[2,2,7,11]) .empty) (309,[3,103]) .empty) (670,[2,5,67]) (.node .empty (1032,[2,2,2,3,43]) .empty))) (310,[2,5,31]) (.node (.node (.node (.node .empty (311,[311]) .empty) (1394,[2,17,41]) .empty) (312,[2,2,2,3,13]) (.node (.node .empty (1034,[2,11,47]) .empty) (313,[313]) .empty)) (1035,[3,3,5,23]) (.node (.node (.node .empty (314,[2,157]) .empty) (1036,[2,2,7,37]) .empty) (676,[2,2,13,13]) (.node .empty (315,[3,3,5,7]) .empty)))))
theorem part0023_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 19 6 [2,3]) 588 632 part0023 := by
  change part0023.checkRange (checkOddEntry sharedPrimes 19 6 [2,3]) 588 632 = true
  decide +kernel

def part0024 : CertificateTree FactoredPoint := .node part0022 (2820,[2,2,3,5,47]) part0023
theorem part0024_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 19 6 [2,3]) 543 632 part0024 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 19 6 [2,3]) 543 632
    part0022 part0023 (2820,[2,2,3,5,47]) (by decide +kernel) part0022_valid
    (by decide +kernel) part0023_valid

def part0025 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1760,[2,2,2,2,2,5,11]) .empty) (317,[317]) .empty) (1400,[2,2,2,5,5,7]) (.node (.node .empty (318,[2,3,53]) .empty) (679,[7,97]) .empty)) (1041,[3,347]) (.node (.node (.node .empty (319,[11,29]) .empty) (320,[2,2,2,2,2,2,5]) .empty) (1403,[23,61]) (.node (.node .empty (321,[3,107]) .empty) (682,[2,11,31]) .empty))) (683,[683]) (.node (.node (.node (.node .empty (322,[2,7,23]) .empty) (0,[]) .empty) (0,[]) (.node (.node .empty (1046,[2,523]) .empty) (324,[2,2,3,3,3,3]) .empty)) (686,[2,7,7,7]) (.node (.node (.node .empty (325,[5,5,13]) .empty) (326,[2,163]) .empty) (1770,[2,3,5,59]) (.node .empty (327,[3,109]) .empty)))) (1410,[2,3,5,47]) (.node (.node (.node (.node (.node .empty (328,[2,2,2,41]) .empty) (689,[13,53]) .empty) (1051,[1051]) (.node (.node .empty (329,[7,47]) .empty) (691,[691]) .empty)) (330,[2,3,5,11]) (.node (.node (.node .empty (331,[331]) .empty) (1414,[2,7,101]) .empty) (332,[2,2,83]) (.node .empty (693,[3,3,7,11]) .empty))) (333,[3,3,37]) (.node (.node (.node (.node .empty (1055,[5,211]) .empty) (334,[2,167]) .empty) (695,[5,139]) (.node (.node .empty (696,[2,2,2,3,29]) .empty) (335,[5,67]) .empty)) (336,[2,2,2,2,3,7]) (.node (.node (.node .empty (697,[17,41]) .empty) (337,[337]) .empty) (1420,[2,2,5,71]) (.node .empty (338,[2,13,13]) .empty)))))
theorem part0025_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 19 6 [2,3]) 633 677 part0025 := by
  change part0025.checkRange (checkOddEntry sharedPrimes 19 6 [2,3]) 633 677 = true
  decide +kernel

def part0026 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (339,[3,113]) .empty) (700,[2,2,5,5,7]) .empty) (701,[701]) (.node (.node .empty (340,[2,2,5,17]) .empty) (702,[2,3,3,3,13]) .empty)) (341,[11,31]) (.node (.node (.node .empty (0,[]) .empty) (0,[]) .empty) (343,[7,7,7]) (.node (.node .empty (1065,[3,5,71]) .empty) (344,[2,2,2,43]) .empty))) (705,[3,5,47]) (.node (.node (.node (.node .empty (706,[2,353]) .empty) (345,[3,5,23]) .empty) (346,[2,173]) (.node (.node .empty (707,[7,101]) .empty) (347,[347]) .empty)) (2513,[7,359]) (.node (.node (.node .empty (348,[2,2,3,29]) .empty) (1070,[2,5,107]) .empty) (349,[349]) (.node .empty (710,[2,5,71]) .empty)))) (711,[3,3,79]) (.node (.node (.node (.node (.node .empty (350,[2,5,5,7]) .empty) (351,[3,3,3,13]) .empty) (1073,[29,37]) (.node (.node .empty (352,[2,2,2,2,2,11]) .empty) (713,[23,31]) .empty)) (353,[353]) (.node (.node (.node .empty (714,[2,3,7,17]) .empty) (354,[2,3,59]) .empty) (1798,[2,29,31]) (.node .empty (716,[2,2,179]) .empty))) (355,[5,71]) (.node (.node (.node (.node .empty (356,[2,2,89]) .empty) (1078,[2,7,7,11]) .empty) (718,[2,359]) (.node (.node .empty (357,[3,7,17]) .empty) (358,[2,179]) .empty)) (1441,[11,131]) (.node (.node (.node .empty (359,[359]) .empty) (1081,[23,47]) .empty) (360,[2,2,2,3,3,5]) (.node .empty (721,[7,103]) .empty)))))
theorem part0026_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 19 6 [2,3]) 678 722 part0026 := by
  change part0026.checkRange (checkOddEntry sharedPrimes 19 6 [2,3]) 678 722 = true
  decide +kernel

def part0027 : CertificateTree FactoredPoint := .node part0025 (1060,[2,2,5,53]) part0026
theorem part0027_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 19 6 [2,3]) 633 722 part0027 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 19 6 [2,3]) 633 722
    part0025 part0026 (1060,[2,2,5,53]) (by decide +kernel) part0025_valid
    (by decide +kernel) part0026_valid

def part0028 : CertificateTree FactoredPoint := .node part0024 (316,[2,2,79]) part0027
theorem part0028_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 19 6 [2,3]) 543 722 part0028 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 19 6 [2,3]) 543 722
    part0024 part0027 (316,[2,2,79]) (by decide +kernel) part0024_valid
    (by decide +kernel) part0027_valid

def part0029 : CertificateTree FactoredPoint := .node part0021 (271,[271]) part0028
theorem part0029_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 19 6 [2,3]) 362 722 part0029 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 19 6 [2,3]) 362 722
    part0021 part0028 (271,[271]) (by decide +kernel) part0021_valid
    (by decide +kernel) part0028_valid

def part0030 : CertificateTree FactoredPoint := .node part0014 (902,[2,11,41]) part0029
theorem part0030_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 19 6 [2,3]) 0 722 part0030 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 19 6 [2,3]) 0 722
    part0014 part0029 (902,[2,11,41]) (by decide +kernel) part0014_valid
    (by decide +kernel) part0029_valid

def data : CertificateTree FactoredPoint := part0030
theorem valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 19 6 [2,3]) 0 722 data := by
  exact part0030_valid

end GeneralizedGoldbach.LargeCertificates.Odd19.B0000
