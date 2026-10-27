module

public import GeneralizedGoldbach.FullCertificateKernel
public import GeneralizedGoldbach.LargeCertificates.SharedPrimes

/-! 全量有限证书：外部生成数据，内核检查覆盖及各项条件。 -/
@[expose] public section
namespace GeneralizedGoldbach.LargeCertificates.Odd37.B0000
open FullCertificate
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
def part0000 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (0,[]) .empty) (0,[]) .empty) (5477,[5477]) (.node (.node .empty (1,[]) .empty) (1371,[3,457]) .empty)) (2,[2]) (.node (.node (.node .empty (1372,[2,2,7,7,7]) .empty) (3,[3]) .empty) (1373,[1373]) (.node .empty (4,[2,2]) .empty))) (5,[5]) (.node (.node (.node (.node .empty (2743,[13,211]) .empty) (2744,[2,2,2,7,7,7]) .empty) (6,[2,3]) (.node (.node .empty (7,[7]) .empty) (2745,[3,3,5,61]) .empty)) (1377,[3,3,3,3,17]) (.node (.node (.node .empty (8,[2,2,2]) .empty) (4116,[2,2,3,7,7,7]) .empty) (9,[3,3]) (.node .empty (10,[2,5]) .empty)))) (1379,[7,197]) (.node (.node (.node (.node (.node .empty (11,[11]) .empty) (1380,[2,2,3,5,23]) .empty) (1381,[1381]) (.node (.node .empty (12,[2,2,3]) .empty) (13,[13]) .empty)) (2751,[3,7,131]) (.node (.node (.node .empty (14,[2,7]) .empty) (4121,[13,317]) .empty) (15,[3,5]) (.node .empty (5491,[17,17,19]) .empty))) (2754,[2,3,3,3,3,17]) (.node (.node (.node (.node .empty (16,[2,2,2,2]) .empty) (17,[17]) .empty) (1386,[2,3,3,7,11]) (.node .empty (6863,[6863]) .empty)) (18,[2,3,3]) (.node (.node (.node .empty (19,[19]) .empty) (6864,[2,2,2,2,3,11,13]) .empty) (20,[2,2,5]) (.node .empty (2758,[2,7,197]) .empty)))))
theorem part0000_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 0 42 part0000 := by
  change part0000.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 0 42 = true
  decide +kernel

def part0001 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1390,[2,5,139]) .empty) (22,[2,11]) .empty) (1391,[13,107]) (.node (.node .empty (23,[23]) .empty) (2761,[11,251]) .empty)) (2762,[2,1381]) (.node (.node (.node .empty (24,[2,2,2,3]) .empty) (25,[5,5]) .empty) (1394,[2,17,41]) (.node .empty (26,[2,13]) .empty))) (1395,[3,3,5,31]) (.node (.node (.node (.node .empty (1396,[2,2,349]) .empty) (27,[3,3,3]) .empty) (28,[2,2,7]) (.node (.node .empty (1397,[11,127]) .empty) (29,[29]) .empty)) (4136,[2,2,2,11,47]) (.node (.node (.node .empty (30,[2,3,5]) .empty) (4137,[3,7,197]) .empty) (31,[31]) (.node .empty (1400,[2,2,2,5,5,7]) .empty)))) (1401,[3,467]) (.node (.node (.node (.node (.node .empty (32,[2,2,2,2,2]) .empty) (33,[3,11]) .empty) (2771,[17,163]) (.node (.node .empty (34,[2,17]) .empty) (1403,[23,61]) .empty)) (1404,[2,2,3,3,3,13]) (.node (.node (.node .empty (35,[5,7]) .empty) (4143,[3,1381]) .empty) (36,[2,2,3,3]) (.node .empty (0,[]) .empty))) (0,[]) (.node (.node (.node (.node .empty (38,[2,19]) .empty) (1407,[3,7,67]) .empty) (39,[3,13]) (.node .empty (5515,[5,1103]) .empty)) (40,[2,2,2,5]) (.node (.node (.node .empty (5516,[2,2,7,197]) .empty) (41,[41]) .empty) (1410,[2,3,5,47]) (.node .empty (42,[2,3,7]) .empty)))))
theorem part0001_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 43 85 part0001 := by
  change part0001.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 43 85 = true
  decide +kernel

def part0002 : CertificateTree FactoredPoint := .node part0000 (21,[3,7]) part0001
theorem part0002_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 0 85 part0002 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 0 85
    part0000 part0001 (21,[3,7]) (by decide +kernel) part0000_valid
    (by decide +kernel) part0001_valid

def part0003 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (43,[43]) .empty) (4150,[2,5,5,83]) .empty) (44,[2,2,11]) (.node (.node .empty (2782,[2,13,107]) .empty) (45,[3,3,5]) .empty)) (1414,[2,7,101]) (.node (.node (.node .empty (46,[2,23]) .empty) (1415,[5,283]) .empty) (47,[47]) (.node .empty (2785,[5,557]) .empty))) (5524,[2,2,1381]) (.node (.node (.node (.node .empty (48,[2,2,2,2,3]) .empty) (49,[7,7]) .empty) (9632,[2,2,2,2,2,7,43]) (.node (.node .empty (50,[2,5,5]) .empty) (1419,[3,11,43]) .empty)) (51,[3,17]) (.node (.node (.node .empty (1420,[2,2,5,71]) .empty) (52,[2,2,13]) .empty) (1421,[7,7,29]) (.node .empty (53,[53]) .empty)))) (4160,[2,2,2,2,2,2,5,13]) (.node (.node (.node (.node (.node .empty (1423,[1423]) .empty) (54,[2,3,3,3]) .empty) (1424,[2,2,2,2,89]) (.node (.node .empty (55,[5,11]) .empty) (56,[2,2,2,7]) .empty)) (1425,[3,5,5,19]) (.node (.node (.node .empty (57,[3,19]) .empty) (1426,[2,23,31]) .empty) (58,[2,29]) (.node .empty (6903,[3,3,13,59]) .empty))) (59,[59]) (.node (.node (.node (.node .empty (1428,[2,2,3,7,17]) .empty) (60,[2,2,3,5]) .empty) (6905,[5,1381]) (.node .empty (61,[61]) .empty)) (5537,[7,7,113]) (.node (.node (.node .empty (62,[2,31]) .empty) (2800,[2,2,2,2,5,5,7]) .empty) (63,[3,3,7]) (.node .empty (4170,[2,3,5,139]) .empty)))))
theorem part0003_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 86 128 part0003 := by
  change part0003.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 86 128 = true
  decide +kernel

def part0004 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (64,[2,2,2,2,2,2]) .empty) (1434,[2,3,239]) .empty) (65,[5,13]) (.node (.node .empty (66,[2,3,11]) .empty) (4173,[3,13,107]) .empty)) (67,[67]) (.node (.node (.node .empty (5543,[23,241]) .empty) (68,[2,2,17]) .empty) (2806,[2,23,61]) (.node .empty (69,[3,23]) .empty))) (2807,[7,401]) (.node (.node (.node (.node .empty (1439,[1439]) .empty) (70,[2,5,7]) .empty) (71,[71]) (.node (.node .empty (8285,[5,1657]) .empty) (6917,[6917]) .empty)) (72,[2,2,2,3,3]) (.node (.node (.node .empty (73,[73]) .empty) (1442,[2,7,103]) .empty) (0,[]) (.node .empty (0,[]) .empty)))) (75,[3,5,5]) (.node (.node (.node (.node (.node .empty (2813,[29,97]) .empty) (76,[2,2,19]) .empty) (1445,[5,17,17]) (.node (.node .empty (1446,[2,3,241]) .empty) (77,[7,11]) .empty)) (78,[2,3,13]) (.node (.node (.node .empty (4185,[3,3,3,5,31]) .empty) (79,[79]) .empty) (12400,[2,2,2,2,5,5,31]) (.node .empty (80,[2,2,2,2,5]) .empty))) (1449,[3,3,7,23]) (.node (.node (.node (.node .empty (2819,[2819]) .empty) (81,[3,3,3,3]) .empty) (82,[2,41]) (.node .empty (2820,[2,2,3,5,47]) .empty)) (83,[83]) (.node (.node (.node .empty (4190,[2,5,419]) .empty) (84,[2,2,3,7]) .empty) (2822,[2,17,83]) (.node .empty (1454,[2,727]) .empty)))))
theorem part0004_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 129 171 part0004 := by
  change part0004.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 129 171 = true
  decide +kernel

def part0005 : CertificateTree FactoredPoint := .node part0003 (1433,[1433]) part0004
theorem part0005_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 86 171 part0005 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 86 171
    part0003 part0004 (1433,[1433]) (by decide +kernel) part0003_valid
    (by decide +kernel) part0004_valid

def part0006 : CertificateTree FactoredPoint := .node part0002 (1411,[17,83]) part0005
theorem part0006_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 0 171 part0006 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 0 171
    part0002 part0005 (1411,[17,83]) (by decide +kernel) part0002_valid
    (by decide +kernel) part0005_valid

def part0007 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (86,[2,43]) .empty) (1455,[3,5,97]) .empty) (87,[3,29]) (.node (.node .empty (1456,[2,2,2,2,7,13]) .empty) (88,[2,2,2,11]) .empty)) (1457,[31,47]) (.node (.node (.node .empty (89,[89]) .empty) (1458,[2,3,3,3,3,3,3]) .empty) (90,[2,3,3,5]) (.node .empty (2828,[2,2,7,101]) .empty))) (4198,[2,2099]) (.node (.node (.node (.node .empty (91,[7,13]) .empty) (92,[2,2,23]) .empty) (2830,[2,5,283]) (.node (.node .empty (93,[3,31]) .empty) (1462,[2,17,43]) .empty)) (94,[2,47]) (.node (.node (.node .empty (5570,[2,5,557]) .empty) (1464,[2,2,2,3,61]) .empty) (95,[5,19]) (.node .empty (4203,[3,3,467]) .empty)))) (96,[2,2,2,2,2,3]) (.node (.node (.node (.node (.node .empty (97,[97]) .empty) (2835,[3,3,3,3,5,7]) .empty) (98,[2,7,7]) (.node (.node .empty (4205,[5,29,29]) .empty) (99,[3,3,11]) .empty)) (5575,[5,5,223]) (.node (.node (.node .empty (100,[2,2,5,5]) .empty) (1469,[13,113]) .empty) (101,[101]) (.node .empty (1470,[2,3,5,7,7]) .empty))) (102,[2,3,17]) (.node (.node (.node (.node .empty (2840,[2,2,2,5,71]) .empty) (103,[103]) .empty) (4210,[2,5,421]) (.node .empty (104,[2,2,2,13]) .empty)) (2842,[2,7,7,29]) (.node (.node (.node .empty (2843,[2843]) .empty) (105,[3,5,7]) .empty) (106,[2,53]) (.node .empty (1475,[5,5,59]) .empty)))))
theorem part0007_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 172 214 part0007 := by
  change part0007.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 172 214 = true
  decide +kernel

def part0008 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (2845,[5,569]) .empty) (2846,[2,1423]) .empty) (108,[2,2,3,3,3]) (.node (.node .empty (109,[109]) .empty) (2847,[3,13,73]) .empty)) (2848,[2,2,2,2,2,89]) (.node (.node (.node .empty (110,[2,5,11]) .empty) (0,[]) .empty) (0,[]) (.node .empty (112,[2,2,2,2,7]) .empty))) (2850,[2,3,5,5,19]) (.node (.node (.node (.node .empty (113,[113]) .empty) (1482,[2,3,13,19]) .empty) (114,[2,3,19]) (.node (.node .empty (2852,[2,2,23,31]) .empty) (2853,[3,3,317]) .empty)) (115,[5,23]) (.node (.node (.node .empty (116,[2,2,29]) .empty) (1485,[3,3,3,5,11]) .empty) (117,[3,3,13]) (.node .empty (2855,[5,571]) .empty)))) (118,[2,59]) (.node (.node (.node (.node (.node .empty (2856,[2,2,2,3,7,17]) .empty) (1488,[2,2,2,2,3,31]) .empty) (119,[7,17]) (.node (.node .empty (120,[2,2,2,3,5]) .empty) (9703,[31,313]) .empty)) (121,[11,11]) (.node (.node (.node .empty (1490,[2,5,149]) .empty) (122,[2,61]) .empty) (1491,[3,7,71]) (.node .empty (123,[3,41]) .empty))) (4230,[2,3,3,5,47]) (.node (.node (.node (.node .empty (124,[2,2,31]) .empty) (5600,[2,2,2,2,2,5,5,7]) .empty) (125,[5,5,5]) (.node .empty (2863,[7,409]) .empty)) (126,[2,3,3,7]) (.node (.node (.node .empty (4233,[3,17,83]) .empty) (127,[127]) .empty) (1496,[2,2,2,11,17]) (.node .empty (1497,[3,499]) .empty)))))
theorem part0008_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 215 257 part0008 := by
  change part0008.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 215 257 = true
  decide +kernel

def part0009 : CertificateTree FactoredPoint := .node part0007 (107,[107]) part0008
theorem part0009_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 172 257 part0009 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 172 257
    part0007 part0008 (107,[107]) (by decide +kernel) part0007_valid
    (by decide +kernel) part0008_valid

def part0010 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (129,[3,43]) .empty) (1498,[2,7,107]) .empty) (1499,[1499]) (.node (.node .empty (130,[2,5,13]) .empty) (131,[131]) .empty)) (2869,[19,151]) (.node (.node (.node .empty (132,[2,2,3,11]) .empty) (1501,[19,79]) .empty) (1502,[2,751]) (.node .empty (133,[7,19]) .empty))) (134,[2,67]) (.node (.node (.node (.node .empty (6979,[7,997]) .empty) (135,[3,3,3,5]) .empty) (2873,[13,13,17]) (.node (.node .empty (136,[2,2,2,17]) .empty) (5612,[2,2,23,61]) .empty)) (137,[137]) (.node (.node (.node .empty (2875,[5,5,5,23]) .empty) (138,[2,3,23]) .empty) (1507,[11,137]) (.node .empty (139,[139]) .empty)))) (1508,[2,2,13,29]) (.node (.node (.node (.node (.node .empty (1509,[3,503]) .empty) (140,[2,2,5,7]) .empty) (141,[3,47]) (.node (.node .empty (1510,[2,5,151]) .empty) (142,[2,71]) .empty)) (4249,[7,607]) (.node (.node (.node .empty (1512,[2,2,2,3,3,3,7]) .empty) (143,[11,13]) .empty) (13834,[2,6917]) (.node .empty (144,[2,2,2,2,3,3]) .empty))) (1514,[2,757]) (.node (.node (.node (.node .empty (145,[5,29]) .empty) (146,[2,73]) .empty) (1515,[3,5,101]) (.node .empty (147,[3,7,7]) .empty)) (2885,[5,577]) (.node (.node (.node .empty (0,[]) .empty) (0,[]) .empty) (149,[149]) (.node .empty (1518,[2,3,11,23]) .empty)))))
theorem part0010_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 258 300 part0010 := by
  change part0010.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 258 300 = true
  decide +kernel

def part0011 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1519,[7,7,31]) .empty) (151,[151]) .empty) (1520,[2,2,2,2,5,19]) (.node (.node .empty (152,[2,2,2,19]) .empty) (2890,[2,5,17,17]) .empty)) (153,[3,3,17]) (.node (.node (.node .empty (2891,[7,7,59]) .empty) (1523,[1523]) .empty) (154,[2,7,11]) (.node .empty (1524,[2,2,3,127]) .empty))) (155,[5,31]) (.node (.node (.node (.node .empty (156,[2,2,3,13]) .empty) (1525,[5,5,61]) .empty) (157,[157]) (.node .empty (1526,[2,7,109]) .empty)) (158,[2,79]) (.node (.node (.node .empty (4265,[5,853]) .empty) (159,[3,53]) .empty) (7004,[2,2,17,103]) (.node .empty (160,[2,2,2,2,2,5]) .empty)))) (1529,[11,139]) (.node (.node (.node (.node (.node .empty (5637,[3,1879]) .empty) (161,[7,23]) .empty) (1531,[1531]) (.node (.node .empty (162,[2,3,3,3,3]) .empty) (163,[163]) .empty)) (9746,[2,11,443]) (.node (.node (.node .empty (164,[2,2,41]) .empty) (1533,[3,7,73]) .empty) (2903,[2903]) (.node .empty (165,[3,5,11]) .empty))) (166,[2,83]) (.node (.node (.node (.node .empty (1535,[5,307]) .empty) (167,[167]) .empty) (1536,[2,2,2,2,2,2,2,2,2,3]) (.node .empty (168,[2,2,2,3,7]) .empty)) (1537,[29,53]) (.node (.node (.node .empty (169,[13,13]) .empty) (2907,[3,3,17,19]) .empty) (1539,[3,3,3,3,19]) (.node .empty (170,[2,5,17]) .empty)))))
theorem part0011_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 301 342 part0011 := by
  change part0011.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 301 342 = true
  decide +kernel

def part0012 : CertificateTree FactoredPoint := .node part0010 (150,[2,3,5,5]) part0011
theorem part0012_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 258 342 part0012 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 258 342
    part0010 part0011 (150,[2,3,5,5]) (by decide +kernel) part0010_valid
    (by decide +kernel) part0011_valid

def part0013 : CertificateTree FactoredPoint := .node part0009 (128,[2,2,2,2,2,2,2]) part0012
theorem part0013_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 172 342 part0013 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 172 342
    part0009 part0012 (128,[2,2,2,2,2,2,2]) (by decide +kernel) part0009_valid
    (by decide +kernel) part0012_valid

def part0014 : CertificateTree FactoredPoint := .node part0006 (85,[5,17]) part0013
theorem part0014_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 0 342 part0014 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 0 342
    part0006 part0013 (85,[5,17]) (by decide +kernel) part0006_valid
    (by decide +kernel) part0013_valid

def part0015 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (4278,[2,3,23,31]) .empty) (172,[2,2,43]) .empty) (1541,[23,67]) (.node (.node .empty (173,[173]) .empty) (2911,[41,71]) .empty)) (174,[2,3,29]) (.node (.node (.node .empty (2912,[2,2,2,2,2,7,13]) .empty) (1544,[2,2,2,193]) .empty) (175,[5,5,7]) (.node .empty (176,[2,2,2,2,11]) .empty))) (1545,[3,5,103]) (.node (.node (.node (.node .empty (177,[3,59]) .empty) (4284,[2,2,3,3,7,17]) .empty) (178,[2,89]) (.node (.node .empty (2916,[2,2,3,3,3,3,3,3]) .empty) (179,[179]) .empty)) (13869,[3,3,23,67]) (.node (.node (.node .empty (180,[2,2,3,3,5]) .empty) (5656,[2,2,2,7,101]) .empty) (181,[181]) (.node .empty (1550,[2,5,5,31]) .empty)))) (4289,[4289]) (.node (.node (.node (.node (.node .empty (182,[2,7,13]) .empty) (183,[3,61]) .empty) (2921,[23,127]) (.node (.node .empty (184,[2,2,2,23]) .empty) (4291,[7,613]) .empty)) (0,[]) (.node (.node (.node .empty (0,[]) .empty) (186,[2,3,31]) .empty) (1555,[5,311]) (.node .empty (1556,[2,2,389]) .empty))) (187,[11,17]) (.node (.node (.node (.node .empty (188,[2,2,47]) .empty) (4295,[5,859]) .empty) (189,[3,3,3,7]) (.node .empty (1558,[2,19,41]) .empty)) (1559,[1559]) (.node (.node (.node .empty (190,[2,5,19]) .empty) (191,[191]) .empty) (1560,[2,2,2,3,5,13]) (.node .empty (4299,[3,1433]) .empty)))))
theorem part0015_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 343 385 part0015 := by
  change part0015.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 343 385 = true
  decide +kernel

def part0016 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (193,[193]) .empty) (1562,[2,11,71]) .empty) (194,[2,97]) (.node (.node .empty (5670,[2,3,3,3,3,5,7]) .empty) (4302,[2,3,3,239]) .empty)) (195,[3,5,13]) (.node (.node (.node .empty (196,[2,2,7,7]) .empty) (1565,[5,313]) .empty) (197,[197]) (.node .empty (2935,[5,587]) .empty))) (198,[2,3,3,11]) (.node (.node (.node (.node .empty (11150,[2,5,5,223]) .empty) (199,[199]) .empty) (2937,[3,11,89]) (.node (.node .empty (200,[2,2,2,5,5]) .empty) (2938,[2,13,113]) .empty)) (201,[3,67]) (.node (.node (.node .empty (1570,[2,5,157]) .empty) (202,[2,101]) .empty) (2940,[2,2,3,5,7,7]) (.node .empty (1572,[2,2,3,131]) .empty)))) (203,[7,29]) (.node (.node (.node (.node (.node .empty (204,[2,2,3,17]) .empty) (1573,[11,11,13]) .empty) (1574,[2,787]) (.node (.node .empty (205,[5,41]) .empty) (206,[2,103]) .empty)) (1575,[3,3,5,5,7]) (.node (.node (.node .empty (207,[3,3,23]) .empty) (7052,[2,2,41,43]) .empty) (208,[2,2,2,2,13]) (.node .empty (1577,[19,83]) .empty))) (1578,[2,3,263]) (.node (.node (.node (.node .empty (209,[11,19]) .empty) (1579,[1579]) .empty) (210,[2,3,5,7]) (.node .empty (211,[211]) .empty)) (1580,[2,2,5,79]) (.node (.node (.node .empty (212,[2,2,53]) .empty) (1581,[3,17,31]) .empty) (213,[3,71]) (.node .empty (1582,[2,7,113]) .empty)))))
theorem part0016_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 386 428 part0016 := by
  change part0016.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 386 428 = true
  decide +kernel

def part0017 : CertificateTree FactoredPoint := .node part0015 (192,[2,2,2,2,2,2,3]) part0016
theorem part0017_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 343 428 part0017 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 343 428
    part0015 part0016 (192,[2,2,2,2,2,2,3]) (by decide +kernel) part0015_valid
    (by decide +kernel) part0016_valid

def part0018 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (4321,[29,149]) .empty) (1584,[2,2,2,2,3,3,11]) .empty) (215,[5,43]) (.node (.node .empty (5692,[2,2,1423]) .empty) (216,[2,2,2,3,3,3]) .empty)) (5693,[5693]) (.node (.node (.node .empty (217,[7,31]) .empty) (218,[2,109]) .empty) (4325,[5,5,173]) (.node .empty (219,[3,73]) .empty))) (4326,[2,3,7,103]) (.node (.node (.node (.node .empty (4327,[4327]) .empty) (220,[2,2,5,11]) .empty) (4328,[2,2,2,541]) (.node (.node .empty (221,[13,17]) .empty) (0,[]) .empty)) (0,[]) (.node (.node (.node .empty (223,[223]) .empty) (2961,[3,3,7,47]) .empty) (224,[2,2,2,2,2,7]) (.node .empty (4331,[61,71]) .empty)))) (225,[3,3,5,5]) (.node (.node (.node (.node (.node .empty (8439,[3,29,97]) .empty) (226,[2,113]) .empty) (2964,[2,2,3,13,19]) (.node (.node .empty (227,[227]) .empty) (1596,[2,2,3,7,19]) .empty)) (228,[2,2,3,19]) (.node (.node (.node .empty (4335,[3,5,17,17]) .empty) (229,[229]) .empty) (1598,[2,17,47]) (.node .empty (4337,[4337]) .empty))) (230,[2,5,23]) (.node (.node (.node (.node .empty (1600,[2,2,2,2,2,2,5,5]) .empty) (231,[3,7,11]) .empty) (232,[2,2,2,29]) (.node .empty (2970,[2,3,3,3,5,11]) .empty)) (233,[233]) (.node (.node (.node .empty (5709,[3,11,173]) .empty) (234,[2,3,3,13]) .empty) (1603,[7,229]) (.node .empty (1604,[2,2,401]) .empty)))))
theorem part0018_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 429 471 part0018 := by
  change part0018.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 429 471 = true
  decide +kernel

def part0019 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (236,[2,2,59]) .empty) (1605,[3,5,107]) .empty) (237,[3,79]) (.node (.node .empty (1606,[2,11,73]) .empty) (1607,[1607]) .empty)) (238,[2,7,17]) (.node (.node (.node .empty (239,[239]) .empty) (2977,[13,229]) .empty) (240,[2,2,2,2,3,5]) (.node .empty (4347,[3,3,3,7,23]) .empty))) (241,[241]) (.node (.node (.node (.node .empty (12562,[2,11,571]) .empty) (242,[2,11,11]) .empty) (2980,[2,2,5,149]) (.node .empty (5719,[7,19,43]) .empty)) (243,[3,3,3,3,3]) (.node (.node (.node .empty (244,[2,2,61]) .empty) (2982,[2,3,7,71]) .empty) (1614,[2,3,269]) (.node .empty (245,[5,7,7]) .empty)))) (246,[2,3,41]) (.node (.node (.node (.node (.node .empty (7091,[7,1013]) .empty) (1616,[2,2,2,2,101]) .empty) (247,[13,19]) (.node (.node .empty (248,[2,2,2,31]) .empty) (1617,[3,7,7,11]) .empty)) (249,[3,83]) (.node (.node (.node .empty (2987,[29,103]) .empty) (250,[2,5,5,5]) .empty) (5726,[2,7,409]) (.node .empty (251,[251]) .empty))) (2989,[7,7,61]) (.node (.node (.node (.node .empty (252,[2,2,3,3,7]) .empty) (7097,[47,151]) .empty) (1622,[2,811]) (.node .empty (253,[11,23]) .empty)) (254,[2,127]) (.node (.node (.node .empty (2992,[2,2,2,2,11,17]) .empty) (4362,[2,3,727]) .empty) (255,[3,5,17]) (.node .empty (2994,[2,3,499]) .empty)))))
theorem part0019_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 472 513 part0019 := by
  change part0019.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 472 513 = true
  decide +kernel

def part0020 : CertificateTree FactoredPoint := .node part0018 (235,[5,47]) part0019
theorem part0020_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 429 513 part0020 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 429 513
    part0018 part0019 (235,[5,47]) (by decide +kernel) part0018_valid
    (by decide +kernel) part0019_valid

def part0021 : CertificateTree FactoredPoint := .node part0017 (214,[2,107]) part0020
theorem part0021_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 343 513 part0021 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 343 513
    part0017 part0020 (214,[2,107]) (by decide +kernel) part0017_valid
    (by decide +kernel) part0020_valid

def part0022 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (257,[257]) .empty) (2995,[5,599]) .empty) (258,[2,3,43]) (.node (.node .empty (2996,[2,2,7,107]) .empty) (0,[]) .empty)) (0,[]) (.node (.node (.node .empty (1629,[3,3,181]) .empty) (260,[2,2,5,13]) .empty) (261,[3,3,29]) (.node .empty (1630,[2,5,163]) .empty))) (262,[2,131]) (.node (.node (.node (.node .empty (1631,[7,233]) .empty) (263,[263]) .empty) (8477,[7,7,173]) (.node (.node .empty (264,[2,2,2,3,11]) .empty) (1633,[23,71]) .empty)) (3003,[3,7,11,13]) (.node (.node (.node .empty (265,[5,53]) .empty) (3004,[2,2,751]) .empty) (266,[2,7,19]) (.node .empty (267,[3,89]) .empty)))) (3005,[5,601]) (.node (.node (.node (.node (.node .empty (268,[2,2,67]) .empty) (4375,[5,5,5,5,7]) .empty) (269,[269]) (.node (.node .empty (1638,[2,3,3,7,13]) .empty) (270,[2,3,3,3,5]) .empty)) (1639,[11,149]) (.node (.node (.node .empty (271,[271]) .empty) (1640,[2,2,2,5,41]) .empty) (272,[2,2,2,2,17]) (.node .empty (4379,[29,151]) .empty))) (1642,[2,821]) (.node (.node (.node (.node .empty (273,[3,7,13]) .empty) (274,[2,137]) .empty) (1643,[31,53]) (.node .empty (1644,[2,2,3,137]) .empty)) (275,[5,5,11]) (.node (.node (.node .empty (276,[2,2,3,23]) .empty) (3014,[2,11,137]) .empty) (277,[277]) (.node .empty (3015,[3,3,5,67]) .empty)))))
theorem part0022_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 514 556 part0022 := by
  change part0022.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 514 556 = true
  decide +kernel

def part0023 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (3016,[2,2,2,13,29]) .empty) (279,[3,3,31]) .empty) (3017,[7,431]) (.node (.node .empty (3018,[2,3,503]) .empty) (280,[2,2,2,5,7]) .empty)) (281,[281]) (.node (.node (.node .empty (1650,[2,3,5,5,11]) .empty) (282,[2,3,47]) .empty) (1651,[13,127]) (.node .empty (283,[283]) .empty))) (1652,[2,2,7,59]) (.node (.node (.node (.node .empty (284,[2,2,71]) .empty) (1653,[3,19,29]) .empty) (1654,[2,827]) (.node (.node .empty (285,[3,5,19]) .empty) (3024,[2,2,2,2,3,3,3,7]) .empty)) (286,[2,11,13]) (.node (.node (.node .empty (1656,[2,2,2,3,3,23]) .empty) (287,[7,41]) .empty) (1657,[1657]) (.node .empty (288,[2,2,2,2,2,3,3]) .empty)))) (289,[17,17]) (.node (.node (.node (.node (.node .empty (4396,[2,2,7,157]) .empty) (3028,[2,2,757]) .empty) (290,[2,5,29]) (.node (.node .empty (291,[3,97]) .empty) (1660,[2,2,5,83]) .empty)) (292,[2,2,73]) (.node (.node (.node .empty (1661,[11,151]) .empty) (293,[293]) .empty) (3031,[7,433]) (.node .empty (294,[2,3,7,7]) .empty))) (5770,[2,5,577]) (.node (.node (.node (.node .empty (1664,[2,2,2,2,2,2,2,13]) .empty) (295,[5,59]) .empty) (0,[]) (.node .empty (0,[]) .empty)) (297,[3,3,3,11]) (.node (.node (.node .empty (1666,[2,7,7,17]) .empty) (298,[2,149]) .empty) (3036,[2,2,3,11,23]) (.node .empty (1668,[2,2,3,139]) .empty)))))
theorem part0023_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 557 599 part0023 := by
  change part0023.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 557 599 = true
  decide +kernel

def part0024 : CertificateTree FactoredPoint := .node part0022 (278,[2,139]) part0023
theorem part0024_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 514 599 part0024 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 514 599
    part0022 part0023 (278,[2,139]) (by decide +kernel) part0022_valid
    (by decide +kernel) part0023_valid

def part0025 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (300,[2,2,3,5,5]) .empty) (3038,[2,7,7,31]) .empty) (3039,[3,1013]) (.node (.node .empty (301,[7,43]) .empty) (302,[2,151]) .empty)) (3040,[2,2,2,2,2,5,19]) (.node (.node (.node .empty (303,[3,101]) .empty) (1672,[2,2,2,11,19]) .empty) (304,[2,2,2,2,19]) (.node .empty (1673,[7,239]) .empty))) (1674,[2,3,3,3,31]) (.node (.node (.node (.node .empty (305,[5,61]) .empty) (306,[2,3,3,17]) .empty) (1675,[5,5,67]) (.node (.node .empty (307,[307]) .empty) (15366,[2,3,13,197]) .empty)) (3046,[2,1523]) (.node (.node (.node .empty (308,[2,2,7,11]) .empty) (309,[3,103]) .empty) (3047,[11,277]) (.node .empty (3048,[2,2,2,3,127]) .empty)))) (310,[2,5,31]) (.node (.node (.node (.node (.node .empty (311,[311]) .empty) (1680,[2,2,2,2,3,5,7]) .empty) (312,[2,2,2,3,13]) (.node (.node .empty (3050,[2,5,5,61]) .empty) (313,[313]) .empty)) (5789,[7,827]) (.node (.node (.node .empty (314,[2,157]) .empty) (1683,[3,3,11,17]) .empty) (1684,[2,2,421]) (.node .empty (315,[3,3,5,7]) .empty))) (316,[2,2,79]) (.node (.node (.node (.node .empty (1685,[5,337]) .empty) (317,[317]) .empty) (4424,[2,2,2,7,79]) (.node .empty (318,[2,3,53]) .empty)) (1687,[7,241]) (.node (.node (.node .empty (1688,[2,2,2,211]) .empty) (319,[11,29]) .empty) (320,[2,2,2,2,2,2,5]) (.node .empty (3058,[2,11,139]) .empty)))))
theorem part0025_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 600 642 part0025 := by
  change part0025.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 600 642 = true
  decide +kernel

def part0026 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1690,[2,5,13,13]) .empty) (7167,[3,2389]) .empty) (322,[2,7,23]) (.node (.node .empty (1692,[2,2,3,3,47]) .empty) (323,[17,19]) .empty)) (1693,[1693]) (.node (.node (.node .empty (324,[2,2,3,3,3,3]) .empty) (3063,[3,1021]) .empty) (325,[5,5,13]) (.node .empty (326,[2,163]) .empty))) (1695,[3,5,113]) (.node (.node (.node (.node .empty (327,[3,109]) .empty) (3065,[5,613]) .empty) (328,[2,2,2,41]) (.node .empty (3066,[2,3,7,73]) .empty)) (1698,[2,3,283]) (.node (.node (.node .empty (329,[7,47]) .empty) (1699,[1699]) .empty) (330,[2,3,5,11]) (.node .empty (331,[331]) .empty)))) (1700,[2,2,5,5,17]) (.node (.node (.node (.node (.node .empty (332,[2,2,83]) .empty) (3070,[2,5,307]) .empty) (0,[]) (.node (.node .empty (0,[]) .empty) (334,[2,167]) .empty)) (1703,[13,131]) (.node (.node (.node .empty (1704,[2,2,2,3,71]) .empty) (335,[5,67]) .empty) (336,[2,2,2,2,3,7]) (.node .empty (3074,[2,29,53]) .empty))) (337,[337]) (.node (.node (.node (.node .empty (3075,[3,5,5,41]) .empty) (338,[2,13,13]) .empty) (5814,[2,3,3,17,19]) (.node .empty (339,[3,113]) .empty)) (1708,[2,2,7,61]) (.node (.node (.node .empty (1709,[1709]) .empty) (340,[2,2,5,17]) .empty) (3079,[3079]) (.node .empty (341,[11,31]) .empty)))))
theorem part0026_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 643 684 part0026 := by
  change part0026.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 643 684 = true
  decide +kernel

def part0027 : CertificateTree FactoredPoint := .node part0025 (321,[3,107]) part0026
theorem part0027_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 600 684 part0027 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 600 684
    part0025 part0026 (321,[3,107]) (by decide +kernel) part0025_valid
    (by decide +kernel) part0026_valid

def part0028 : CertificateTree FactoredPoint := .node part0024 (299,[13,23]) part0027
theorem part0028_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 514 684 part0028 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 514 684
    part0024 part0027 (299,[13,23]) (by decide +kernel) part0024_valid
    (by decide +kernel) part0027_valid

def part0029 : CertificateTree FactoredPoint := .node part0021 (256,[2,2,2,2,2,2,2,2]) part0028
theorem part0029_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 343 684 part0029 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 343 684
    part0021 part0028 (256,[2,2,2,2,2,2,2,2]) (by decide +kernel) part0021_valid
    (by decide +kernel) part0028_valid

def part0030 : CertificateTree FactoredPoint := .node part0014 (171,[3,3,19]) part0029
theorem part0030_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 0 684 part0030 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 0 684
    part0014 part0029 (171,[3,3,19]) (by decide +kernel) part0014_valid
    (by decide +kernel) part0029_valid

def part0031 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1711,[29,59]) .empty) (343,[7,7,7]) .empty) (3081,[3,13,79]) (.node (.node .empty (344,[2,2,2,43]) .empty) (3082,[2,23,67]) .empty)) (1714,[2,857]) (.node (.node (.node .empty (345,[3,5,23]) .empty) (346,[2,173]) .empty) (1715,[5,7,7,7]) (.node .empty (347,[347]) .empty))) (1716,[2,2,3,11,13]) (.node (.node (.node (.node .empty (348,[2,2,3,29]) .empty) (1717,[17,101]) .empty) (349,[349]) (.node (.node .empty (5825,[5,5,233]) .empty) (1719,[3,3,191]) .empty)) (350,[2,5,5,7]) (.node (.node (.node .empty (351,[3,3,3,13]) .empty) (1720,[2,2,2,5,43]) .empty) (352,[2,2,2,2,2,11]) (.node .empty (3090,[2,3,5,103]) .empty)))) (353,[353]) (.node (.node (.node (.node (.node .empty (1722,[2,3,7,41]) .empty) (354,[2,3,59]) .empty) (7199,[23,313]) (.node (.node .empty (1724,[2,2,431]) .empty) (355,[5,71]) .empty)) (356,[2,2,89]) (.node (.node (.node .empty (1725,[3,5,5,23]) .empty) (1726,[2,863]) .empty) (357,[3,7,17]) (.node .empty (358,[2,179]) .empty))) (1727,[11,157]) (.node (.node (.node (.node .empty (359,[359]) .empty) (1728,[2,2,2,2,2,2,3,3,3]) .empty) (360,[2,2,2,3,3,5]) (.node .empty (9943,[61,163]) .empty)) (361,[19,19]) (.node (.node (.node .empty (1730,[2,5,173]) .empty) (362,[2,181]) .empty) (3100,[2,2,5,5,31]) (.node .empty (363,[3,11,11]) .empty)))))
theorem part0031_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 685 727 part0031 := by
  change part0031.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 685 727 = true
  decide +kernel

def part0032 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1733,[1733]) .empty) (364,[2,2,7,13]) .empty) (1734,[2,3,17,17]) (.node (.node .empty (365,[5,73]) .empty) (366,[2,3,61]) .empty)) (1735,[5,347]) (.node (.node (.node .empty (367,[367]) .empty) (1736,[2,2,2,7,31]) .empty) (368,[2,2,2,2,23]) (.node .empty (4475,[5,5,179]) .empty))) (369,[3,3,41]) (.node (.node (.node (.node .empty (1738,[2,11,79]) .empty) (0,[]) .empty) (0,[]) (.node (.node .empty (3109,[3109]) .empty) (371,[7,53]) .empty)) (372,[2,2,3,31]) (.node (.node (.node .empty (3110,[2,5,311]) .empty) (373,[373]) .empty) (1742,[2,13,67]) (.node .empty (3112,[2,2,2,389]) .empty)))) (374,[2,11,17]) (.node (.node (.node (.node (.node .empty (375,[3,5,5,5]) .empty) (3113,[11,283]) .empty) (376,[2,2,2,47]) (.node (.node .empty (1745,[5,349]) .empty) (1746,[2,3,3,97]) .empty)) (377,[13,29]) (.node (.node (.node .empty (378,[2,3,3,3,7]) .empty) (3116,[2,2,19,41]) .empty) (379,[379]) (.node .empty (1748,[2,2,19,23]) .empty))) (3118,[2,1559]) (.node (.node (.node (.node .empty (380,[2,2,5,19]) .empty) (381,[3,127]) .empty) (1750,[2,5,5,5,7]) (.node .empty (382,[2,191]) .empty)) (1751,[17,103]) (.node (.node (.node .empty (383,[383]) .empty) (4490,[2,5,449]) .empty) (1753,[1753]) (.node .empty (384,[2,2,2,2,2,2,2,3]) .empty)))))
theorem part0032_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 728 770 part0032 := by
  change part0032.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 728 770 = true
  decide +kernel

def part0033 : CertificateTree FactoredPoint := .node part0031 (3101,[7,443]) part0032
theorem part0033_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 685 770 part0033 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 685 770
    part0031 part0032 (3101,[7,443]) (by decide +kernel) part0031_valid
    (by decide +kernel) part0032_valid

def part0034 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (7230,[2,3,5,241]) .empty) (386,[2,193]) .empty) (1755,[3,3,3,5,13]) (.node (.node .empty (387,[3,3,43]) .empty) (4494,[2,3,7,107]) .empty)) (388,[2,2,97]) (.node (.node (.node .empty (1757,[7,251]) .empty) (389,[389]) .empty) (3127,[53,59]) (.node .empty (1759,[1759]) .empty))) (390,[2,3,5,13]) (.node (.node (.node (.node .empty (5867,[5867]) .empty) (391,[17,23]) .empty) (392,[2,2,2,7,7]) (.node (.node .empty (3130,[2,5,313]) .empty) (393,[3,131]) .empty)) (3131,[31,101]) (.node (.node (.node .empty (394,[2,197]) .empty) (1763,[41,43]) .empty) (1764,[2,2,3,3,7,7]) (.node .empty (395,[5,79]) .empty)))) (396,[2,2,3,3,11]) (.node (.node (.node (.node (.node .empty (1765,[5,353]) .empty) (397,[397]) .empty) (5873,[7,839]) (.node (.node .empty (398,[2,199]) .empty) (1767,[3,19,31]) .empty)) (3137,[3137]) (.node (.node (.node .empty (399,[3,7,19]) .empty) (400,[2,2,2,2,5,5]) .empty) (1769,[29,61]) (.node .empty (401,[401]) .empty))) (1770,[2,3,5,59]) (.node (.node (.node (.node .empty (402,[2,3,67]) .empty) (3140,[2,2,5,157]) .empty) (1772,[2,2,443]) (.node .empty (403,[13,31]) .empty)) (404,[2,2,101]) (.node (.node (.node .empty (4511,[13,347]) .empty) (405,[3,3,3,3,5]) .empty) (3143,[7,449]) (.node .empty (3144,[2,2,2,3,131]) .empty)))))
theorem part0034_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 771 813 part0034 := by
  change part0034.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 771 813 = true
  decide +kernel

def part0035 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (0,[]) .empty) (0,[]) .empty) (408,[2,2,2,3,17]) (.node (.node .empty (3146,[2,11,11,13]) .empty) (409,[409]) .empty)) (1778,[2,7,127]) (.node (.node (.node .empty (1779,[3,593]) .empty) (410,[2,5,41]) .empty) (411,[3,137]) (.node .empty (1780,[2,2,5,89]) .empty))) (412,[2,2,103]) (.node (.node (.node (.node .empty (1781,[13,137]) .empty) (1782,[2,3,3,3,3,11]) .empty) (413,[7,59]) (.node (.node .empty (414,[2,3,3,23]) .empty) (4521,[3,11,137]) .empty)) (1784,[2,2,2,223]) (.node (.node (.node .empty (415,[5,83]) .empty) (416,[2,2,2,2,2,13]) .empty) (3154,[2,19,83]) (.node .empty (417,[3,139]) .empty)))) (1786,[2,19,47]) (.node (.node (.node (.node (.node .empty (1787,[1787]) .empty) (418,[2,11,19]) .empty) (419,[419]) (.node (.node .empty (4526,[2,31,73]) .empty) (1789,[1789]) .empty)) (420,[2,2,3,5,7]) (.node (.node (.node .empty (421,[421]) .empty) (1790,[2,5,179]) .empty) (422,[2,211]) (.node .empty (3160,[2,2,2,5,79]) .empty))) (423,[3,3,47]) (.node (.node (.node (.node .empty (3161,[29,109]) .empty) (424,[2,2,2,53]) .empty) (1793,[11,163]) (.node .empty (3163,[3163]) .empty)) (425,[5,5,17]) (.node (.node (.node .empty (426,[2,3,71]) .empty) (1795,[5,359]) .empty) (1796,[2,2,449]) (.node .empty (427,[7,61]) .empty)))))
theorem part0035_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 814 856 part0035 := by
  change part0035.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 814 856 = true
  decide +kernel

def part0036 : CertificateTree FactoredPoint := .node part0034 (406,[2,7,29]) part0035
theorem part0036_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 771 856 part0036 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 771 856
    part0034 part0035 (406,[2,7,29]) (by decide +kernel) part0034_valid
    (by decide +kernel) part0035_valid

def part0037 : CertificateTree FactoredPoint := .node part0033 (385,[5,7,11]) part0036
theorem part0037_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 685 856 part0037 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 685 856
    part0033 part0036 (385,[5,7,11]) (by decide +kernel) part0033_valid
    (by decide +kernel) part0036_valid

def part0038 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (4535,[5,907]) .empty) (3167,[3167]) .empty) (429,[3,11,13]) (.node (.node .empty (3168,[2,2,2,2,2,3,3,11]) .empty) (430,[2,5,43]) .empty)) (431,[431]) (.node (.node (.node .empty (5907,[3,11,179]) .empty) (1801,[1801]) .empty) (432,[2,2,2,2,3,3,3]) (.node .empty (433,[433]) .empty))) (1802,[2,17,53]) (.node (.node (.node (.node .empty (1803,[3,601]) .empty) (434,[2,7,31]) .empty) (4542,[2,3,757]) (.node (.node .empty (435,[3,5,29]) .empty) (436,[2,2,109]) .empty)) (1805,[5,19,19]) (.node (.node (.node .empty (4544,[2,2,2,2,2,2,71]) .empty) (437,[19,23]) .empty) (438,[2,3,73]) (.node .empty (1807,[13,139]) .empty)))) (439,[439]) (.node (.node (.node (.node (.node .empty (8653,[17,509]) .empty) (1809,[3,3,3,67]) .empty) (440,[2,2,2,5,11]) (.node (.node .empty (441,[3,3,7,7]) .empty) (1810,[2,5,181]) .empty)) (1811,[1811]) (.node (.node (.node .empty (442,[2,13,17]) .empty) (443,[443]) .empty) (8657,[11,787]) (.node .empty (0,[]) .empty))) (0,[]) (.node (.node (.node (.node .empty (1814,[2,907]) .empty) (445,[5,89]) .empty) (446,[2,223]) (.node .empty (1815,[3,5,11,11]) .empty)) (447,[3,149]) (.node (.node (.node .empty (4554,[2,3,3,11,23]) .empty) (448,[2,2,2,2,2,2,7]) .empty) (1817,[23,79]) (.node .empty (449,[449]) .empty)))))
theorem part0038_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 857 899 part0038 := by
  change part0038.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 857 899 = true
  decide +kernel

def part0039 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (450,[2,3,3,5,5]) .empty) (1819,[17,107]) .empty) (1820,[2,2,5,7,13]) (.node (.node .empty (451,[11,41]) .empty) (452,[2,2,113]) .empty)) (4559,[47,97]) (.node (.node (.node .empty (453,[3,151]) .empty) (4560,[2,2,2,2,3,5,19]) .empty) (454,[2,227]) (.node .empty (3192,[2,2,2,3,7,19]) .empty))) (455,[5,7,13]) (.node (.node (.node (.node .empty (3193,[31,103]) .empty) (456,[2,2,2,3,19]) .empty) (1825,[5,5,73]) (.node (.node .empty (457,[457]) .empty) (1826,[2,11,83]) .empty)) (458,[2,229]) (.node (.node (.node .empty (1827,[3,3,7,29]) .empty) (459,[3,3,3,17]) .empty) (3197,[23,139]) (.node .empty (4567,[4567]) .empty)))) (460,[2,2,5,23]) (.node (.node (.node (.node (.node .empty (461,[461]) .empty) (1830,[2,3,5,61]) .empty) (1831,[1831]) (.node (.node .empty (462,[2,3,7,11]) .empty) (463,[463]) .empty)) (3201,[3,11,97]) (.node (.node (.node .empty (464,[2,2,2,2,29]) .empty) (1833,[3,13,47]) .empty) (3203,[3203]) (.node .empty (465,[3,5,31]) .empty))) (466,[2,233]) (.node (.node (.node (.node .empty (1835,[5,367]) .empty) (467,[467]) .empty) (3205,[5,641]) (.node .empty (468,[2,2,3,3,13]) .empty)) (1837,[11,167]) (.node (.node (.node .empty (1838,[2,919]) .empty) (469,[7,67]) .empty) (1839,[3,613]) (.node .empty (470,[2,5,47]) .empty)))))
theorem part0039_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 900 942 part0039 := by
  change part0039.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 900 942 = true
  decide +kernel

def part0040 : CertificateTree FactoredPoint := .node part0038 (4556,[2,2,17,67]) part0039
theorem part0040_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 857 942 part0040 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 857 942
    part0038 part0039 (4556,[2,2,17,67]) (by decide +kernel) part0038_valid
    (by decide +kernel) part0039_valid

def part0041 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1840,[2,2,2,2,5,23]) .empty) (472,[2,2,2,59]) .empty) (1841,[7,263]) (.node (.node .empty (1842,[2,3,307]) .empty) (473,[11,43]) .empty)) (474,[2,3,79]) (.node (.node (.node .empty (1843,[19,97]) .empty) (1844,[2,2,461]) .empty) (475,[5,5,19]) (.node .empty (3214,[2,1607]) .empty))) (476,[2,2,7,17]) (.node (.node (.node (.node .empty (477,[3,3,53]) .empty) (1846,[2,13,71]) .empty) (478,[2,239]) (.node (.node .empty (5954,[2,13,229]) .empty) (479,[479]) .empty)) (1848,[2,2,2,3,7,11]) (.node (.node (.node .empty (480,[2,2,2,2,2,3,5]) .empty) (4587,[3,11,139]) .empty) (0,[]) (.node .empty (0,[]) .empty)))) (482,[2,241]) (.node (.node (.node (.node (.node .empty (4589,[13,353]) .empty) (1852,[2,2,463]) .empty) (483,[3,7,23]) (.node (.node .empty (484,[2,2,11,11]) .empty) (1853,[17,109]) .empty)) (1854,[2,3,3,103]) (.node (.node (.node .empty (485,[5,97]) .empty) (1855,[5,7,53]) .empty) (486,[2,3,3,3,3,3]) (.node .empty (487,[487]) .empty))) (3225,[3,5,5,43]) (.node (.node (.node (.node .empty (488,[2,2,2,61]) .empty) (4595,[5,919]) .empty) (489,[3,163]) (.node .empty (3227,[7,461]) .empty)) (3228,[2,2,3,269]) (.node (.node (.node .empty (490,[2,5,7,7]) .empty) (491,[491]) .empty) (1860,[2,2,3,5,31]) (.node .empty (492,[2,2,3,41]) .empty)))))
theorem part0041_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 943 985 part0041 := by
  change part0041.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 943 985 = true
  decide +kernel

def part0042 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (3231,[3,3,359]) .empty) (493,[17,29]) .empty) (1863,[3,3,3,3,23]) (.node (.node .empty (494,[2,13,19]) .empty) (1864,[2,2,2,233]) .empty)) (495,[3,3,5,11]) (.node (.node (.node .empty (496,[2,2,2,2,31]) .empty) (1865,[5,373]) .empty) (1866,[2,3,311]) (.node .empty (497,[7,71]) .empty))) (498,[2,3,83]) (.node (.node (.node (.node .empty (4605,[3,5,307]) .empty) (499,[499]) .empty) (3237,[3,13,83]) (.node .empty (500,[2,2,5,5,5]) .empty)) (1869,[3,7,89]) (.node (.node (.node .empty (501,[3,167]) .empty) (3239,[41,79]) .empty) (502,[2,251]) (.node .empty (4609,[11,419]) .empty)))) (503,[503]) (.node (.node (.node (.node (.node .empty (3241,[7,463]) .empty) (504,[2,2,2,3,3,7]) .empty) (4611,[3,29,53]) (.node (.node .empty (1874,[2,937]) .empty) (505,[5,101]) .empty)) (1875,[3,5,5,5,5]) (.node (.node (.node .empty (506,[2,11,23]) .empty) (507,[3,13,13]) .empty) (1876,[2,2,7,67]) (.node .empty (508,[2,2,127]) .empty))) (5984,[2,2,2,2,2,11,17]) (.node (.node (.node (.node .empty (509,[509]) .empty) (3247,[17,191]) .empty) (1879,[1879]) (.node .empty (510,[2,3,5,17]) .empty)) (3249,[3,3,19,19]) (.node (.node (.node .empty (511,[7,73]) .empty) (5988,[2,2,3,499]) .empty) (512,[2,2,2,2,2,2,2,2,2]) (.node .empty (513,[3,3,3,19]) .empty)))))
theorem part0042_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 986 1027 part0042 := by
  change part0042.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 986 1027 = true
  decide +kernel

def part0043 : CertificateTree FactoredPoint := .node part0041 (4599,[3,3,7,73]) part0042
theorem part0043_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 943 1027 part0043 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 943 1027
    part0041 part0042 (4599,[3,3,7,73]) (by decide +kernel) part0041_valid
    (by decide +kernel) part0042_valid

def part0044 : CertificateTree FactoredPoint := .node part0040 (471,[3,157]) part0043
theorem part0044_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 857 1027 part0044 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 857 1027
    part0040 part0043 (471,[3,157]) (by decide +kernel) part0040_valid
    (by decide +kernel) part0043_valid

def part0045 : CertificateTree FactoredPoint := .node part0037 (428,[2,2,107]) part0044
theorem part0045_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 685 1027 part0045 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 685 1027
    part0037 part0044 (428,[2,2,107]) (by decide +kernel) part0037_valid
    (by decide +kernel) part0044_valid

def part0046 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (514,[2,257]) .empty) (1883,[7,269]) .empty) (1884,[2,2,3,157]) (.node (.node .empty (515,[5,103]) .empty) (516,[2,2,3,43]) .empty)) (4623,[3,23,67]) (.node (.node (.node .empty (3255,[3,5,7,31]) .empty) (517,[11,47]) .empty) (0,[]) (.node .empty (0,[]) .empty))) (519,[3,173]) (.node (.node (.node (.node .empty (7364,[2,2,7,263]) .empty) (1889,[1889]) .empty) (520,[2,2,2,5,13]) (.node (.node .empty (521,[521]) .empty) (1890,[2,3,3,3,5,7]) .empty)) (522,[2,3,3,29]) (.node (.node (.node .empty (1891,[31,61]) .empty) (523,[523]) .empty) (1892,[2,2,11,43]) (.node .empty (524,[2,2,131]) .empty)))) (3262,[2,7,233]) (.node (.node (.node (.node (.node .empty (1894,[2,947]) .empty) (525,[3,5,5,7]) .empty) (526,[2,263]) (.node (.node .empty (1895,[5,379]) .empty) (1896,[2,2,2,3,79]) .empty)) (527,[17,31]) (.node (.node (.node .empty (528,[2,2,2,2,3,11]) .empty) (1897,[7,271]) .empty) (529,[23,23]) (.node .empty (1898,[2,13,73]) .empty))) (1899,[3,3,211]) (.node (.node (.node (.node .empty (530,[2,5,53]) .empty) (531,[3,3,59]) .empty) (1900,[2,2,5,5,19]) (.node .empty (1901,[1901]) .empty)) (532,[2,2,7,19]) (.node (.node (.node .empty (1902,[2,3,317]) .empty) (533,[13,41]) .empty) (534,[2,3,89]) (.node .empty (1903,[11,173]) .empty)))))
theorem part0046_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1028 1070 part0046 := by
  change part0046.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 1028 1070 = true
  decide +kernel

def part0047 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (535,[5,107]) .empty) (536,[2,2,2,67]) .empty) (1905,[3,5,127]) (.node (.node .empty (537,[3,179]) .empty) (3275,[5,5,131]) .empty)) (538,[2,269]) (.node (.node (.node .empty (3276,[2,2,3,3,7,13]) .empty) (1908,[2,2,3,3,53]) .empty) (539,[7,7,11]) (.node .empty (540,[2,2,3,3,3,5]) .empty))) (1909,[23,83]) (.node (.node (.node (.node .empty (541,[541]) .empty) (1910,[2,5,191]) .empty) (542,[2,271]) (.node (.node .empty (1911,[3,7,7,13]) .empty) (543,[3,181]) .empty)) (3281,[17,193]) (.node (.node (.node .empty (544,[2,2,2,2,2,17]) .empty) (8758,[2,29,151]) .empty) (4652,[2,2,1163]) (.node .empty (545,[5,109]) .empty)))) (3284,[2,2,821]) (.node (.node (.node (.node (.node .empty (546,[2,3,7,13]) .empty) (547,[547]) .empty) (3285,[3,3,5,73]) (.node (.node .empty (548,[2,2,137]) .empty) (3286,[2,31,53]) .empty)) (549,[3,3,61]) (.node (.node (.node .empty (1918,[2,7,137]) .empty) (3288,[2,2,2,3,137]) .empty) (550,[2,5,5,11]) (.node .empty (1920,[2,2,2,2,2,2,2,3,5]) .empty))) (551,[19,29]) (.node (.node (.node (.node .empty (552,[2,2,2,3,23]) .empty) (1921,[17,113]) .empty) (1922,[2,31,31]) (.node .empty (553,[7,79]) .empty)) (554,[2,277]) (.node (.node (.node .empty (4661,[59,79]) .empty) (0,[]) .empty) (0,[]) (.node .empty (556,[2,2,139]) .empty)))))
theorem part0047_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1071 1113 part0047 := by
  change part0047.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 1071 1113 = true
  decide +kernel

def part0048 : CertificateTree FactoredPoint := .node part0046 (3273,[3,1091]) part0047
theorem part0048_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1028 1113 part0048 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 1028 1113
    part0046 part0047 (3273,[3,1091]) (by decide +kernel) part0046_valid
    (by decide +kernel) part0047_valid

def part0049 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (557,[557]) .empty) (3295,[5,659]) .empty) (558,[2,3,3,31]) (.node (.node .empty (1927,[41,47]) .empty) (1928,[2,2,2,241]) .empty)) (559,[13,43]) (.node (.node (.node .empty (1929,[3,643]) .empty) (560,[2,2,2,2,5,7]) .empty) (3299,[3299]) (.node .empty (561,[3,11,17]) .empty))) (562,[2,281]) (.node (.node (.node (.node .empty (3300,[2,2,3,5,5,11]) .empty) (563,[563]) .empty) (1932,[2,2,3,7,23]) (.node (.node .empty (564,[2,2,3,47]) .empty) (3302,[2,13,127]) .empty)) (1934,[2,967]) (.node (.node (.node .empty (565,[5,113]) .empty) (566,[2,283]) .empty) (1935,[3,3,5,43]) (.node .empty (567,[3,3,3,3,7]) .empty)))) (3305,[5,661]) (.node (.node (.node (.node (.node .empty (568,[2,2,2,71]) .empty) (1937,[13,149]) .empty) (569,[569]) (.node (.node .empty (1938,[2,3,17,19]) .empty) (3308,[2,2,827]) .empty)) (570,[2,3,5,19]) (.node (.node (.node .empty (571,[571]) .empty) (1940,[2,2,5,97]) .empty) (1941,[3,647]) (.node .empty (572,[2,2,11,13]) .empty))) (573,[3,191]) (.node (.node (.node (.node .empty (4680,[2,2,2,3,3,5,13]) .empty) (3312,[2,2,2,2,3,3,23]) .empty) (574,[2,7,41]) (.node .empty (3313,[3313]) .empty)) (575,[5,5,23]) (.node (.node (.node .empty (3314,[2,1657]) .empty) (576,[2,2,2,2,2,2,3,3]) .empty) (577,[577]) (.node .empty (1946,[2,7,139]) .empty)))))
theorem part0049_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1114 1156 part0049 := by
  change part0049.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 1114 1156 = true
  decide +kernel

def part0050 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1947,[3,11,59]) .empty) (579,[3,193]) .empty) (3317,[31,107]) (.node (.node .empty (1949,[1949]) .empty) (580,[2,2,5,29]) .empty)) (3319,[3319]) (.node (.node (.node .empty (581,[7,83]) .empty) (582,[2,3,97]) .empty) (3320,[2,2,2,5,83]) (.node .empty (1952,[2,2,2,2,2,61]) .empty))) (583,[11,53]) (.node (.node (.node (.node .empty (584,[2,2,2,73]) .empty) (1953,[3,3,7,31]) .empty) (1954,[2,977]) (.node .empty (585,[3,3,5,13]) .empty)) (586,[2,293]) (.node (.node (.node .empty (4693,[13,19,19]) .empty) (587,[587]) .empty) (6063,[3,43,47]) (.node .empty (588,[2,2,3,7,7]) .empty)))) (1957,[19,103]) (.node (.node (.node (.node (.node .empty (3327,[3,1109]) .empty) (589,[19,31]) .empty) (1959,[3,653]) (.node (.node .empty (590,[2,5,59]) .empty) (591,[3,197]) .empty)) (1960,[2,2,2,5,7,7]) (.node (.node (.node .empty (0,[]) .empty) (0,[]) .empty) (593,[593]) (.node .empty (4700,[2,2,5,5,47]) .empty))) (594,[2,3,3,3,11]) (.node (.node (.node (.node .empty (1963,[13,151]) .empty) (595,[5,7,17]) .empty) (3333,[3,11,101]) (.node .empty (596,[2,2,149]) .empty)) (1965,[3,5,131]) (.node (.node (.node .empty (597,[3,199]) .empty) (8811,[3,3,11,89]) .empty) (3336,[2,2,2,3,139]) (.node .empty (598,[2,13,23]) .empty)))))
theorem part0050_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1157 1198 part0050 := by
  change part0050.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 1157 1198 = true
  decide +kernel

def part0051 : CertificateTree FactoredPoint := .node part0049 (578,[2,17,17]) part0050
theorem part0051_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1114 1198 part0051 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 1114 1198
    part0049 part0050 (578,[2,17,17]) (by decide +kernel) part0049_valid
    (by decide +kernel) part0050_valid

def part0052 : CertificateTree FactoredPoint := .node part0048 (6032,[2,2,2,2,13,29]) part0051
theorem part0052_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1028 1198 part0052 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 1028 1198
    part0048 part0051 (6032,[2,2,2,2,13,29]) (by decide +kernel) part0048_valid
    (by decide +kernel) part0051_valid

def part0053 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (3337,[47,71]) .empty) (600,[2,2,2,3,5,5]) .empty) (1969,[11,179]) (.node (.node .empty (601,[601]) .empty) (1970,[2,5,197]) .empty)) (1971,[3,3,3,73]) (.node (.node (.node .empty (602,[2,7,43]) .empty) (603,[3,3,67]) .empty) (1972,[2,2,17,29]) (.node .empty (604,[2,2,151]) .empty))) (4711,[7,673]) (.node (.node (.node (.node .empty (3343,[3343]) .empty) (605,[5,11,11]) .empty) (606,[2,3,101]) (.node (.node .empty (1975,[5,5,79]) .empty) (607,[607]) .empty)) (1976,[2,2,2,13,19]) (.node (.node (.node .empty (608,[2,2,2,2,2,19]) .empty) (3346,[2,7,239]) .empty) (3347,[3347]) (.node .empty (609,[3,7,29]) .empty)))) (1979,[1979]) (.node (.node (.node (.node (.node .empty (610,[2,5,61]) .empty) (6087,[3,2029]) .empty) (611,[13,47]) (.node (.node .empty (612,[2,2,3,3,17]) .empty) (1981,[7,283]) .empty)) (613,[613]) (.node (.node (.node .empty (4720,[2,2,2,2,5,59]) .empty) (614,[2,307]) .empty) (10197,[3,3,11,103]) (.node .empty (1984,[2,2,2,2,2,2,31]) .empty))) (615,[3,5,41]) (.node (.node (.node (.node .empty (4723,[4723]) .empty) (616,[2,2,2,7,11]) .empty) (617,[617]) (.node .empty (10200,[2,2,2,3,5,5,17]) .empty)) (618,[2,3,103]) (.node (.node (.node .empty (4725,[3,3,3,5,5,7]) .empty) (619,[619]) .empty) (1988,[2,2,7,71]) (.node .empty (6096,[2,2,2,2,3,127]) .empty)))))
theorem part0053_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1199 1241 part0053 := by
  change part0053.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 1199 1241 = true
  decide +kernel

def part0054 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (621,[3,3,3,23]) .empty) (1990,[2,5,199]) .empty) (622,[2,311]) (.node (.node .empty (1991,[11,181]) .empty) (1992,[2,2,2,3,83]) .empty)) (623,[7,89]) (.node (.node (.node .empty (624,[2,2,2,2,3,13]) .empty) (4731,[3,19,83]) .empty) (625,[5,5,5,5]) (.node .empty (3363,[3,19,59]) .empty))) (626,[2,313]) (.node (.node (.node (.node .empty (7471,[31,241]) .empty) (1996,[2,2,499]) .empty) (627,[3,11,19]) (.node (.node .empty (628,[2,2,157]) .empty) (3366,[2,3,3,11,17]) .empty)) (0,[]) (.node (.node (.node .empty (0,[]) .empty) (1999,[1999]) .empty) (630,[2,3,3,5,7]) (.node .empty (631,[631]) .empty)))) (4738,[2,23,103]) (.node (.node (.node (.node (.node .empty (632,[2,2,2,79]) .empty) (2001,[3,23,29]) .empty) (633,[3,211]) (.node (.node .empty (4740,[2,2,3,5,79]) .empty) (634,[2,317]) .empty)) (4741,[11,431]) (.node (.node (.node .empty (2004,[2,2,3,167]) .empty) (635,[5,127]) .empty) (636,[2,2,3,53]) (.node .empty (2005,[5,401]) .empty))) (3375,[3,3,3,5,5,5]) (.node (.node (.node (.node .empty (637,[7,7,13]) .empty) (2007,[3,3,223]) .empty) (638,[2,11,29]) (.node .empty (639,[3,3,71]) .empty)) (3377,[11,307]) (.node (.node (.node .empty (640,[2,2,2,2,2,2,2,5]) .empty) (2009,[7,7,41]) .empty) (641,[641]) (.node .empty (2010,[2,3,5,67]) .empty)))))
theorem part0054_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1242 1284 part0054 := by
  change part0054.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 1242 1284 = true
  decide +kernel

def part0055 : CertificateTree FactoredPoint := .node part0053 (620,[2,2,5,31]) part0054
theorem part0055_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1199 1284 part0055 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 1199 1284
    part0053 part0054 (620,[2,2,5,31]) (by decide +kernel) part0053_valid
    (by decide +kernel) part0054_valid

def part0056 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (3380,[2,2,5,13,13]) .empty) (643,[643]) .empty) (3381,[3,7,7,23]) (.node (.node .empty (4751,[4751]) .empty) (644,[2,2,7,23]) .empty)) (4752,[2,2,2,2,3,3,3,11]) (.node (.node (.node .empty (645,[3,5,43]) .empty) (2015,[5,13,31]) .empty) (646,[2,17,19]) (.node .empty (647,[647]) .empty))) (3385,[5,677]) (.node (.node (.node (.node .empty (2017,[2017]) .empty) (648,[2,2,2,3,3,3,3]) .empty) (2018,[2,1009]) (.node (.node .empty (649,[11,59]) .empty) (2019,[3,673]) .empty)) (650,[2,5,5,13]) (.node (.node (.node .empty (3389,[3389]) .empty) (651,[3,7,31]) .empty) (652,[2,2,163]) (.node .empty (2021,[43,47]) .empty)))) (653,[653]) (.node (.node (.node (.node (.node .empty (7498,[2,23,163]) .empty) (654,[2,3,109]) .empty) (2023,[7,17,17]) (.node (.node .empty (4762,[2,2381]) .empty) (655,[5,131]) .empty)) (656,[2,2,2,2,41]) (.node (.node (.node .empty (4763,[11,433]) .empty) (657,[3,3,73]) .empty) (7502,[2,11,11,31]) (.node .empty (2027,[2027]) .empty))) (658,[2,7,47]) (.node (.node (.node (.node .empty (659,[659]) .empty) (3397,[43,79]) .empty) (2029,[2029]) (.node .empty (660,[2,2,3,5,11]) .empty)) (661,[661]) (.node (.node (.node .empty (3399,[3,11,103]) .empty) (662,[2,331]) .empty) (3400,[2,2,2,5,5,17]) (.node .empty (2032,[2,2,2,2,127]) .empty)))))
theorem part0056_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1285 1327 part0056 := by
  change part0056.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 1285 1327 = true
  decide +kernel

def part0057 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (664,[2,2,2,83]) .empty) (2033,[19,107]) .empty) (665,[5,7,19]) (.node (.node .empty (3403,[41,83]) .empty) (0,[]) .empty)) (0,[]) (.node (.node (.node .empty (2036,[2,2,509]) .empty) (667,[23,29]) .empty) (668,[2,2,167]) (.node .empty (2037,[3,7,97]) .empty))) (669,[3,223]) (.node (.node (.node (.node .empty (6145,[5,1229]) .empty) (2039,[2039]) .empty) (670,[2,5,67]) (.node .empty (4778,[2,2389]) .empty)) (671,[11,61]) (.node (.node (.node .empty (672,[2,2,2,2,2,3,7]) .empty) (2041,[13,157]) .empty) (673,[673]) (.node .empty (4780,[2,2,5,239]) .empty)))) (674,[2,337]) (.node (.node (.node (.node (.node .empty (4781,[7,683]) .empty) (675,[3,3,3,5,5]) .empty) (2044,[2,2,7,73]) (.node (.node .empty (676,[2,2,13,13]) .empty) (2045,[5,409]) .empty)) (677,[677]) (.node (.node (.node .empty (2046,[2,3,11,31]) .empty) (678,[2,3,113]) .empty) (2047,[23,89]) (.node .empty (4786,[2,2393]) .empty))) (679,[7,97]) (.node (.node (.node (.node .empty (2049,[3,683]) .empty) (680,[2,2,2,5,17]) .empty) (681,[3,227]) (.node .empty (2050,[2,5,5,41]) .empty)) (4789,[4789]) (.node (.node (.node .empty (682,[2,11,31]) .empty) (683,[683]) .empty) (3421,[11,311]) (.node .empty (684,[2,2,3,3,19]) .empty)))))
theorem part0057_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1328 1369 part0057 := by
  change part0057.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 1328 1369 = true
  decide +kernel

def part0058 : CertificateTree FactoredPoint := .node part0056 (663,[3,13,17]) part0057
theorem part0058_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1285 1369 part0058 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 1285 1369
    part0056 part0057 (663,[3,13,17]) (by decide +kernel) part0056_valid
    (by decide +kernel) part0057_valid

def part0059 : CertificateTree FactoredPoint := .node part0055 (642,[2,3,107]) part0058
theorem part0059_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1199 1369 part0059 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 1199 1369
    part0055 part0058 (642,[2,3,107]) (by decide +kernel) part0055_valid
    (by decide +kernel) part0058_valid

def part0060 : CertificateTree FactoredPoint := .node part0052 (599,[599]) part0059
theorem part0060_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1028 1369 part0060 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 1028 1369
    part0052 part0059 (599,[599]) (by decide +kernel) part0052_valid
    (by decide +kernel) part0059_valid

def part0061 : CertificateTree FactoredPoint := .node part0045 (5989,[53,113]) part0060
theorem part0061_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 685 1369 part0061 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 685 1369
    part0045 part0060 (5989,[53,113]) (by decide +kernel) part0045_valid
    (by decide +kernel) part0060_valid

def part0062 : CertificateTree FactoredPoint := .node part0030 (342,[2,3,3,19]) part0061
theorem part0062_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 0 1369 part0062 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 0 1369
    part0030 part0061 (342,[2,3,3,19]) (by decide +kernel) part0030_valid
    (by decide +kernel) part0061_valid

def part0063 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (4792,[2,2,2,599]) .empty) (685,[5,137]) .empty) (686,[2,7,7,7]) (.node (.node .empty (2055,[3,5,137]) .empty) (687,[3,229]) .empty)) (3425,[5,5,137]) (.node (.node (.node .empty (688,[2,2,2,2,43]) .empty) (2057,[11,11,17]) .empty) (2058,[2,3,7,7,7]) (.node .empty (689,[13,53]) .empty))) (3428,[2,2,857]) (.node (.node (.node (.node .empty (690,[2,3,5,23]) .empty) (691,[691]) .empty) (2060,[2,2,5,103]) (.node (.node .empty (692,[2,2,173]) .empty) (3430,[2,5,7,7,7]) .empty)) (2062,[2,1031]) (.node (.node (.node .empty (693,[3,3,7,11]) .empty) (694,[2,347]) .empty) (3432,[2,2,2,3,11,13]) (.node .empty (2064,[2,2,2,2,3,43]) .empty)))) (695,[5,139]) (.node (.node (.node (.node (.node .empty (696,[2,2,2,3,29]) .empty) (3434,[2,17,101]) .empty) (2066,[2,1033]) (.node (.node .empty (697,[17,41]) .empty) (698,[2,349]) .empty)) (2067,[3,13,53]) (.node (.node (.node .empty (699,[3,233]) .empty) (2068,[2,2,11,47]) .empty) (2069,[2069]) (.node .empty (700,[2,2,5,5,7]) .empty))) (701,[701]) (.node (.node (.node (.node .empty (2070,[2,3,3,5,23]) .empty) (702,[2,3,3,3,13]) .empty) (2071,[19,109]) (.node .empty (0,[]) .empty)) (0,[]) (.node (.node (.node .empty (704,[2,2,2,2,2,2,11]) .empty) (4811,[17,283]) .empty) (4812,[2,2,3,401]) (.node .empty (705,[3,5,47]) .empty)))))
theorem part0063_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1370 1412 part0063 := by
  change part0063.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 1370 1412 = true
  decide +kernel

def part0064 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (2075,[5,5,83]) .empty) (2076,[2,2,3,173]) .empty) (707,[7,101]) (.node (.node .empty (708,[2,2,3,59]) .empty) (2077,[31,67]) .empty)) (709,[709]) (.node (.node (.node .empty (4816,[2,2,2,2,7,43]) .empty) (3448,[2,2,2,431]) .empty) (710,[2,5,71]) (.node .empty (711,[3,3,79]) .empty))) (2080,[2,2,2,2,2,5,13]) (.node (.node (.node (.node .empty (712,[2,2,2,89]) .empty) (3450,[2,3,5,5,23]) .empty) (2082,[2,3,347]) (.node (.node .empty (713,[23,31]) .empty) (2083,[2083]) .empty)) (714,[2,3,7,17]) (.node (.node (.node .empty (715,[5,11,13]) .empty) (6191,[41,151]) .empty) (716,[2,2,179]) (.node .empty (2085,[3,5,139]) .empty)))) (717,[3,239]) (.node (.node (.node (.node (.node .empty (2086,[2,7,149]) .empty) (718,[2,359]) .empty) (3456,[2,2,2,2,2,2,2,3,3,3]) (.node (.node .empty (719,[719]) .empty) (4826,[2,19,127]) .empty)) (720,[2,2,2,2,3,3,5]) (.node (.node (.node .empty (13041,[3,3,3,3,7,23]) .empty) (2090,[2,5,11,19]) .empty) (721,[7,103]) (.node .empty (722,[2,19,19]) .empty))) (2091,[3,17,41]) (.node (.node (.node (.node .empty (723,[3,241]) .empty) (7568,[2,2,2,2,11,43]) .empty) (724,[2,2,181]) (.node .empty (6200,[2,2,2,5,5,31]) .empty)) (2094,[2,3,349]) (.node (.node (.node .empty (725,[5,5,29]) .empty) (726,[2,3,11,11]) .empty) (2095,[5,419]) (.node .empty (727,[727]) .empty)))))
theorem part0064_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1413 1455 part0064 := by
  change part0064.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 1413 1455 = true
  decide +kernel

def part0065 : CertificateTree FactoredPoint := .node part0063 (706,[2,353]) part0064
theorem part0065_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1370 1455 part0065 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 1370 1455
    part0063 part0064 (706,[2,353]) (by decide +kernel) part0063_valid
    (by decide +kernel) part0064_valid

def part0066 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (2097,[3,3,233]) .empty) (728,[2,2,2,7,13]) .empty) (2098,[2,1049]) (.node (.node .empty (729,[3,3,3,3,3,3]) .empty) (2099,[2099]) .empty)) (730,[2,5,73]) (.node (.node (.node .empty (3469,[3469]) .empty) (731,[17,43]) .empty) (732,[2,2,3,61]) (.node .empty (2101,[11,191]) .empty))) (733,[733]) (.node (.node (.node (.node .empty (3471,[3,13,89]) .empty) (734,[2,367]) .empty) (3472,[2,2,2,2,7,31]) (.node (.node .empty (2104,[2,2,2,263]) .empty) (735,[3,5,7,7]) .empty)) (736,[2,2,2,2,2,23]) (.node (.node (.node .empty (2105,[5,421]) .empty) (2106,[2,3,3,3,3,13]) .empty) (737,[11,67]) (.node .empty (738,[2,3,3,41]) .empty)))) (2107,[7,7,43]) (.node (.node (.node (.node (.node .empty (739,[739]) .empty) (2108,[2,2,17,31]) .empty) (0,[]) (.node (.node .empty (0,[]) .empty) (4848,[2,2,2,2,3,101]) .empty)) (741,[3,13,19]) (.node (.node (.node .empty (2111,[2111]) .empty) (742,[2,7,53]) .empty) (743,[743]) (.node .empty (4850,[2,5,5,97]) .empty))) (744,[2,2,2,3,31]) (.node (.node (.node (.node .empty (4851,[3,3,7,7,11]) .empty) (3483,[3,3,3,3,43]) .empty) (745,[5,149]) (.node .empty (746,[2,373]) .empty)) (2115,[3,3,5,47]) (.node (.node (.node .empty (747,[3,3,83]) .empty) (6223,[7,7,127]) .empty) (6224,[2,2,2,2,389]) (.node .empty (748,[2,2,11,17]) .empty)))))
theorem part0066_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1456 1498 part0066 := by
  change part0066.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 1456 1498 = true
  decide +kernel

def part0067 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (749,[7,107]) .empty) (750,[2,3,5,5,5]) .empty) (2119,[13,163]) (.node (.node .empty (751,[751]) .empty) (2120,[2,2,2,5,53]) .empty)) (752,[2,2,2,2,47]) (.node (.node (.node .empty (2121,[3,7,101]) .empty) (753,[3,251]) .empty) (7598,[2,29,131]) (.node .empty (3492,[2,2,3,3,97]) .empty))) (754,[2,13,29]) (.node (.node (.node (.node .empty (2124,[2,2,3,3,59]) .empty) (755,[5,151]) .empty) (756,[2,2,3,3,3,7]) (.node (.node .empty (2125,[5,5,5,17]) .empty) (757,[757]) .empty)) (3495,[3,5,233]) (.node (.node (.node .empty (758,[2,379]) .empty) (3496,[2,2,2,19,23]) .empty) (4866,[2,3,811]) (.node .empty (759,[3,11,23]) .empty)))) (2129,[2129]) (.node (.node (.node (.node (.node .empty (760,[2,2,2,5,19]) .empty) (761,[761]) .empty) (2130,[2,3,5,71]) (.node (.node .empty (762,[2,3,127]) .empty) (3500,[2,2,5,5,5,7]) .empty)) (3501,[3,3,389]) (.node (.node (.node .empty (763,[7,109]) .empty) (764,[2,2,191]) .empty) (3502,[2,17,103]) (.node .empty (6241,[79,79]) .empty))) (765,[3,3,5,17]) (.node (.node (.node (.node .empty (766,[2,383]) .empty) (4873,[11,443]) .empty) (2136,[2,2,2,3,89]) (.node .empty (767,[13,59]) .empty)) (2137,[2137]) (.node (.node (.node .empty (768,[2,2,2,2,2,2,2,2,3]) .empty) (769,[769]) .empty) (3507,[3,7,167]) (.node .empty (770,[2,5,7,11]) .empty)))))
theorem part0067_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1499 1541 part0067 := by
  change part0067.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 1499 1541 = true
  decide +kernel

def part0068 : CertificateTree FactoredPoint := .node part0066 (2118,[2,3,353]) part0067
theorem part0068_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1456 1541 part0068 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 1456 1541
    part0066 part0067 (2118,[2,3,353]) (by decide +kernel) part0066_valid
    (by decide +kernel) part0067_valid

def part0069 : CertificateTree FactoredPoint := .node part0065 (10310,[2,5,1031]) part0068
theorem part0069_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1370 1541 part0069 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 1370 1541
    part0065 part0068 (10310,[2,5,1031]) (by decide +kernel) part0065_valid
    (by decide +kernel) part0068_valid

def part0070 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (771,[3,257]) .empty) (2140,[2,2,5,107]) .empty) (772,[2,2,193]) (.node (.node .empty (3510,[2,3,3,3,5,13]) .empty) (773,[773]) .empty)) (2142,[2,3,3,7,17]) (.node (.node (.node .empty (774,[2,3,3,43]) .empty) (7619,[19,401]) .empty) (2144,[2,2,2,2,2,67]) (.node .empty (775,[5,5,31]) .empty))) (776,[2,2,2,97]) (.node (.node (.node (.node .empty (3514,[2,7,251]) .empty) (0,[]) .empty) (0,[]) (.node (.node .empty (778,[2,389]) .empty) (2147,[19,113]) .empty)) (2148,[2,2,3,179]) (.node (.node (.node .empty (779,[19,41]) .empty) (3518,[2,1759]) .empty) (780,[2,2,3,5,13]) (.node .empty (6257,[6257]) .empty)))) (781,[11,71]) (.node (.node (.node (.node (.node .empty (2151,[3,3,239]) .empty) (782,[2,17,23]) .empty) (783,[3,3,3,29]) (.node (.node .empty (3521,[7,503]) .empty) (784,[2,2,2,2,7,7]) .empty)) (4891,[67,73]) (.node (.node (.node .empty (2154,[2,3,359]) .empty) (785,[5,157]) .empty) (786,[2,3,131]) (.node .empty (2155,[5,431]) .empty))) (787,[787]) (.node (.node (.node (.node .empty (2156,[2,2,7,7,11]) .empty) (788,[2,2,197]) .empty) (3526,[2,41,43]) (.node .empty (789,[3,263]) .empty)) (2158,[2,13,83]) (.node (.node (.node .empty (3528,[2,2,2,3,3,7,7]) .empty) (790,[2,5,79]) .empty) (2160,[2,2,2,2,3,3,3,5]) (.node .empty (791,[7,113]) .empty)))))
theorem part0070_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1542 1584 part0070 := by
  change part0070.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 1542 1584 = true
  decide +kernel

def part0071 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (3530,[2,5,353]) .empty) (6269,[6269]) .empty) (793,[13,61]) (.node (.node .empty (794,[2,397]) .empty) (2163,[3,7,103]) .empty)) (2164,[2,2,541]) (.node (.node (.node .empty (795,[3,5,53]) .empty) (796,[2,2,199]) .empty) (2165,[5,433]) (.node .empty (797,[797]) .empty))) (6273,[3,3,17,41]) (.node (.node (.node (.node .empty (6274,[2,3137]) .empty) (798,[2,3,7,19]) .empty) (2168,[2,2,2,271]) (.node (.node .empty (799,[17,47]) .empty) (800,[2,2,2,2,2,5,5]) .empty)) (3538,[2,29,61]) (.node (.node (.node .empty (801,[3,3,89]) .empty) (9015,[3,5,601]) .empty) (802,[2,401]) (.node .empty (2171,[13,167]) .empty)))) (2172,[2,2,3,181]) (.node (.node (.node (.node (.node .empty (803,[11,73]) .empty) (804,[2,2,3,67]) .empty) (2173,[41,53]) (.node (.node .empty (805,[5,7,23]) .empty) (6281,[11,571]) .empty)) (3544,[2,2,2,443]) (.node (.node (.node .empty (806,[2,13,31]) .empty) (807,[3,269]) .empty) (3545,[5,709]) (.node .empty (808,[2,2,2,101]) .empty))) (2177,[7,311]) (.node (.node (.node (.node .empty (809,[809]) .empty) (6285,[3,5,419]) .empty) (810,[2,3,3,3,3,5]) (.node .empty (4917,[3,11,149]) .empty)) (811,[811]) (.node (.node (.node .empty (2180,[2,2,5,109]) .empty) (2181,[3,727]) .empty) (812,[2,2,7,29]) (.node .empty (813,[3,271]) .empty)))))
theorem part0071_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1585 1627 part0071 := by
  change part0071.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 1585 1627 = true
  decide +kernel

def part0072 : CertificateTree FactoredPoint := .node part0070 (792,[2,2,2,3,3,11]) part0071
theorem part0072_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1542 1627 part0072 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 1542 1627
    part0070 part0071 (792,[2,2,2,3,3,11]) (by decide +kernel) part0070_valid
    (by decide +kernel) part0071_valid

def part0073 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (0,[]) .empty) (0,[]) .empty) (3553,[11,17,19]) (.node (.node .empty (815,[5,163]) .empty) (816,[2,2,2,2,3,17]) .empty)) (6292,[2,2,11,11,13]) (.node (.node (.node .empty (2186,[2,1093]) .empty) (817,[19,43]) .empty) (818,[2,409]) (.node .empty (2187,[3,3,3,3,3,3,3]) .empty))) (2188,[2,2,547]) (.node (.node (.node (.node .empty (819,[3,3,7,13]) .empty) (3558,[2,3,593]) .empty) (820,[2,2,5,41]) (.node (.node .empty (821,[821]) .empty) (2190,[2,3,5,73]) .empty)) (822,[2,3,137]) (.node (.node (.node .empty (2191,[7,313]) .empty) (823,[823]) .empty) (9037,[7,1291]) (.node .empty (824,[2,2,2,103]) .empty)))) (2193,[3,17,43]) (.node (.node (.node (.node (.node .empty (2194,[2,1097]) .empty) (825,[3,5,5,11]) .empty) (3564,[2,2,3,3,3,3,11]) (.node (.node .empty (826,[2,7,59]) .empty) (827,[827]) .empty)) (6303,[3,11,191]) (.node (.node (.node .empty (828,[2,2,3,3,23]) .empty) (9042,[2,3,11,137]) .empty) (829,[829]) (.node .empty (2198,[2,7,157]) .empty))) (2199,[3,733]) (.node (.node (.node (.node .empty (830,[2,5,83]) .empty) (831,[3,277]) .empty) (2200,[2,2,2,5,5,11]) (.node .empty (832,[2,2,2,2,2,2,13]) .empty)) (2201,[31,71]) (.node (.node (.node .empty (2202,[2,3,367]) .empty) (833,[7,7,17]) .empty) (834,[2,3,139]) (.node .empty (3572,[2,2,19,47]) .empty)))))
theorem part0073_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1628 1670 part0073 := by
  change part0073.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 1628 1670 = true
  decide +kernel

def part0074 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (835,[5,167]) .empty) (3574,[2,1787]) .empty) (836,[2,2,11,19]) (.node (.node .empty (837,[3,3,3,31]) .empty) (6313,[59,107]) .empty)) (838,[2,419]) (.node (.node (.node .empty (7683,[3,13,197]) .empty) (839,[839]) .empty) (3577,[7,7,73]) (.node .empty (2209,[47,47]) .empty))) (840,[2,2,2,3,5,7]) (.node (.node (.node (.node .empty (841,[29,29]) .empty) (7686,[2,3,3,7,61]) .empty) (842,[2,421]) (.node .empty (2211,[3,11,67]) .empty)) (843,[3,281]) (.node (.node (.node .empty (2212,[2,2,7,79]) .empty) (844,[2,2,211]) .empty) (6320,[2,2,2,2,5,79]) (.node .empty (2214,[2,3,3,3,41]) .empty)))) (845,[5,13,13]) (.node (.node (.node (.node (.node .empty (846,[2,3,3,47]) .empty) (2215,[5,443]) .empty) (2216,[2,2,2,277]) (.node (.node .empty (847,[7,11,11]) .empty) (848,[2,2,2,2,53]) .empty)) (3586,[2,11,163]) (.node (.node (.node .empty (849,[3,283]) .empty) (3587,[17,211]) .empty) (4957,[4957]) (.node .empty (850,[2,5,5,17]) .empty))) (0,[]) (.node (.node (.node (.node .empty (0,[]) .empty) (852,[2,2,3,71]) .empty) (3590,[2,5,359]) (.node .empty (853,[853]) .empty)) (2222,[2,11,101]) (.node (.node (.node .empty (3592,[2,2,2,449]) .empty) (854,[2,7,61]) .empty) (2224,[2,2,2,2,139]) (.node .empty (855,[3,3,5,19]) .empty)))))
theorem part0074_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1671 1712 part0074 := by
  change part0074.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 1671 1712 = true
  decide +kernel

def part0075 : CertificateTree FactoredPoint := .node part0073 (3573,[3,3,397]) part0074
theorem part0075_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1628 1712 part0075 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 1628 1712
    part0073 part0074 (3573,[3,3,397]) (by decide +kernel) part0073_valid
    (by decide +kernel) part0074_valid

def part0076 : CertificateTree FactoredPoint := .node part0072 (3551,[53,67]) part0075
theorem part0076_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1542 1712 part0076 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 1542 1712
    part0072 part0075 (3551,[53,67]) (by decide +kernel) part0072_valid
    (by decide +kernel) part0075_valid

def part0077 : CertificateTree FactoredPoint := .node part0069 (2139,[3,23,31]) part0076
theorem part0077_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1370 1712 part0077 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 1370 1712
    part0069 part0076 (2139,[3,23,31]) (by decide +kernel) part0069_valid
    (by decide +kernel) part0076_valid

def part0078 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (2225,[5,5,89]) .empty) (857,[857]) .empty) (2226,[2,3,7,53]) (.node (.node .empty (6334,[2,3167]) .empty) (858,[2,3,11,13]) .empty)) (859,[859]) (.node (.node (.node .empty (3597,[3,11,109]) .empty) (2229,[3,743]) .empty) (860,[2,2,5,43]) (.node .empty (4968,[2,2,2,3,3,3,23]) .empty))) (861,[3,7,41]) (.node (.node (.node (.node .empty (862,[2,431]) .empty) (2231,[23,97]) .empty) (863,[863]) (.node (.node .empty (3601,[13,277]) .empty) (2233,[7,11,29]) .empty)) (864,[2,2,2,2,2,3,3,3]) (.node (.node (.node .empty (2234,[2,1117]) .empty) (865,[5,173]) .empty) (866,[2,433]) (.node .empty (2235,[3,5,149]) .empty)))) (867,[3,17,17]) (.node (.node (.node (.node (.node .empty (2236,[2,2,13,43]) .empty) (2237,[2237]) .empty) (868,[2,2,7,31]) (.node (.node .empty (2238,[2,3,373]) .empty) (869,[11,79]) .empty)) (2239,[2239]) (.node (.node (.node .empty (870,[2,3,5,29]) .empty) (3609,[3,3,401]) .empty) (871,[13,67]) (.node .empty (872,[2,2,2,109]) .empty))) (3610,[2,5,19,19]) (.node (.node (.node (.node .empty (873,[3,3,97]) .empty) (2242,[2,19,59]) .empty) (2243,[2243]) (.node .empty (874,[2,19,23]) .empty)) (3613,[3613]) (.node (.node (.node .empty (875,[5,5,5,7]) .empty) (876,[2,2,3,73]) .empty) (2245,[5,449]) (.node .empty (877,[877]) .empty)))))
theorem part0078_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1713 1755 part0078 := by
  change part0078.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 1713 1755 = true
  decide +kernel

def part0079 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (878,[2,439]) .empty) (2247,[3,7,107]) .empty) (879,[3,293]) (.node (.node .empty (9093,[3,7,433]) .empty) (3618,[2,3,3,3,67]) .empty)) (880,[2,2,2,2,5,11]) (.node (.node (.node .empty (881,[881]) .empty) (4988,[2,2,29,43]) .empty) (882,[2,3,3,7,7]) (.node .empty (3620,[2,2,5,181]) .empty))) (883,[883]) (.node (.node (.node (.node .empty (3621,[3,17,71]) .empty) (2253,[3,751]) .empty) (884,[2,2,13,17]) (.node (.node .empty (3623,[3623]) .empty) (885,[3,5,59]) .empty)) (886,[2,443]) (.node (.node (.node .empty (10469,[19,19,29]) .empty) (887,[887]) .empty) (3625,[5,5,5,29]) (.node .empty (0,[]) .empty)))) (0,[]) (.node (.node (.node (.node (.node .empty (2258,[2,1129]) .empty) (889,[7,127]) .empty) (2259,[3,3,251]) (.node (.node .empty (890,[2,5,89]) .empty) (891,[3,3,3,3,11]) .empty)) (2260,[2,2,5,113]) (.node (.node (.node .empty (892,[2,2,223]) .empty) (3630,[2,3,5,11,11]) .empty) (3631,[3631]) (.node .empty (893,[19,47]) .empty))) (894,[2,3,149]) (.node (.node (.node (.node .empty (2263,[31,73]) .empty) (2264,[2,2,2,283]) .empty) (895,[5,179]) (.node .empty (896,[2,2,2,2,2,2,2,7]) .empty)) (2265,[3,5,151]) (.node (.node (.node .empty (5004,[2,2,3,3,139]) .empty) (897,[3,13,23]) .empty) (898,[2,449]) (.node .empty (5005,[5,7,11,13]) .empty)))))
theorem part0079_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1756 1798 part0079 := by
  change part0079.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 1756 1798 = true
  decide +kernel

def part0080 : CertificateTree FactoredPoint := .node part0078 (3615,[3,5,241]) part0079
theorem part0080_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1713 1798 part0080 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 1713 1798
    part0078 part0079 (3615,[3,5,241]) (by decide +kernel) part0078_valid
    (by decide +kernel) part0079_valid

def part0081 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (899,[29,31]) .empty) (900,[2,2,3,3,5,5]) .empty) (3638,[2,17,107]) (.node (.node .empty (3639,[3,1213]) .empty) (901,[17,53]) .empty)) (2271,[3,757]) (.node (.node (.node .empty (902,[2,11,41]) .empty) (2272,[2,2,2,2,2,71]) .empty) (903,[3,7,43]) (.node .empty (904,[2,2,2,113]) .empty))) (7749,[3,3,3,7,41]) (.node (.node (.node (.node .empty (2274,[2,3,379]) .empty) (905,[5,181]) .empty) (906,[2,3,151]) (.node (.node .empty (7751,[23,337]) .empty) (907,[907]) .empty)) (5014,[2,23,109]) (.node (.node (.node .empty (908,[2,2,227]) .empty) (2277,[3,3,11,23]) .empty) (909,[3,3,101]) (.node .empty (2278,[2,17,67]) .empty)))) (910,[2,5,7,13]) (.node (.node (.node (.node (.node .empty (2279,[43,53]) .empty) (911,[911]) .empty) (2280,[2,2,2,3,5,19]) (.node (.node .empty (912,[2,2,2,2,3,19]) .empty) (3650,[2,5,5,73]) .empty)) (3651,[3,1217]) (.node (.node (.node .empty (913,[11,83]) .empty) (914,[2,457]) .empty) (3652,[2,2,11,83]) (.node .empty (2284,[2,2,571]) .empty))) (915,[3,5,61]) (.node (.node (.node (.node .empty (916,[2,2,229]) .empty) (2285,[5,457]) .empty) (2286,[2,3,3,127]) (.node .empty (917,[7,131]) .empty)) (918,[2,3,3,3,17]) (.node (.node (.node .empty (5025,[3,5,5,67]) .empty) (919,[919]) .empty) (2288,[2,2,2,2,11,13]) (.node .empty (9134,[2,4567]) .empty)))))
theorem part0081_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1799 1841 part0081 := by
  change part0081.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 1799 1841 = true
  decide +kernel

def part0082 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (921,[3,307]) .empty) (2290,[2,5,229]) .empty) (922,[2,461]) (.node (.node .empty (2291,[29,79]) .empty) (2292,[2,2,3,191]) .empty)) (923,[13,71]) (.node (.node (.node .empty (2293,[2293]) .empty) (924,[2,2,3,7,11]) .empty) (0,[]) (.node .empty (0,[]) .empty))) (926,[2,463]) (.node (.node (.node (.node .empty (2295,[3,3,3,5,17]) .empty) (927,[3,3,103]) .empty) (2296,[2,2,2,7,41]) (.node .empty (928,[2,2,2,2,2,29]) .empty)) (3666,[2,3,13,47]) (.node (.node (.node .empty (929,[929]) .empty) (3667,[19,193]) .empty) (6406,[2,3203]) (.node .empty (930,[2,3,5,31]) .empty)))) (3669,[3,1223]) (.node (.node (.node (.node (.node .empty (931,[7,7,19]) .empty) (932,[2,2,233]) .empty) (2301,[3,13,59]) (.node (.node .empty (933,[3,311]) .empty) (5040,[2,2,2,2,3,3,5,7]) .empty)) (934,[2,467]) (.node (.node (.node .empty (2303,[7,7,47]) .empty) (935,[5,11,17]) .empty) (2304,[2,2,2,2,2,2,2,2,3,3]) (.node .empty (936,[2,2,2,3,3,13]) .empty))) (2305,[5,461]) (.node (.node (.node (.node .empty (937,[937]) .empty) (3675,[3,5,5,7,7]) .empty) (2307,[3,769]) (.node .empty (938,[2,7,67]) .empty)) (939,[3,313]) (.node (.node (.node .empty (6415,[5,1283]) .empty) (2309,[2309]) .empty) (940,[2,2,5,47]) (.node .empty (941,[941]) .empty)))))
theorem part0082_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1842 1883 part0082 := by
  change part0082.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 1842 1883 = true
  decide +kernel

def part0083 : CertificateTree FactoredPoint := .node part0081 (920,[2,2,2,5,23]) part0082
theorem part0083_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1799 1883 part0083 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 1799 1883
    part0081 part0082 (920,[2,2,2,5,23]) (by decide +kernel) part0081_valid
    (by decide +kernel) part0082_valid

def part0084 : CertificateTree FactoredPoint := .node part0080 (2268,[2,2,3,3,3,3,7]) part0083
theorem part0084_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1713 1883 part0084 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 1713 1883
    part0080 part0083 (2268,[2,2,3,3,3,3,7]) (by decide +kernel) part0080_valid
    (by decide +kernel) part0083_valid

def part0085 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (942,[2,3,157]) .empty) (3680,[2,2,2,2,2,5,23]) .empty) (2312,[2,2,2,17,17]) (.node (.node .empty (943,[23,41]) .empty) (944,[2,2,2,2,59]) .empty)) (3682,[2,7,263]) (.node (.node (.node .empty (5052,[2,2,3,421]) .empty) (945,[3,3,3,5,7]) .empty) (3684,[2,2,3,307]) (.node .empty (946,[2,11,43]) .empty))) (947,[947]) (.node (.node (.node (.node .empty (5054,[2,7,19,19]) .empty) (948,[2,2,3,79]) .empty) (2317,[7,331]) (.node (.node .empty (3687,[3,1229]) .empty) (949,[13,73]) .empty)) (2319,[3,773]) (.node (.node (.node .empty (950,[2,5,5,19]) .empty) (951,[3,317]) .empty) (2320,[2,2,2,2,5,29]) (.node .empty (5059,[5059]) .empty)))) (952,[2,2,2,7,17]) (.node (.node (.node (.node (.node .empty (953,[953]) .empty) (7798,[2,7,557]) .empty) (954,[2,3,3,53]) (.node (.node .empty (2323,[23,101]) .empty) (3693,[3,1231]) .empty)) (955,[5,191]) (.node (.node (.node .empty (956,[2,2,239]) .empty) (2325,[3,5,5,31]) .empty) (2326,[2,1163]) (.node .empty (957,[3,11,29]) .empty))) (958,[2,479]) (.node (.node (.node (.node .empty (2327,[13,179]) .empty) (2328,[2,2,2,3,97]) .empty) (959,[7,137]) (.node .empty (960,[2,2,2,2,2,2,3,5]) .empty)) (2329,[17,137]) (.node (.node (.node .empty (961,[31,31]) .empty) (2330,[2,5,233]) .empty) (0,[]) (.node .empty (0,[]) .empty)))))
theorem part0085_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1884 1926 part0085 := by
  change part0085.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 1884 1926 = true
  decide +kernel

def part0086 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (2332,[2,2,11,53]) .empty) (964,[2,2,241]) .empty) (5071,[11,461]) (.node (.node .empty (2334,[2,3,389]) .empty) (965,[5,193]) .empty)) (3704,[2,2,2,463]) (.node (.node (.node .empty (966,[2,3,7,23]) .empty) (967,[967]) .empty) (5074,[2,43,59]) (.node .empty (968,[2,2,2,11,11]) .empty))) (2337,[3,19,41]) (.node (.node (.node (.node .empty (5076,[2,2,3,3,3,47]) .empty) (969,[3,17,19]) .empty) (2339,[2339]) (.node (.node .empty (970,[2,5,97]) .empty) (971,[971]) .empty)) (2340,[2,2,3,3,5,13]) (.node (.node (.node .empty (2341,[2341]) .empty) (972,[2,2,3,3,3,3,3]) .empty) (2342,[2,1171]) (.node .empty (973,[7,139]) .empty)))) (974,[2,487]) (.node (.node (.node (.node (.node .empty (2343,[3,11,71]) .empty) (2344,[2,2,2,293]) .empty) (975,[3,5,5,13]) (.node (.node .empty (976,[2,2,2,2,61]) .empty) (7821,[3,3,11,79]) .empty)) (977,[977]) (.node (.node (.node .empty (2346,[2,3,17,23]) .empty) (978,[2,3,163]) .empty) (5085,[3,3,5,113]) (.node .empty (2348,[2,2,587]) .empty))) (979,[11,89]) (.node (.node (.node (.node .empty (2349,[3,3,3,3,29]) .empty) (980,[2,2,5,7,7]) .empty) (981,[3,3,109]) (.node .empty (2350,[2,5,5,47]) .empty)) (982,[2,491]) (.node (.node (.node .empty (3720,[2,2,2,3,5,31]) .empty) (983,[983]) .empty) (5090,[2,5,509]) (.node .empty (984,[2,2,2,3,41]) .empty)))))
theorem part0086_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1927 1969 part0086 := by
  change part0086.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 1927 1969 = true
  decide +kernel

def part0087 : CertificateTree FactoredPoint := .node part0085 (963,[3,3,107]) part0086
theorem part0087_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1884 1969 part0087 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 1884 1969
    part0085 part0086 (963,[3,3,107]) (by decide +kernel) part0085_valid
    (by decide +kernel) part0086_valid

def part0088 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (6461,[7,13,71]) .empty) (985,[5,197]) .empty) (6462,[2,3,3,359]) (.node (.node .empty (986,[2,17,29]) .empty) (5094,[2,3,3,283]) .empty)) (987,[3,7,47]) (.node (.node (.node .empty (2357,[2357]) .empty) (988,[2,2,13,19]) .empty) (2358,[2,3,3,131]) (.node .empty (989,[23,43]) .empty))) (3728,[2,2,2,2,233]) (.node (.node (.node (.node .empty (990,[2,3,3,5,11]) .empty) (991,[991]) .empty) (2360,[2,2,2,5,59]) (.node (.node .empty (992,[2,2,2,2,2,31]) .empty) (3730,[2,5,373]) .empty)) (993,[3,331]) (.node (.node (.node .empty (5100,[2,2,3,5,5,17]) .empty) (3732,[2,2,3,311]) .empty) (994,[2,7,71]) (.node .empty (2364,[2,2,3,197]) .empty)))) (995,[5,199]) (.node (.node (.node (.node (.node .empty (996,[2,2,3,83]) .empty) (9210,[2,3,5,307]) .empty) (997,[997]) (.node (.node .empty (2366,[2,7,13,13]) .empty) (998,[2,499]) .empty)) (5105,[5,1021]) (.node (.node (.node .empty (0,[]) .empty) (0,[]) .empty) (1000,[2,2,2,5,5,5]) (.node .empty (2369,[23,103]) .empty))) (1001,[7,11,13]) (.node (.node (.node (.node .empty (2370,[2,3,5,79]) .empty) (1002,[2,3,167]) .empty) (5109,[3,13,131]) (.node .empty (2372,[2,2,593]) .empty)) (1003,[17,59]) (.node (.node (.node .empty (1004,[2,2,251]) .empty) (2373,[3,7,113]) .empty) (2374,[2,1187]) (.node .empty (1005,[3,5,67]) .empty)))))
theorem part0088_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1970 2012 part0088 := by
  change part0088.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 1970 2012 = true
  decide +kernel

def part0089 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (2375,[5,5,5,19]) .empty) (2376,[2,2,2,3,3,3,11]) .empty) (1007,[19,53]) (.node (.node .empty (1008,[2,2,2,2,3,3,7]) .empty) (9222,[2,3,29,53]) .empty)) (1009,[1009]) (.node (.node (.node .empty (2378,[2,29,41]) .empty) (3748,[2,2,937]) .empty) (1010,[2,5,101]) (.node .empty (1011,[3,337]) .empty))) (3749,[23,163]) (.node (.node (.node (.node .empty (2381,[2381]) .empty) (1012,[2,2,11,23]) .empty) (1013,[1013]) (.node .empty (3751,[11,11,31]) .empty)) (1014,[2,3,13,13]) (.node (.node (.node .empty (3752,[2,2,2,7,67]) .empty) (1015,[5,7,29]) .empty) (5122,[2,13,197]) (.node .empty (1016,[2,2,2,127]) .empty)))) (2385,[3,3,5,53]) (.node (.node (.node (.node (.node .empty (1017,[3,3,113]) .empty) (3755,[5,751]) .empty) (1018,[2,509]) (.node (.node .empty (5125,[5,5,5,41]) .empty) (1019,[1019]) .empty)) (3757,[13,17,17]) (.node (.node (.node .empty (2389,[2389]) .empty) (1020,[2,2,3,5,17]) .empty) (1021,[1021]) (.node .empty (2390,[2,5,239]) .empty))) (2391,[3,797]) (.node (.node (.node (.node .empty (1022,[2,7,73]) .empty) (3761,[3761]) .empty) (1023,[3,11,31]) (.node .empty (2393,[2393]) .empty)) (1024,[2,2,2,2,2,2,2,2,2,2]) (.node (.node (.node .empty (5132,[2,2,1283]) .empty) (1025,[5,5,41]) .empty) (1026,[2,3,3,3,19]) (.node .empty (2395,[5,479]) .empty)))))
theorem part0089_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 2013 2054 part0089 := by
  change part0089.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 2013 2054 = true
  decide +kernel

def part0090 : CertificateTree FactoredPoint := .node part0088 (1006,[2,503]) part0089
theorem part0090_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1970 2054 part0090 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 1970 2054
    part0088 part0089 (1006,[2,503]) (by decide +kernel) part0088_valid
    (by decide +kernel) part0089_valid

def part0091 : CertificateTree FactoredPoint := .node part0087 (2353,[13,181]) part0090
theorem part0091_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1884 2054 part0091 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 1884 2054
    part0087 part0090 (2353,[13,181]) (by decide +kernel) part0087_valid
    (by decide +kernel) part0090_valid

def part0092 : CertificateTree FactoredPoint := .node part0084 (3679,[13,283]) part0091
theorem part0092_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1713 2054 part0092 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 1713 2054
    part0084 part0091 (3679,[13,283]) (by decide +kernel) part0084_valid
    (by decide +kernel) part0091_valid

def part0093 : CertificateTree FactoredPoint := .node part0077 (856,[2,2,2,107]) part0092
theorem part0093_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1370 2054 part0093 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 1370 2054
    part0077 part0092 (856,[2,2,2,107]) (by decide +kernel) part0077_valid
    (by decide +kernel) part0092_valid

def part0094 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1027,[13,79]) .empty) (1028,[2,2,257]) .empty) (2397,[3,17,47]) (.node (.node .empty (1029,[3,7,7,7]) .empty) (2398,[2,11,109]) .empty)) (2399,[2399]) (.node (.node (.node .empty (1030,[2,5,103]) .empty) (1031,[1031]) .empty) (5138,[2,7,367]) (.node .empty (1032,[2,2,2,3,43]) .empty))) (9246,[2,3,23,67]) (.node (.node (.node (.node .empty (1033,[1033]) .empty) (5140,[2,2,5,257]) .empty) (2403,[3,3,3,89]) (.node (.node .empty (1034,[2,11,47]) .empty) (2404,[2,2,601]) .empty)) (1035,[3,3,5,23]) (.node (.node (.node .empty (0,[]) .empty) (0,[]) .empty) (2406,[2,3,401]) (.node .empty (1037,[17,61]) .empty)))) (1038,[2,3,173]) (.node (.node (.node (.node (.node .empty (2407,[29,83]) .empty) (1039,[1039]) .empty) (2408,[2,2,2,7,43]) (.node (.node .empty (3778,[2,1889]) .empty) (1040,[2,2,2,2,5,13]) .empty)) (1041,[3,347]) (.node (.node (.node .empty (2410,[2,5,241]) .empty) (1042,[2,521]) .empty) (3780,[2,2,3,3,3,5,7]) (.node .empty (2412,[2,2,3,3,67]) .empty))) (1043,[7,149]) (.node (.node (.node (.node .empty (1044,[2,2,3,3,29]) .empty) (2413,[19,127]) .empty) (1045,[5,11,19]) (.node .empty (2414,[2,17,71]) .empty)) (1046,[2,523]) (.node (.node (.node .empty (3784,[2,2,2,11,43]) .empty) (1047,[3,349]) .empty) (3785,[5,757]) (.node .empty (1048,[2,2,2,131]) .empty)))))
theorem part0094_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 2055 2097 part0094 := by
  change part0094.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 2055 2097 = true
  decide +kernel

def part0095 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1049,[1049]) .empty) (2418,[2,3,13,31]) .empty) (3788,[2,2,947]) (.node (.node .empty (1050,[2,3,5,5,7]) .empty) (1051,[1051]) .empty)) (2420,[2,2,5,11,11]) (.node (.node (.node .empty (1052,[2,2,263]) .empty) (3790,[2,5,379]) .empty) (1053,[3,3,3,3,13]) (.node .empty (2422,[2,7,173]) .empty))) (2423,[2423]) (.node (.node (.node (.node .empty (1054,[2,17,31]) .empty) (2424,[2,2,2,3,101]) .empty) (1055,[5,211]) (.node (.node .empty (1056,[2,2,2,2,2,3,11]) .empty) (2425,[5,5,97]) .empty)) (2426,[2,1213]) (.node (.node (.node .empty (1057,[7,151]) .empty) (1058,[2,23,23]) .empty) (3796,[2,2,13,73]) (.node .empty (1059,[3,353]) .empty)))) (5166,[2,3,3,7,41]) (.node (.node (.node (.node (.node .empty (3798,[2,3,3,211]) .empty) (1060,[2,2,5,53]) .empty) (1061,[1061]) (.node (.node .empty (3799,[29,131]) .empty) (1062,[2,3,3,59]) .empty)) (3800,[2,2,2,5,5,19]) (.node (.node (.node .empty (1063,[1063]) .empty) (3801,[3,7,181]) .empty) (2433,[3,811]) (.node .empty (1064,[2,2,2,7,19]) .empty))) (2434,[2,1217]) (.node (.node (.node (.node .empty (1065,[3,5,71]) .empty) (3804,[2,2,3,317]) .empty) (1066,[2,13,41]) (.node .empty (6543,[3,3,727]) .empty)) (1067,[11,97]) (.node (.node (.node .empty (1068,[2,2,3,89]) .empty) (3806,[2,11,173]) .empty) (1069,[1069]) (.node .empty (2438,[2,23,53]) .empty)))))
theorem part0095_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 2098 2140 part0095 := by
  change part0095.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 2098 2140 = true
  decide +kernel

def part0096 : CertificateTree FactoredPoint := .node part0094 (5155,[5,1031]) part0095
theorem part0096_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 2055 2140 part0096 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 2055 2140
    part0094 part0095 (5155,[5,1031]) (by decide +kernel) part0094_valid
    (by decide +kernel) part0095_valid

def part0097 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1070,[2,5,107]) .empty) (5178,[2,3,863]) .empty) (1071,[3,3,7,17]) (.node (.node .empty (1072,[2,2,2,2,67]) .empty) (3810,[2,3,5,127]) .empty)) (0,[]) (.node (.node (.node .empty (0,[]) .empty) (1074,[2,3,179]) .empty) (2443,[7,349]) (.node .empty (5182,[2,2591]) .empty))) (1075,[5,5,43]) (.node (.node (.node (.node .empty (1076,[2,2,269]) .empty) (2445,[3,5,163]) .empty) (1077,[3,359]) (.node (.node .empty (5184,[2,2,2,2,2,2,3,3,3,3]) .empty) (2447,[2447]) .empty)) (1078,[2,7,7,11]) (.node (.node (.node .empty (2448,[2,2,2,2,3,3,17]) .empty) (1079,[13,83]) .empty) (1080,[2,2,2,3,3,3,5]) (.node .empty (2449,[31,79]) .empty)))) (5188,[2,2,1297]) (.node (.node (.node (.node (.node .empty (1081,[23,47]) .empty) (1082,[2,541]) .empty) (2451,[3,19,43]) (.node (.node .empty (1083,[3,19,19]) .empty) (5190,[2,3,5,173]) .empty)) (1084,[2,2,271]) (.node (.node (.node .empty (2453,[11,223]) .empty) (1085,[5,7,31]) .empty) (5192,[2,2,2,11,59]) (.node .empty (1086,[2,3,181]) .empty))) (2455,[5,491]) (.node (.node (.node (.node .empty (1087,[1087]) .empty) (3825,[3,3,5,5,17]) .empty) (1088,[2,2,2,2,2,2,17]) (.node .empty (2457,[3,3,3,7,13]) .empty)) (1089,[3,3,11,11]) (.node (.node (.node .empty (3827,[43,89]) .empty) (2459,[2459]) .empty) (1090,[2,5,109]) (.node .empty (1091,[1091]) .empty)))))
theorem part0097_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 2141 2183 part0097 := by
  change part0097.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 2141 2183 = true
  decide +kernel

def part0098 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (5199,[3,1733]) .empty) (1092,[2,2,3,7,13]) .empty) (1093,[1093]) (.node (.node .empty (5200,[2,2,2,2,5,5,13]) .empty) (1094,[2,547]) .empty)) (5201,[7,743]) (.node (.node (.node .empty (3833,[3833]) .empty) (1095,[3,5,73]) .empty) (1096,[2,2,2,137]) (.node .empty (5203,[11,11,43]) .empty))) (1097,[1097]) (.node (.node (.node (.node .empty (6573,[3,7,313]) .empty) (1098,[2,3,3,61]) .empty) (3836,[2,2,7,137]) (.node .empty (2468,[2,2,617]) .empty)) (1099,[7,157]) (.node (.node (.node .empty (2469,[3,823]) .empty) (1100,[2,2,5,5,11]) .empty) (1101,[3,367]) (.node .empty (3839,[11,349]) .empty)))) (3840,[2,2,2,2,2,2,2,2,3,5]) (.node (.node (.node (.node (.node .empty (1102,[2,19,29]) .empty) (1103,[1103]) .empty) (3841,[23,167]) (.node (.node .empty (1104,[2,2,2,2,3,23]) .empty) (3842,[2,17,113]) .empty)) (1105,[5,13,17]) (.node (.node (.node .empty (3843,[3,3,7,61]) .empty) (3844,[2,2,31,31]) .empty) (1106,[2,7,79]) (.node .empty (1107,[3,3,3,41]) .empty))) (3845,[5,769]) (.node (.node (.node (.node .empty (1108,[2,2,277]) .empty) (7953,[3,11,241]) .empty) (1109,[1109]) (.node .empty (2478,[2,3,7,59]) .empty)) (0,[]) (.node (.node (.node .empty (0,[]) .empty) (3849,[3,1283]) .empty) (1111,[11,101]) (.node .empty (1112,[2,2,2,139]) .empty)))))
theorem part0098_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 2184 2225 part0098 := by
  change part0098.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 2184 2225 = true
  decide +kernel

def part0099 : CertificateTree FactoredPoint := .node part0097 (2460,[2,2,3,5,41]) part0098
theorem part0099_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 2141 2225 part0099 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 2141 2225
    part0097 part0098 (2460,[2,2,3,5,41]) (by decide +kernel) part0097_valid
    (by decide +kernel) part0098_valid

def part0100 : CertificateTree FactoredPoint := .node part0096 (2439,[3,3,271]) part0099
theorem part0100_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 2055 2225 part0100 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 2055 2225
    part0096 part0099 (2439,[3,3,271]) (by decide +kernel) part0096_valid
    (by decide +kernel) part0099_valid

def part0101 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (3851,[3851]) .empty) (1113,[3,7,53]) .empty) (1114,[2,557]) (.node (.node .empty (2483,[13,191]) .empty) (2484,[2,2,3,3,3,23]) .empty)) (1115,[5,223]) (.node (.node (.node .empty (1116,[2,2,3,3,31]) .empty) (3854,[2,41,47]) .empty) (1117,[1117]) (.node .empty (2486,[2,11,113]) .empty))) (2487,[3,829]) (.node (.node (.node (.node .empty (1118,[2,13,43]) .empty) (1119,[3,373]) .empty) (5226,[2,3,13,67]) (.node (.node .empty (3858,[2,3,643]) .empty) (1120,[2,2,2,2,2,5,7]) .empty)) (5228,[2,2,1307]) (.node (.node (.node .empty (1121,[19,59]) .empty) (6598,[2,3299]) .empty) (1122,[2,3,11,17]) (.node .empty (1123,[1123]) .empty)))) (2492,[2,2,7,89]) (.node (.node (.node (.node (.node .empty (1124,[2,2,281]) .empty) (6600,[2,2,2,3,5,5,11]) .empty) (1125,[3,3,5,5,5]) (.node (.node .empty (2494,[2,29,43]) .empty) (1126,[2,563]) .empty)) (2495,[5,499]) (.node (.node (.node .empty (2496,[2,2,2,2,2,2,3,13]) .empty) (1127,[7,7,23]) .empty) (1128,[2,2,2,3,47]) (.node .empty (2497,[11,227]) .empty))) (1129,[1129]) (.node (.node (.node (.node .empty (6605,[5,1321]) .empty) (3868,[2,2,967]) .empty) (1130,[2,5,113]) (.node .empty (2500,[2,2,5,5,5,5]) .empty)) (1131,[3,13,29]) (.node (.node (.node .empty (1132,[2,2,283]) .empty) (2501,[41,61]) .empty) (2502,[2,3,3,139]) (.node .empty (1133,[11,103]) .empty)))))
theorem part0101_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 2226 2268 part0101 := by
  change part0101.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 2226 2268 = true
  decide +kernel

def part0102 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (6610,[2,5,661]) .empty) (2504,[2,2,2,313]) .empty) (1135,[5,227]) (.node (.node .empty (1136,[2,2,2,2,71]) .empty) (2505,[3,5,167]) .empty)) (1137,[3,379]) (.node (.node (.node .empty (2506,[2,7,179]) .empty) (1138,[2,569]) .empty) (2507,[23,109]) (.node .empty (3877,[3877]) .empty))) (1139,[17,67]) (.node (.node (.node (.node .empty (6616,[2,2,2,827]) .empty) (1140,[2,2,3,5,19]) .empty) (3879,[3,3,431]) (.node (.node .empty (1141,[7,163]) .empty) (1142,[2,571]) .empty)) (3880,[2,2,2,5,97]) (.node (.node (.node .empty (1143,[3,3,127]) .empty) (5250,[2,3,5,5,5,7]) .empty) (3882,[2,3,647]) (.node .empty (1144,[2,2,2,11,13]) .empty)))) (2514,[2,3,419]) (.node (.node (.node (.node (.node .empty (1145,[5,229]) .empty) (1146,[2,3,191]) .empty) (2515,[5,503]) (.node (.node .empty (0,[]) .empty) (0,[]) .empty)) (2517,[3,839]) (.node (.node (.node .empty (1148,[2,2,7,41]) .empty) (1149,[3,383]) .empty) (3887,[13,13,23]) (.node .empty (6626,[2,3313]) .empty))) (1150,[2,5,5,23]) (.node (.node (.node (.node .empty (1151,[1151]) .empty) (2520,[2,2,2,3,3,5,7]) .empty) (2521,[2521]) (.node .empty (1152,[2,2,2,2,2,2,2,3,3]) .empty)) (1153,[1153]) (.node (.node (.node .empty (2522,[2,13,97]) .empty) (1154,[2,577]) .empty) (3892,[2,2,7,139]) (.node .empty (1155,[3,5,7,11]) .empty)))))
theorem part0102_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 2269 2311 part0102 := by
  change part0102.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 2269 2311 = true
  decide +kernel

def part0103 : CertificateTree FactoredPoint := .node part0101 (1134,[2,3,3,3,3,7]) part0102
theorem part0103_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 2226 2311 part0103 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 2226 2311
    part0101 part0102 (1134,[2,3,3,3,3,7]) (by decide +kernel) part0101_valid
    (by decide +kernel) part0102_valid

def part0104 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1156,[2,2,17,17]) .empty) (2525,[5,5,101]) .empty) (2526,[2,3,421]) (.node (.node .empty (1157,[13,89]) .empty) (1158,[2,3,193]) .empty)) (2527,[7,19,19]) (.node (.node (.node .empty (2528,[2,2,2,2,2,79]) .empty) (1159,[19,61]) .empty) (2529,[3,3,281]) (.node .empty (1160,[2,2,2,5,29]) .empty))) (1161,[3,3,3,43]) (.node (.node (.node (.node .empty (3899,[7,557]) .empty) (2531,[2531]) .empty) (1162,[2,7,83]) (.node (.node .empty (1163,[1163]) .empty) (3901,[47,83]) .empty)) (1164,[2,2,3,97]) (.node (.node (.node .empty (2533,[17,149]) .empty) (3903,[3,1301]) .empty) (1165,[5,233]) (.node .empty (3904,[2,2,2,2,2,2,61]) .empty)))) (1166,[2,11,53]) (.node (.node (.node (.node (.node .empty (1167,[3,389]) .empty) (9381,[3,53,59]) .empty) (1168,[2,2,2,2,73]) (.node (.node .empty (2537,[43,59]) .empty) (2538,[2,3,3,3,47]) .empty)) (1169,[7,167]) (.node (.node (.node .empty (2539,[2539]) .empty) (1170,[2,3,3,5,13]) .empty) (1171,[1171]) (.node .empty (2540,[2,2,5,127]) .empty))) (1172,[2,2,293]) (.node (.node (.node (.node .empty (2541,[3,7,11,11]) .empty) (3911,[3911]) .empty) (1173,[3,17,23]) (.node .empty (1174,[2,587]) .empty)) (10757,[31,347]) (.node (.node (.node .empty (2544,[2,2,2,2,3,53]) .empty) (1175,[5,5,47]) .empty) (1176,[2,2,2,3,7,7]) (.node .empty (2545,[5,509]) .empty)))))
theorem part0104_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 2312 2354 part0104 := by
  change part0104.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 2312 2354 = true
  decide +kernel

def part0105 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1177,[11,107]) .empty) (2547,[3,3,283]) .empty) (1178,[2,19,31]) (.node (.node .empty (1179,[3,3,131]) .empty) (2548,[2,2,7,7,13]) .empty)) (2549,[2549]) (.node (.node (.node .empty (1180,[2,2,5,59]) .empty) (1181,[1181]) .empty) (2550,[2,3,5,5,17]) (.node .empty (1182,[2,3,197]) .empty))) (3920,[2,2,2,2,5,7,7]) (.node (.node (.node (.node .empty (3921,[3,1307]) .empty) (1183,[7,13,13]) .empty) (0,[]) (.node .empty (0,[]) .empty)) (2554,[2,1277]) (.node (.node (.node .empty (1185,[3,5,79]) .empty) (1186,[2,593]) .empty) (5293,[67,79]) (.node .empty (1187,[1187]) .empty)))) (3925,[5,5,157]) (.node (.node (.node (.node (.node .empty (1188,[2,2,3,3,3,11]) .empty) (3926,[2,13,151]) .empty) (2558,[2,1279]) (.node (.node .empty (1189,[29,41]) .empty) (1190,[2,5,7,17]) .empty)) (6666,[2,3,11,101]) (.node (.node (.node .empty (1191,[3,397]) .empty) (6667,[59,113]) .empty) (1192,[2,2,2,149]) (.node .empty (2561,[13,197]) .empty))) (1193,[1193]) (.node (.node (.node (.node .empty (2562,[2,3,7,61]) .empty) (1194,[2,3,199]) .empty) (2563,[11,233]) (.node .empty (2564,[2,2,641]) .empty)) (1195,[5,239]) (.node (.node (.node .empty (5303,[5303]) .empty) (1196,[2,2,13,23]) .empty) (2566,[2,1283]) (.node .empty (1197,[3,3,7,19]) .empty)))))
theorem part0105_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 2355 2396 part0105 := by
  change part0105.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 2355 2396 = true
  decide +kernel

def part0106 : CertificateTree FactoredPoint := .node part0104 (5284,[2,2,1321]) part0105
theorem part0106_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 2312 2396 part0106 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 2312 2396
    part0104 part0105 (5284,[2,2,1321]) (by decide +kernel) part0104_valid
    (by decide +kernel) part0105_valid

def part0107 : CertificateTree FactoredPoint := .node part0103 (3893,[17,229]) part0106
theorem part0107_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 2226 2396 part0107 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 2226 2396
    part0103 part0106 (3893,[17,229]) (by decide +kernel) part0103_valid
    (by decide +kernel) part0106_valid

def part0108 : CertificateTree FactoredPoint := .node part0100 (5219,[17,307]) part0107
theorem part0108_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 2055 2396 part0108 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 2055 2396
    part0100 part0107 (5219,[17,307]) (by decide +kernel) part0100_valid
    (by decide +kernel) part0107_valid

def part0109 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (2567,[17,151]) .empty) (2568,[2,2,2,3,107]) .empty) (1199,[11,109]) (.node (.node .empty (1200,[2,2,2,2,3,5,5]) .empty) (2569,[7,367]) .empty)) (1201,[1201]) (.node (.node (.node .empty (2570,[2,5,257]) .empty) (1202,[2,601]) .empty) (3940,[2,2,5,197]) (.node .empty (1203,[3,401]) .empty))) (3941,[7,563]) (.node (.node (.node (.node .empty (3942,[2,3,3,3,73]) .empty) (1204,[2,2,7,43]) .empty) (3943,[3943]) (.node (.node .empty (1205,[5,241]) .empty) (1206,[2,3,3,67]) .empty)) (2575,[5,5,103]) (.node (.node (.node .empty (5314,[2,2657]) .empty) (1207,[17,71]) .empty) (1208,[2,2,2,151]) (.node .empty (5315,[5,1063]) .empty)))) (2578,[2,1289]) (.node (.node (.node (.node (.node .empty (1209,[3,13,31]) .empty) (2579,[2579]) .empty) (1210,[2,5,11,11]) (.node (.node .empty (5318,[2,2659]) .empty) (1211,[7,173]) .empty)) (1212,[2,2,3,101]) (.node (.node (.node .empty (2581,[29,89]) .empty) (1213,[1213]) .empty) (8058,[2,3,17,79]) (.node .empty (1214,[2,607]) .empty))) (2583,[3,3,7,41]) (.node (.node (.node (.node .empty (1215,[3,3,3,3,3,5]) .empty) (2584,[2,2,2,17,19]) .empty) (1216,[2,2,2,2,2,2,19]) (.node .empty (6692,[2,2,7,239]) .empty)) (1217,[1217]) (.node (.node (.node .empty (6693,[3,23,97]) .empty) (6694,[2,3347]) .empty) (1218,[2,3,7,29]) (.node .empty (2588,[2,2,647]) .empty)))))
theorem part0109_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 2397 2439 part0109 := by
  change part0109.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 2397 2439 = true
  decide +kernel

def part0110 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (2589,[3,863]) .empty) (1220,[2,2,5,61]) .empty) (0,[]) (.node (.node .empty (0,[]) .empty) (2591,[2591]) .empty)) (1222,[2,13,47]) (.node (.node (.node .empty (1223,[1223]) .empty) (2592,[2,2,2,2,2,3,3,3,3]) .empty) (1224,[2,2,2,3,3,17]) (.node .empty (3962,[2,7,283]) .empty))) (2594,[2,1297]) (.node (.node (.node (.node .empty (1225,[5,5,7,7]) .empty) (1226,[2,613]) .empty) (2595,[3,5,173]) (.node (.node .empty (1227,[3,409]) .empty) (2596,[2,2,11,59]) .empty)) (1228,[2,2,307]) (.node (.node (.node .empty (2597,[7,7,53]) .empty) (1229,[1229]) .empty) (5336,[2,2,2,23,29]) (.node .empty (3968,[2,2,2,2,2,2,2,31]) .empty)))) (1230,[2,3,5,41]) (.node (.node (.node (.node (.node .empty (1231,[1231]) .empty) (2600,[2,2,2,5,5,13]) .empty) (2601,[3,3,17,17]) (.node (.node .empty (1232,[2,2,2,2,7,11]) .empty) (1233,[3,3,137]) .empty)) (3971,[11,19,19]) (.node (.node (.node .empty (1234,[2,617]) .empty) (2603,[19,137]) .empty) (1235,[5,13,19]) (.node .empty (2604,[2,2,3,7,31]) .empty))) (1236,[2,2,3,103]) (.node (.node (.node (.node .empty (2605,[5,521]) .empty) (1237,[1237]) .empty) (3975,[3,5,5,53]) (.node .empty (1238,[2,619]) .empty)) (2607,[3,11,79]) (.node (.node (.node .empty (2608,[2,2,2,2,163]) .empty) (1239,[3,7,59]) .empty) (2609,[2609]) (.node .empty (1240,[2,2,2,5,31]) .empty)))))
theorem part0110_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 2440 2482 part0110 := by
  change part0110.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 2440 2482 = true
  decide +kernel

def part0111 : CertificateTree FactoredPoint := .node part0109 (1219,[23,53]) part0110
theorem part0111_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 2397 2482 part0111 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 2397 2482
    part0109 part0110 (1219,[23,53]) (by decide +kernel) part0109_valid
    (by decide +kernel) part0110_valid

def part0112 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1241,[17,73]) .empty) (1242,[2,3,3,3,23]) .empty) (2611,[7,373]) (.node (.node .empty (2612,[2,2,653]) .empty) (1243,[11,113]) .empty)) (1244,[2,2,311]) (.node (.node (.node .empty (2613,[3,13,67]) .empty) (2614,[2,1307]) .empty) (1245,[3,5,83]) (.node .empty (3984,[2,2,2,2,3,83]) .empty))) (1246,[2,7,89]) (.node (.node (.node (.node .empty (2616,[2,2,2,3,109]) .empty) (1247,[29,43]) .empty) (1248,[2,2,2,2,2,3,13]) (.node (.node .empty (9462,[2,3,19,83]) .empty) (1249,[1249]) .empty)) (5356,[2,2,13,103]) (.node (.node (.node .empty (1250,[2,5,5,5,5]) .empty) (5357,[11,487]) .empty) (1251,[3,3,139]) (.node .empty (2620,[2,2,5,131]) .empty)))) (1252,[2,2,313]) (.node (.node (.node (.node (.node .empty (5359,[23,233]) .empty) (6729,[3,2243]) .empty) (1253,[7,179]) (.node (.node .empty (3992,[2,2,2,499]) .empty) (1254,[2,3,11,19]) .empty)) (2624,[2,2,2,2,2,2,41]) (.node (.node (.node .empty (1255,[5,251]) .empty) (1256,[2,2,2,157]) .empty) (2625,[3,5,5,5,7]) (.node .empty (1257,[3,419]) .empty))) (2626,[2,13,101]) (.node (.node (.node (.node .empty (0,[]) .empty) (0,[]) .empty) (1259,[1259]) (.node .empty (3997,[7,571]) .empty)) (3998,[2,1999]) (.node (.node (.node .empty (1260,[2,2,3,3,5,7]) .empty) (6737,[6737]) .empty) (1261,[13,97]) (.node .empty (1262,[2,631]) .empty)))))
theorem part0112_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 2483 2525 part0112 := by
  change part0112.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 2483 2525 = true
  decide +kernel

def part0113 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1263,[3,421]) .empty) (2632,[2,2,2,7,47]) .empty) (1264,[2,2,2,2,79]) (.node (.node .empty (4002,[2,3,23,29]) .empty) (1265,[5,11,23]) .empty)) (5372,[2,2,17,79]) (.node (.node (.node .empty (1266,[2,3,211]) .empty) (9480,[2,2,2,3,5,79]) .empty) (2636,[2,2,659]) (.node .empty (1267,[7,181]) .empty))) (1268,[2,2,317]) (.node (.node (.node (.node .empty (5375,[5,5,5,43]) .empty) (1269,[3,3,3,47]) .empty) (9483,[3,29,109]) (.node .empty (2639,[7,13,29]) .empty)) (1270,[2,5,127]) (.node (.node (.node .empty (5378,[2,2689]) .empty) (1271,[31,41]) .empty) (1272,[2,2,2,3,53]) (.node .empty (2641,[19,139]) .empty)))) (2642,[2,1321]) (.node (.node (.node (.node (.node .empty (1273,[19,67]) .empty) (2643,[3,881]) .empty) (1274,[2,7,7,13]) (.node (.node .empty (2644,[2,2,661]) .empty) (1275,[3,5,5,17]) .empty)) (4014,[2,3,3,223]) (.node (.node (.node .empty (1276,[2,2,11,29]) .empty) (1277,[1277]) .empty) (8122,[2,31,131]) (.node .empty (1278,[2,3,3,71]) .empty))) (5385,[3,5,359]) (.node (.node (.node (.node .empty (1279,[1279]) .empty) (4017,[3,13,103]) .empty) (1280,[2,2,2,2,2,2,2,2,5]) (.node .empty (4018,[2,7,7,41]) .empty)) (4019,[4019]) (.node (.node (.node .empty (1281,[3,7,61]) .empty) (1282,[2,641]) .empty) (2651,[11,241]) (.node .empty (1283,[1283]) .empty)))))
theorem part0113_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 2526 2567 part0113 := by
  change part0113.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 2526 2567 = true
  decide +kernel

def part0114 : CertificateTree FactoredPoint := .node part0112 (8107,[11,11,67]) part0113
theorem part0114_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 2483 2567 part0114 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 2483 2567
    part0112 part0113 (8107,[11,11,67]) (by decide +kernel) part0112_valid
    (by decide +kernel) part0113_valid

def part0115 : CertificateTree FactoredPoint := .node part0111 (6717,[3,2239]) part0114
theorem part0115_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 2397 2567 part0115 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 2397 2567
    part0111 part0114 (6717,[3,2239]) (by decide +kernel) part0111_valid
    (by decide +kernel) part0114_valid

def part0116 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1284,[2,2,3,107]) .empty) (2653,[7,379]) .empty) (2654,[2,1327]) (.node (.node .empty (1285,[5,257]) .empty) (1286,[2,643]) .empty)) (2655,[3,3,5,59]) (.node (.node (.node .empty (2656,[2,2,2,2,2,83]) .empty) (1287,[3,3,11,13]) .empty) (2657,[2657]) (.node .empty (1288,[2,2,2,7,23]) .empty))) (1289,[1289]) (.node (.node (.node (.node .empty (5396,[2,2,19,71]) .empty) (2659,[2659]) .empty) (1290,[2,3,5,43]) (.node (.node .empty (1291,[1291]) .empty) (4029,[3,17,79]) .empty)) (2661,[3,887]) (.node (.node (.node .empty (1292,[2,2,17,19]) .empty) (1293,[3,431]) .empty) (4031,[29,139]) (.node .empty (1294,[2,647]) .empty)))) (5401,[11,491]) (.node (.node (.node (.node (.node .empty (0,[]) .empty) (0,[]) .empty) (2665,[5,13,41]) (.node (.node .empty (1296,[2,2,2,2,3,3,3,3]) .empty) (1297,[1297]) .empty)) (2666,[2,31,43]) (.node (.node (.node .empty (4036,[2,2,1009]) .empty) (1298,[2,11,59]) .empty) (1299,[3,433]) (.node .empty (2668,[2,2,23,29]) .empty))) (4038,[2,3,673]) (.node (.node (.node (.node .empty (1300,[2,2,5,5,13]) .empty) (1301,[1301]) .empty) (2670,[2,3,5,89]) (.node .empty (2671,[2671]) .empty)) (1302,[2,3,7,31]) (.node (.node (.node .empty (1303,[1303]) .empty) (5410,[2,5,541]) .empty) (1304,[2,2,2,163]) (.node .empty (4042,[2,43,47]) .empty)))))
theorem part0116_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 2568 2610 part0116 := by
  change part0116.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 2568 2610 = true
  decide +kernel

def part0117 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1305,[3,3,5,29]) .empty) (1306,[2,653]) .empty) (2675,[5,5,107]) (.node (.node .empty (1307,[1307]) .empty) (4045,[5,809]) .empty)) (1308,[2,2,3,109]) (.node (.node (.node .empty (4046,[2,7,17,17]) .empty) (1309,[7,11,17]) .empty) (2678,[2,13,103]) (.node .empty (5417,[5417]) .empty))) (1310,[2,5,131]) (.node (.node (.node (.node .empty (4049,[4049]) .empty) (1311,[3,19,23]) .empty) (1312,[2,2,2,2,2,41]) (.node (.node .empty (2681,[7,383]) .empty) (2682,[2,3,3,149]) .empty)) (1313,[13,101]) (.node (.node (.node .empty (1314,[2,3,3,73]) .empty) (5421,[3,13,139]) .empty) (5422,[2,2711]) (.node .empty (1315,[5,263]) .empty)))) (4054,[2,2027]) (.node (.node (.node (.node (.node .empty (1316,[2,2,7,47]) .empty) (1317,[3,439]) .empty) (2686,[2,17,79]) (.node (.node .empty (1318,[2,659]) .empty) (6794,[2,43,79]) .empty)) (1319,[1319]) (.node (.node (.node .empty (6795,[3,3,5,151]) .empty) (2689,[2689]) .empty) (1320,[2,2,2,3,5,11]) (.node .empty (1321,[1321]) .empty))) (2690,[2,5,269]) (.node (.node (.node (.node .empty (1322,[2,661]) .empty) (2691,[3,3,13,23]) .empty) (1323,[3,3,3,7,7]) (.node .empty (4061,[31,131]) .empty)) (1324,[2,2,331]) (.node (.node (.node .empty (6800,[2,2,2,2,5,5,17]) .empty) (2694,[2,3,449]) .empty) (1325,[5,5,53]) (.node .empty (2695,[5,7,7,11]) .empty)))))
theorem part0117_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 2611 2653 part0117 := by
  change part0117.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 2611 2653 = true
  decide +kernel

def part0118 : CertificateTree FactoredPoint := .node part0116 (6781,[6781]) part0117
theorem part0118_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 2568 2653 part0118 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 2568 2653
    part0116 part0117 (6781,[6781]) (by decide +kernel) part0116_valid
    (by decide +kernel) part0117_valid

def part0119 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1327,[1327]) .empty) (4065,[3,5,271]) .empty) (1328,[2,2,2,2,83]) (.node (.node .empty (2697,[3,29,31]) .empty) (1329,[3,443]) .empty)) (2698,[2,19,71]) (.node (.node (.node .empty (1330,[2,5,7,19]) .empty) (6806,[2,41,83]) .empty) (1331,[11,11,11]) (.node .empty (4069,[13,313]) .empty))) (0,[]) (.node (.node (.node (.node .empty (0,[]) .empty) (9547,[9547]) .empty) (1333,[31,43]) (.node (.node .empty (4072,[2,2,2,509]) .empty) (1334,[2,23,29]) .empty)) (2704,[2,2,2,2,13,13]) (.node (.node (.node .empty (1335,[3,5,89]) .empty) (1336,[2,2,2,167]) .empty) (2705,[5,541]) (.node .empty (5444,[2,2,1361]) .empty)))) (1337,[7,191]) (.node (.node (.node (.node (.node .empty (1338,[2,3,223]) .empty) (5445,[3,3,5,11,11]) .empty) (2708,[2,2,677]) (.node (.node .empty (1339,[13,103]) .empty) (4078,[2,2039]) .empty)) (1340,[2,2,5,67]) (.node (.node (.node .empty (1341,[3,3,149]) .empty) (2710,[2,5,271]) .empty) (2711,[2711]) (.node .empty (1342,[2,11,61]) .empty))) (2712,[2,2,2,3,113]) (.node (.node (.node (.node .empty (1343,[17,79]) .empty) (1344,[2,2,2,2,2,2,3,7]) .empty) (4082,[2,13,157]) (.node .empty (4083,[3,1361]) .empty)) (1345,[5,269]) (.node (.node (.node .empty (1346,[2,673]) .empty) (2715,[3,5,181]) .empty) (1347,[3,449]) (.node .empty (2716,[2,2,7,97]) .empty)))))
theorem part0119_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 2654 2696 part0119 := by
  change part0119.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 2654 2696 = true
  decide +kernel

def part0120 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (5455,[5,1091]) .empty) (2718,[2,3,3,151]) .empty) (1349,[19,71]) (.node (.node .empty (1350,[2,3,3,3,5,5]) .empty) (4088,[2,2,2,7,73]) .empty)) (5458,[2,2729]) (.node (.node (.node .empty (1351,[7,193]) .empty) (1352,[2,2,2,13,13]) .empty) (4090,[2,5,409]) (.node .empty (2722,[2,1361]) .empty))) (1353,[3,11,41]) (.node (.node (.node (.node .empty (1354,[2,677]) .empty) (2723,[7,389]) .empty) (2724,[2,2,3,227]) (.node .empty (1355,[5,271]) .empty)) (1356,[2,2,3,113]) (.node (.node (.node .empty (2725,[5,5,109]) .empty) (4095,[3,3,5,7,13]) .empty) (1357,[23,59]) (.node .empty (2727,[3,3,3,101]) .empty)))) (1358,[2,7,97]) (.node (.node (.node (.node (.node .empty (1359,[3,3,151]) .empty) (2728,[2,2,2,11,31]) .empty) (2729,[2729]) (.node (.node .empty (1360,[2,2,2,2,5,17]) .empty) (1361,[1361]) .empty)) (6837,[3,43,53]) (.node (.node (.node .empty (1362,[2,3,227]) .empty) (4100,[2,2,5,5,41]) .empty) (2732,[2,2,683]) (.node .empty (1363,[29,47]) .empty))) (2733,[3,911]) (.node (.node (.node (.node .empty (1364,[2,2,11,31]) .empty) (1365,[3,5,7,13]) .empty) (4103,[11,373]) (.node .empty (1366,[2,683]) .empty)) (2735,[5,547]) (.node (.node (.node .empty (1367,[1367]) .empty) (4105,[5,821]) .empty) (1368,[2,2,2,3,3,19]) (.node .empty (5475,[3,5,5,73]) .empty)))))
theorem part0120_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 2697 2738 part0120 := by
  change part0120.checkRange (checkOddEntry sharedPrimes 37 6 [2,3]) 2697 2738 = true
  decide +kernel

def part0121 : CertificateTree FactoredPoint := .node part0119 (1348,[2,2,337]) part0120
theorem part0121_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 2654 2738 part0121 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 2654 2738
    part0119 part0120 (1348,[2,2,337]) (by decide +kernel) part0119_valid
    (by decide +kernel) part0120_valid

def part0122 : CertificateTree FactoredPoint := .node part0118 (1326,[2,3,13,17]) part0121
theorem part0122_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 2568 2738 part0122 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 2568 2738
    part0118 part0121 (1326,[2,3,13,17]) (by decide +kernel) part0118_valid
    (by decide +kernel) part0121_valid

def part0123 : CertificateTree FactoredPoint := .node part0115 (2652,[2,2,3,13,17]) part0122
theorem part0123_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 2397 2738 part0123 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 2397 2738
    part0115 part0122 (2652,[2,2,3,13,17]) (by decide +kernel) part0115_valid
    (by decide +kernel) part0122_valid

def part0124 : CertificateTree FactoredPoint := .node part0108 (1198,[2,599]) part0123
theorem part0124_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 2055 2738 part0124 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 2055 2738
    part0108 part0123 (1198,[2,599]) (by decide +kernel) part0108_valid
    (by decide +kernel) part0123_valid

def part0125 : CertificateTree FactoredPoint := .node part0093 (2396,[2,2,599]) part0124
theorem part0125_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 1370 2738 part0125 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 1370 2738
    part0093 part0124 (2396,[2,2,599]) (by decide +kernel) part0093_valid
    (by decide +kernel) part0124_valid

def part0126 : CertificateTree FactoredPoint := .node part0062 (3422,[2,29,59]) part0125
theorem part0126_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 0 2738 part0126 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 37 6 [2,3]) 0 2738
    part0062 part0125 (3422,[2,29,59]) (by decide +kernel) part0062_valid
    (by decide +kernel) part0125_valid

def data : CertificateTree FactoredPoint := part0126
theorem valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 37 6 [2,3]) 0 2738 data := by
  exact part0126_valid

end GeneralizedGoldbach.LargeCertificates.Odd37.B0000
