module

public import GeneralizedGoldbach.FullCertificateKernel
public import GeneralizedGoldbach.LargeCertificates.SharedPrimes

/-! 全量有限证书：外部生成数据，内核检查覆盖及各项条件。 -/
@[expose] public section
namespace GeneralizedGoldbach.LargeCertificates.Odd53.B0000
open FullCertificate
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
def part0000 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (0,[]) .empty) (0,[]) .empty) (19664,[2,2,2,2,1229]) (.node (.node .empty (1,[]) .empty) (8429,[8429]) .empty)) (2,[2]) (.node (.node (.node .empty (3,[3]) .empty) (2812,[2,2,19,37]) .empty) (8431,[8431]) (.node .empty (4,[2,2]) .empty))) (5,[5]) (.node (.node (.node (.node .empty (8432,[2,2,2,2,17,31]) .empty) (6,[2,3]) .empty) (2815,[5,563]) (.node (.node .empty (7,[7]) .empty) (5625,[3,3,5,5,5,5]) .empty)) (8435,[5,7,241]) (.node (.node (.node .empty (8,[2,2,2]) .empty) (9,[3,3]) .empty) (5627,[17,331]) (.node .empty (10,[2,5]) .empty)))) (8437,[11,13,59]) (.node (.node (.node (.node (.node .empty (11,[11]) .empty) (14056,[2,2,2,7,251]) .empty) (12,[2,2,3]) (.node (.node .empty (2821,[7,13,31]) .empty) (14058,[2,3,3,11,71]) .empty)) (13,[13]) (.node (.node (.node .empty (14,[2,7]) .empty) (2823,[3,941]) .empty) (2824,[2,2,2,353]) (.node .empty (15,[3,5]) .empty))) (8443,[8443]) (.node (.node (.node (.node .empty (16,[2,2,2,2]) .empty) (17,[17]) .empty) (2826,[2,3,3,157]) (.node (.node .empty (18,[2,3,3]) .empty) (2827,[11,257]) .empty)) (19,[19]) (.node (.node (.node .empty (2828,[2,2,7,101]) .empty) (20,[2,2,5]) .empty) (16874,[2,11,13,59]) (.node .empty (5639,[5639]) .empty)))))
theorem part0000_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 0 43 part0000 := by
  change part0000.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 0 43 = true
  decide +kernel

def part0001 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (22,[2,11]) .empty) (2831,[19,149]) .empty) (23,[23]) (.node (.node .empty (2832,[2,2,2,2,3,59]) .empty) (24,[2,2,2,3]) .empty)) (5642,[2,7,13,31]) (.node (.node (.node .empty (25,[5,5]) .empty) (14070,[2,3,5,7,67]) .empty) (2835,[3,3,3,3,5,7]) (.node .empty (26,[2,13]) .empty))) (27,[3,3,3]) (.node (.node (.node (.node .empty (5645,[5,1129]) .empty) (28,[2,2,7]) .empty) (5646,[2,3,941]) (.node (.node .empty (29,[29]) .empty) (8456,[2,2,2,7,151]) .empty)) (5648,[2,2,2,2,353]) (.node (.node (.node .empty (30,[2,3,5]) .empty) (31,[31]) .empty) (2840,[2,2,2,5,71]) (.node .empty (16886,[2,8443]) .empty)))) (32,[2,2,2,2,2]) (.node (.node (.node (.node (.node .empty (5651,[5651]) .empty) (33,[3,11]) .empty) (34,[2,17]) (.node (.node .empty (5652,[2,2,3,3,157]) .empty) (5653,[5653]) .empty)) (35,[5,7]) (.node (.node (.node .empty (36,[2,2,3,3]) .empty) (2845,[5,569]) .empty) (37,[37]) (.node .empty (14082,[2,3,2347]) .empty))) (38,[2,19]) (.node (.node (.node (.node .empty (2847,[3,13,73]) .empty) (39,[3,13]) .empty) (14084,[2,2,7,503]) (.node (.node .empty (40,[2,2,2,5]) .empty) (30939,[3,10313]) .empty)) (41,[41]) (.node (.node (.node .empty (8468,[2,2,29,73]) .empty) (2851,[2851]) .empty) (42,[2,3,7]) (.node .empty (43,[43]) .empty)))))
theorem part0001_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 44 87 part0001 := by
  change part0001.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 44 87 = true
  decide +kernel

def part0002 : CertificateTree FactoredPoint := .node part0000 (21,[3,7]) part0001
theorem part0002_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 0 87 part0002 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 0 87
    part0000 part0001 (21,[3,7]) (by decide +kernel) part0000_valid
    (by decide +kernel) part0001_valid

def part0003 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (44,[2,2,11]) .empty) (2853,[3,3,317]) .empty) (2854,[2,1427]) (.node (.node .empty (45,[3,3,5]) .empty) (46,[2,23]) .empty)) (2855,[5,571]) (.node (.node (.node .empty (47,[47]) .empty) (8474,[2,19,223]) .empty) (48,[2,2,2,2,3]) (.node .empty (11284,[2,2,7,13,31]) .empty))) (49,[7,7]) (.node (.node (.node (.node .empty (5667,[3,1889]) .empty) (50,[2,5,5]) .empty) (2859,[3,953]) (.node (.node .empty (5669,[5669]) .empty) (51,[3,17]) .empty)) (2861,[2861]) (.node (.node (.node .empty (52,[2,2,13]) .empty) (0,[]) .empty) (0,[]) (.node .empty (54,[2,3,3,3]) .empty)))) (2863,[7,409]) (.node (.node (.node (.node (.node .empty (2864,[2,2,2,2,179]) .empty) (55,[5,11]) .empty) (56,[2,2,2,7]) (.node (.node .empty (8483,[17,499]) .empty) (2866,[2,1433]) .empty)) (57,[3,19]) (.node (.node (.node .empty (58,[2,29]) .empty) (2867,[47,61]) .empty) (59,[59]) (.node .empty (2868,[2,2,3,239]) .empty))) (8487,[3,3,23,41]) (.node (.node (.node (.node .empty (60,[2,2,3,5]) .empty) (61,[61]) .empty) (5679,[3,3,631]) (.node (.node .empty (62,[2,31]) .empty) (5680,[2,2,2,2,5,71]) .empty)) (2872,[2,2,2,359]) (.node (.node (.node .empty (63,[3,3,7]) .empty) (2873,[13,13,17]) .empty) (64,[2,2,2,2,2,2]) (.node .empty (65,[5,13]) .empty)))))
theorem part0003_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 88 131 part0003 := by
  change part0003.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 88 131 = true
  decide +kernel

def part0004 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (8493,[3,19,149]) .empty) (66,[2,3,11]) .empty) (67,[67]) (.node (.node .empty (8494,[2,31,137]) .empty) (68,[2,2,17]) .empty)) (8495,[5,1699]) (.node (.node (.node .empty (2878,[2,1439]) .empty) (69,[3,23]) .empty) (2879,[2879]) (.node .empty (70,[2,5,7]) .empty))) (71,[71]) (.node (.node (.node (.node .empty (2880,[2,2,2,2,2,2,3,3,5]) .empty) (72,[2,2,2,3,3]) .empty) (2881,[43,67]) (.node (.node .empty (73,[73]) .empty) (2882,[2,11,131]) .empty)) (74,[2,37]) (.node (.node (.node .empty (2883,[3,31,31]) .empty) (5693,[5693]) .empty) (75,[3,5,5]) (.node .empty (76,[2,2,19]) .empty)))) (2885,[5,577]) (.node (.node (.node (.node (.node .empty (5695,[5,17,67]) .empty) (77,[7,11]) .empty) (78,[2,3,13]) (.node (.node .empty (14123,[29,487]) .empty) (79,[79]) .empty)) (5697,[3,3,3,211]) (.node (.node (.node .empty (80,[2,2,2,2,5]) .empty) (2889,[3,3,3,107]) .empty) (81,[3,3,3,3]) (.node .empty (2890,[2,5,17,17]) .empty))) (82,[2,41]) (.node (.node (.node (.node .empty (2891,[7,7,59]) .empty) (83,[83]) .empty) (2892,[2,2,3,241]) (.node (.node .empty (5702,[2,2851]) .empty) (84,[2,2,3,7]) .empty)) (2894,[2,1447]) (.node (.node (.node .empty (85,[5,17]) .empty) (86,[2,43]) .empty) (5704,[2,2,2,23,31]) (.node .empty (2896,[2,2,2,2,181]) .empty)))))
theorem part0004_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 132 175 part0004 := by
  change part0004.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 132 175 = true
  decide +kernel

def part0005 : CertificateTree FactoredPoint := .node part0003 (2874,[2,3,479]) part0004
theorem part0005_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 88 175 part0005 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 88 175
    part0003 part0004 (2874,[2,3,479]) (by decide +kernel) part0003_valid
    (by decide +kernel) part0004_valid

def part0006 : CertificateTree FactoredPoint := .node part0002 (2852,[2,2,23,31]) part0005
theorem part0006_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 0 175 part0006 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 0 175
    part0002 part0005 (2852,[2,2,23,31]) (by decide +kernel) part0002_valid
    (by decide +kernel) part0005_valid

def part0007 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (88,[2,2,2,11]) .empty) (5706,[2,3,3,317]) .empty) (89,[89]) (.node (.node .empty (14134,[2,37,191]) .empty) (2899,[13,223]) .empty)) (90,[2,3,3,5]) (.node (.node (.node .empty (91,[7,13]) .empty) (2900,[2,2,5,5,29]) .empty) (92,[2,2,23]) (.node .empty (2901,[3,967]) .empty))) (2902,[2,1451]) (.node (.node (.node (.node .empty (93,[3,31]) .empty) (94,[2,47]) .empty) (14139,[3,3,1571]) (.node (.node .empty (8522,[2,4261]) .empty) (95,[5,19]) .empty)) (96,[2,2,2,2,2,3]) (.node (.node (.node .empty (8523,[3,3,947]) .empty) (97,[97]) .empty) (11333,[7,1619]) (.node .empty (98,[2,7,7]) .empty)))) (11334,[2,3,1889]) (.node (.node (.node (.node (.node .empty (2908,[2,2,727]) .empty) (99,[3,3,11]) .empty) (100,[2,2,5,5]) (.node (.node .empty (5718,[2,3,953]) .empty) (101,[101]) .empty)) (11337,[3,3779]) (.node (.node (.node .empty (11338,[2,5669]) .empty) (102,[2,3,17]) .empty) (103,[103]) (.node .empty (5721,[3,1907]) .empty))) (5722,[2,2861]) (.node (.node (.node (.node .empty (104,[2,2,2,13]) .empty) (105,[3,5,7]) .empty) (2914,[2,31,47]) (.node (.node .empty (0,[]) .empty) (0,[]) .empty)) (107,[107]) (.node (.node (.node .empty (5725,[5,5,229]) .empty) (108,[2,2,3,3,3]) .empty) (5726,[2,7,409]) (.node .empty (109,[109]) .empty)))))
theorem part0007_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 176 219 part0007 := by
  change part0007.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 176 219 = true
  decide +kernel

def part0008 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (2919,[3,7,139]) .empty) (110,[2,5,11]) .empty) (14156,[2,2,3539]) (.node (.node .empty (111,[3,37]) .empty) (112,[2,2,2,2,7]) .empty)) (2921,[23,127]) (.node (.node (.node .empty (113,[113]) .empty) (2922,[2,3,487]) .empty) (5732,[2,2,1433]) (.node .empty (114,[2,3,19]) .empty))) (8542,[2,4271]) (.node (.node (.node (.node .empty (115,[5,23]) .empty) (116,[2,2,29]) .empty) (2925,[3,3,5,5,13]) (.node (.node .empty (117,[3,3,13]) .empty) (8544,[2,2,2,2,2,3,89]) .empty)) (118,[2,59]) (.node (.node (.node .empty (5736,[2,2,2,3,239]) .empty) (5737,[5737]) .empty) (119,[7,17]) (.node .empty (16974,[2,3,3,23,41]) .empty)))) (120,[2,2,2,3,5]) (.node (.node (.node (.node (.node .empty (121,[11,11]) .empty) (2930,[2,5,293]) .empty) (122,[2,61]) (.node (.node .empty (2931,[3,977]) .empty) (2932,[2,2,733]) .empty)) (123,[3,41]) (.node (.node (.node .empty (124,[2,2,31]) .empty) (2933,[7,419]) .empty) (125,[5,5,5]) (.node .empty (2934,[2,3,3,163]) .empty))) (5744,[2,2,2,2,359]) (.node (.node (.node (.node .empty (126,[2,3,3,7]) .empty) (127,[127]) .empty) (8554,[2,7,13,47]) (.node (.node .empty (2937,[3,11,89]) .empty) (128,[2,2,2,2,2,2,2]) .empty)) (2938,[2,13,113]) (.node (.node (.node .empty (129,[3,43]) .empty) (130,[2,5,13]) .empty) (5748,[2,2,3,479]) (.node .empty (131,[131]) .empty)))))
theorem part0008_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 220 263 part0008 := by
  change part0008.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 220 263 = true
  decide +kernel

def part0009 : CertificateTree FactoredPoint := .node part0007 (8536,[2,2,2,11,97]) part0008
theorem part0009_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 176 263 part0009 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 176 263
    part0007 part0008 (8536,[2,2,2,11,97]) (by decide +kernel) part0007_valid
    (by decide +kernel) part0008_valid

def part0010 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (14177,[14177]) .empty) (132,[2,2,3,11]) .empty) (2942,[2,1471]) (.node (.node .empty (133,[7,19]) .empty) (134,[2,67]) .empty)) (2943,[3,3,3,109]) (.node (.node (.node .empty (2944,[2,2,2,2,2,2,2,23]) .empty) (135,[3,3,3,5]) .empty) (136,[2,2,2,17]) (.node .empty (16990,[2,5,1699]) .empty))) (137,[137]) (.node (.node (.node (.node .empty (2946,[2,3,491]) .empty) (5756,[2,2,1439]) .empty) (138,[2,3,23]) (.node (.node .empty (139,[139]) .empty) (2948,[2,2,11,67]) .empty)) (5758,[2,2879]) (.node (.node (.node .empty (140,[2,2,5,7]) .empty) (5759,[13,443]) .empty) (141,[3,47]) (.node .empty (142,[2,71]) .empty)))) (5760,[2,2,2,2,2,2,2,3,3,5]) (.node (.node (.node (.node (.node .empty (143,[11,13]) .empty) (2952,[2,2,2,3,3,41]) .empty) (144,[2,2,2,2,3,3]) (.node (.node .empty (5762,[2,43,67]) .empty) (5763,[3,17,113]) .empty)) (145,[5,29]) (.node (.node (.node .empty (146,[2,73]) .empty) (5764,[2,2,11,131]) .empty) (2956,[2,2,739]) (.node .empty (147,[3,7,7]) .empty))) (148,[2,2,37]) (.node (.node (.node (.node .empty (5766,[2,3,31,31]) .empty) (149,[149]) .empty) (5767,[73,79]) (.node (.node .empty (11386,[2,5693]) .empty) (150,[2,3,5,5]) .empty)) (151,[151]) (.node (.node (.node .empty (2960,[2,2,2,2,5,37]) .empty) (152,[2,2,2,19]) .empty) (5770,[2,5,577]) (.node .empty (2962,[2,1481]) .empty)))))
theorem part0010_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 264 307 part0010 := by
  change part0010.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 264 307 = true
  decide +kernel

def part0011 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (2963,[2963]) .empty) (154,[2,7,11]) .empty) (25436,[2,2,6359]) (.node (.node .empty (155,[5,31]) .empty) (156,[2,2,3,13]) .empty)) (2965,[5,593]) (.node (.node (.node .empty (157,[157]) .empty) (5775,[3,5,5,7,11]) .empty) (158,[2,79]) (.node .empty (11394,[2,3,3,3,211]) .empty))) (0,[]) (.node (.node (.node (.node .empty (0,[]) .empty) (160,[2,2,2,2,2,5]) .empty) (5778,[2,3,3,3,107]) (.node (.node .empty (2970,[2,3,3,3,5,11]) .empty) (161,[7,23]) .empty)) (162,[2,3,3,3,3]) (.node (.node (.node .empty (5780,[2,2,5,17,17]) .empty) (163,[163]) .empty) (8590,[2,5,859]) (.node .empty (164,[2,2,41]) .empty)))) (2973,[3,991]) (.node (.node (.node (.node (.node .empty (165,[3,5,11]) .empty) (8592,[2,2,2,2,3,179]) .empty) (166,[2,83]) (.node (.node .empty (5784,[2,2,2,3,241]) .empty) (167,[167]) .empty)) (2976,[2,2,2,2,2,3,31]) (.node (.node (.node .empty (2977,[13,229]) .empty) (168,[2,2,2,3,7]) .empty) (2978,[2,1489]) (.node .empty (169,[13,13]) .empty))) (5788,[2,2,1447]) (.node (.node (.node (.node .empty (170,[2,5,17]) .empty) (11407,[11,17,61]) .empty) (171,[3,3,19]) (.node (.node .empty (172,[2,2,43]) .empty) (2981,[11,271]) .empty)) (173,[173]) (.node (.node (.node .empty (8600,[2,2,2,5,5,43]) .empty) (5792,[2,2,2,2,2,181]) .empty) (174,[2,3,29]) (.node .empty (2984,[2,2,2,373]) .empty)))))
theorem part0011_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 308 351 part0011 := by
  change part0011.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 308 351 = true
  decide +kernel

def part0012 : CertificateTree FactoredPoint := .node part0010 (153,[3,3,17]) part0011
theorem part0012_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 264 351 part0012 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 264 351
    part0010 part0011 (153,[3,3,17]) (by decide +kernel) part0010_valid
    (by decide +kernel) part0011_valid

def part0013 : CertificateTree FactoredPoint := .node part0009 (8558,[2,11,389]) part0012
theorem part0013_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 176 351 part0013 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 176 351
    part0009 part0012 (8558,[2,11,389]) (by decide +kernel) part0009_valid
    (by decide +kernel) part0012_valid

def part0014 : CertificateTree FactoredPoint := .node part0006 (87,[3,29]) part0013
theorem part0014_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 0 351 part0014 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 0 351
    part0006 part0013 (87,[3,29]) (by decide +kernel) part0006_valid
    (by decide +kernel) part0013_valid

def part0015 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (176,[2,2,2,2,11]) .empty) (8603,[7,1229]) .empty) (2986,[2,1493]) (.node (.node .empty (177,[3,59]) .empty) (178,[2,89]) .empty)) (2987,[29,103]) (.node (.node (.node .empty (179,[179]) .empty) (2988,[2,2,3,3,83]) .empty) (5798,[2,13,223]) (.node .empty (180,[2,2,3,3,5]) .empty))) (181,[181]) (.node (.node (.node (.node .empty (2990,[2,5,13,23]) .empty) (182,[2,7,13]) .empty) (2991,[3,997]) (.node (.node .empty (5801,[5801]) .empty) (183,[3,61]) .empty)) (184,[2,2,2,23]) (.node (.node (.node .empty (2993,[41,73]) .empty) (8612,[2,2,2153]) .empty) (185,[5,37]) (.node .empty (5804,[2,2,1451]) .empty)))) (186,[2,3,31]) (.node (.node (.node (.node (.node .empty (5805,[3,3,3,5,43]) .empty) (187,[11,17]) .empty) (188,[2,2,47]) (.node (.node .empty (2997,[3,3,3,3,37]) .empty) (2998,[2,1499]) .empty)) (189,[3,3,3,7]) (.node (.node (.node .empty (2999,[2999]) .empty) (190,[2,5,19]) .empty) (191,[191]) (.node .empty (3000,[2,2,2,3,5,5,5]) .empty))) (192,[2,2,2,2,2,2,3]) (.node (.node (.node (.node .empty (8619,[3,13,13,17]) .empty) (193,[193]) .empty) (3002,[2,19,79]) (.node (.node .empty (194,[2,97]) .empty) (8621,[37,233]) .empty)) (3004,[2,2,751]) (.node (.node (.node .empty (195,[3,5,13]) .empty) (196,[2,2,7,7]) .empty) (3005,[5,601]) (.node .empty (197,[197]) .empty)))))
theorem part0015_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 352 395 part0015 := by
  change part0015.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 352 395 = true
  decide +kernel

def part0016 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (5816,[2,2,2,727]) .empty) (198,[2,3,3,11]) .empty) (199,[199]) (.node (.node .empty (8626,[2,19,227]) .empty) (200,[2,2,2,5,5]) .empty)) (11436,[2,2,3,953]) (.node (.node (.node .empty (3010,[2,5,7,43]) .empty) (201,[3,67]) .empty) (202,[2,101]) (.node .empty (14247,[3,3,1583]) .empty))) (5821,[5821]) (.node (.node (.node (.node .empty (203,[7,29]) .empty) (8631,[3,3,7,137]) .empty) (204,[2,2,3,17]) (.node (.node .empty (8632,[2,2,2,13,83]) .empty) (205,[5,41]) .empty)) (206,[2,103]) (.node (.node (.node .empty (8633,[89,97]) .empty) (3016,[2,2,2,13,29]) .empty) (207,[3,3,23]) (.node .empty (8635,[5,11,157]) .empty)))) (208,[2,2,2,2,13]) (.node (.node (.node (.node (.node .empty (5827,[5827]) .empty) (209,[11,19]) .empty) (210,[2,3,5,7]) (.node (.node .empty (5828,[2,2,31,47]) .empty) (211,[211]) .empty)) (3020,[2,2,5,151]) (.node (.node (.node .empty (0,[]) .empty) (0,[]) .empty) (3022,[2,1511]) (.node .empty (213,[3,71]) .empty))) (214,[2,107]) (.node (.node (.node (.node .empty (11450,[2,5,5,229]) .empty) (11451,[3,11,347]) .empty) (215,[5,43]) (.node (.node .empty (216,[2,2,2,3,3,3]) .empty) (3025,[5,5,11,11]) .empty)) (5835,[3,5,389]) (.node (.node (.node .empty (217,[7,31]) .empty) (218,[2,109]) .empty) (3027,[3,1009]) (.node .empty (3028,[2,2,757]) .empty)))))
theorem part0016_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 396 439 part0016 := by
  change part0016.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 396 439 = true
  decide +kernel

def part0017 : CertificateTree FactoredPoint := .node part0015 (3006,[2,3,3,167]) part0016
theorem part0017_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 352 439 part0017 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 352 439
    part0015 part0016 (3006,[2,3,3,167]) (by decide +kernel) part0015_valid
    (by decide +kernel) part0016_valid

def part0018 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (3029,[13,233]) .empty) (220,[2,2,5,11]) .empty) (221,[13,17]) (.node (.node .empty (8648,[2,2,2,23,47]) .empty) (19885,[5,41,97]) .empty)) (222,[2,3,37]) (.node (.node (.node .empty (223,[223]) .empty) (8650,[2,5,5,173]) .empty) (224,[2,2,2,2,2,7]) (.node .empty (3033,[3,3,337]) .empty))) (5843,[5843]) (.node (.node (.node (.node .empty (225,[3,3,5,5]) .empty) (226,[2,113]) .empty) (3035,[5,607]) (.node (.node .empty (227,[227]) .empty) (11463,[3,3821]) .empty)) (3037,[3037]) (.node (.node (.node .empty (228,[2,2,3,19]) .empty) (229,[229]) .empty) (3038,[2,7,7,31]) (.node .empty (17084,[2,2,4271]) .empty)))) (230,[2,5,23]) (.node (.node (.node (.node (.node .empty (231,[3,7,11]) .empty) (3040,[2,2,2,2,2,5,19]) .empty) (232,[2,2,2,29]) (.node (.node .empty (5850,[2,3,3,5,5,13]) .empty) (233,[233]) .empty)) (8660,[2,2,5,433]) (.node (.node (.node .empty (234,[2,3,3,13]) .empty) (3043,[17,179]) .empty) (3044,[2,2,761]) (.node .empty (235,[5,47]) .empty))) (236,[2,2,59]) (.node (.node (.node (.node .empty (3045,[3,5,7,29]) .empty) (3046,[2,1523]) .empty) (237,[3,79]) (.node (.node .empty (11474,[2,5737]) .empty) (238,[2,7,17]) .empty)) (239,[239]) (.node (.node (.node .empty (3048,[2,2,2,3,127]) .empty) (3049,[3049]) .empty) (240,[2,2,2,2,3,5]) (.node .empty (241,[241]) .empty)))))
theorem part0018_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 440 483 part0018 := by
  change part0018.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 440 483 = true
  decide +kernel

def part0019 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (242,[2,11,11]) .empty) (3051,[3,3,3,113]) .empty) (243,[3,3,3,3,3]) (.node (.node .empty (3052,[2,2,7,109]) .empty) (244,[2,2,61]) .empty)) (3053,[43,71]) (.node (.node (.node .empty (8672,[2,2,2,2,2,271]) .empty) (245,[5,7,7]) .empty) (5864,[2,2,2,733]) (.node .empty (246,[2,3,41]) .empty))) (247,[13,19]) (.node (.node (.node (.node .empty (5865,[3,5,17,23]) .empty) (248,[2,2,2,31]) .empty) (3057,[3,1019]) (.node (.node .empty (5867,[5867]) .empty) (249,[3,83]) .empty)) (250,[2,5,5,5]) (.node (.node (.node .empty (5868,[2,2,3,3,163]) .empty) (251,[251]) .empty) (19914,[2,3,3319]) (.node .empty (3061,[3061]) .empty)))) (252,[2,2,3,3,7]) (.node (.node (.node (.node (.node .empty (3062,[2,1531]) .empty) (253,[11,23]) .empty) (254,[2,127]) (.node (.node .empty (3063,[3,1021]) .empty) (255,[3,5,17]) .empty)) (5873,[7,839]) (.node (.node (.node .empty (5874,[2,3,11,89]) .empty) (256,[2,2,2,2,2,2,2,2]) .empty) (257,[257]) (.node .empty (5875,[5,5,5,47]) .empty))) (3067,[3067]) (.node (.node (.node (.node .empty (258,[2,3,43]) .empty) (3068,[2,2,13,59]) .empty) (259,[7,37]) (.node (.node .empty (260,[2,2,5,13]) .empty) (11496,[2,2,2,3,479]) .empty)) (5879,[5879]) (.node (.node (.node .empty (261,[3,3,29]) .empty) (262,[2,131]) .empty) (3071,[37,83]) (.node .empty (263,[263]) .empty)))))
theorem part0019_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 484 527 part0019 := by
  change part0019.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 484 527 = true
  decide +kernel

def part0020 : CertificateTree FactoredPoint := .node part0018 (3050,[2,5,5,61]) part0019
theorem part0020_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 440 527 part0020 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 440 527
    part0018 part0019 (3050,[2,5,5,61]) (by decide +kernel) part0018_valid
    (by decide +kernel) part0019_valid

def part0021 : CertificateTree FactoredPoint := .node part0017 (219,[3,73]) part0020
theorem part0021_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 352 527 part0021 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 352 527
    part0017 part0020 (219,[3,73]) (by decide +kernel) part0017_valid
    (by decide +kernel) part0020_valid

def part0022 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (19927,[19927]) .empty) (264,[2,2,2,3,11]) .empty) (0,[]) (.node (.node .empty (0,[]) .empty) (3075,[3,5,5,41]) .empty)) (266,[2,7,19]) (.node (.node (.node .empty (3076,[2,2,769]) .empty) (267,[3,89]) .empty) (268,[2,2,67]) (.node .empty (3077,[17,181]) .empty))) (269,[269]) (.node (.node (.node (.node .empty (3078,[2,3,3,3,3,19]) .empty) (3079,[3079]) .empty) (270,[2,3,3,3,5]) (.node (.node .empty (271,[271]) .empty) (5889,[3,13,151]) .empty)) (272,[2,2,2,2,17]) (.node (.node (.node .empty (3081,[3,13,79]) .empty) (8700,[2,2,3,5,5,29]) .empty) (273,[3,7,13]) (.node .empty (274,[2,137]) .empty)))) (5892,[2,2,3,491]) (.node (.node (.node (.node (.node .empty (25556,[2,2,6389]) .empty) (275,[5,5,11]) .empty) (11512,[2,2,2,1439]) (.node (.node .empty (276,[2,2,3,23]) .empty) (277,[277]) .empty)) (11513,[29,397]) (.node (.node (.node .empty (278,[2,139]) .empty) (3087,[3,3,7,7,7]) .empty) (3088,[2,2,2,2,193]) (.node .empty (279,[3,3,31]) .empty))) (3089,[3089]) (.node (.node (.node (.node .empty (280,[2,2,2,5,7]) .empty) (281,[281]) .empty) (5899,[17,347]) (.node (.node .empty (11518,[2,13,443]) .empty) (282,[2,3,47]) .empty)) (283,[283]) (.node (.node (.node .empty (8710,[2,5,13,67]) .empty) (284,[2,2,71]) .empty) (3093,[3,1031]) (.node .empty (285,[3,5,19]) .empty)))))
theorem part0022_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 528 571 part0022 := by
  change part0022.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 528 571 = true
  decide +kernel

def part0023 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (286,[2,11,13]) .empty) (3095,[5,619]) .empty) (8714,[2,4357]) (.node (.node .empty (287,[7,41]) .empty) (288,[2,2,2,2,2,3,3]) .empty)) (3097,[19,163]) (.node (.node (.node .empty (289,[17,17]) .empty) (11525,[5,5,461]) .empty) (11526,[2,3,17,113]) (.node .empty (290,[2,5,29]) .empty))) (11527,[11527]) (.node (.node (.node (.node .empty (291,[3,97]) .empty) (292,[2,2,73]) .empty) (3101,[7,443]) (.node (.node .empty (293,[293]) .empty) (5911,[23,257]) .empty)) (5912,[2,2,2,739]) (.node (.node (.node .empty (294,[2,3,7,7]) .empty) (3104,[2,2,2,2,2,97]) .empty) (295,[5,59]) (.node .empty (296,[2,2,2,37]) .empty)))) (8723,[11,13,61]) (.node (.node (.node (.node (.node .empty (3106,[2,1553]) .empty) (297,[3,3,3,11]) .empty) (298,[2,149]) (.node (.node .empty (8725,[5,5,349]) .empty) (299,[13,23]) .empty)) (5917,[61,97]) (.node (.node (.node .empty (3109,[3109]) .empty) (300,[2,2,3,5,5]) .empty) (8728,[2,2,2,1091]) (.node .empty (301,[7,43]) .empty))) (302,[2,151]) (.node (.node (.node (.node .empty (5920,[2,2,2,2,2,5,37]) .empty) (3112,[2,2,2,389]) .empty) (303,[3,101]) (.node (.node .empty (304,[2,2,2,2,19]) .empty) (3113,[11,283]) .empty)) (5923,[5923]) (.node (.node (.node .empty (305,[5,61]) .empty) (3115,[5,7,89]) .empty) (306,[2,3,3,17]) (.node .empty (307,[307]) .empty)))))
theorem part0023_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 572 615 part0023 := by
  change part0023.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 572 615 = true
  decide +kernel

def part0024 : CertificateTree FactoredPoint := .node part0022 (3094,[2,7,13,17]) part0023
theorem part0024_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 528 615 part0024 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 528 615
    part0022 part0023 (3094,[2,7,13,17]) (by decide +kernel) part0022_valid
    (by decide +kernel) part0023_valid

def part0025 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (5926,[2,2963]) .empty) (308,[2,2,7,11]) .empty) (3118,[2,1559]) (.node (.node .empty (309,[3,103]) .empty) (3119,[3119]) .empty)) (310,[2,5,31]) (.node (.node (.node .empty (311,[311]) .empty) (3120,[2,2,2,2,3,5,13]) .empty) (312,[2,2,2,3,13]) (.node .empty (5930,[2,5,593]) .empty))) (313,[313]) (.node (.node (.node (.node .empty (3122,[2,7,223]) .empty) (314,[2,157]) .empty) (3123,[3,3,347]) (.node (.node .empty (315,[3,3,5,7]) .empty) (3124,[2,2,11,71]) .empty)) (316,[2,2,79]) (.node (.node (.node .empty (8743,[7,1249]) .empty) (317,[317]) .empty) (3126,[2,3,521]) (.node .empty (0,[]) .empty)))) (0,[]) (.node (.node (.node (.node (.node .empty (8746,[2,4373]) .empty) (319,[11,29]) .empty) (320,[2,2,2,2,2,2,5]) (.node (.node .empty (11556,[2,2,3,3,3,107]) .empty) (5939,[5939]) .empty)) (321,[3,107]) (.node (.node (.node .empty (5940,[2,2,3,3,3,5,11]) .empty) (322,[2,7,23]) .empty) (5941,[13,457]) (.node .empty (323,[17,19]) .empty))) (324,[2,2,3,3,3,3]) (.node (.node (.node (.node .empty (8751,[3,2917]) .empty) (325,[5,5,13]) .empty) (11561,[11,1051]) (.node (.node .empty (326,[2,163]) .empty) (3135,[3,5,11,19]) .empty)) (3136,[2,2,2,2,2,2,7,7]) (.node (.node (.node .empty (327,[3,109]) .empty) (328,[2,2,2,41]) .empty) (5946,[2,3,991]) (.node .empty (11565,[3,3,5,257]) .empty)))))
theorem part0025_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 616 659 part0025 := by
  change part0025.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 616 659 = true
  decide +kernel

def part0026 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (330,[2,3,5,11]) .empty) (3139,[43,73]) .empty) (331,[331]) (.node (.node .empty (3140,[2,2,5,157]) .empty) (332,[2,2,83]) .empty)) (3141,[3,3,349]) (.node (.node (.node .empty (3142,[2,1571]) .empty) (333,[3,3,37]) .empty) (334,[2,167]) (.node .empty (3143,[7,449]) .empty))) (5953,[5953]) (.node (.node (.node (.node .empty (335,[5,67]) .empty) (3145,[5,17,37]) .empty) (336,[2,2,2,2,3,7]) (.node (.node .empty (337,[337]) .empty) (8764,[2,2,7,313]) .empty)) (5956,[2,2,1489]) (.node (.node (.node .empty (338,[2,13,13]) .empty) (3148,[2,2,787]) .empty) (339,[3,113]) (.node .empty (11576,[2,2,2,1447]) .empty)))) (340,[2,2,5,17]) (.node (.node (.node (.node (.node .empty (3150,[2,3,3,5,5,7]) .empty) (341,[11,31]) .empty) (8769,[3,37,79]) (.node (.node .empty (342,[2,3,3,19]) .empty) (343,[7,7,7]) .empty)) (5961,[3,1987]) (.node (.node (.node .empty (344,[2,2,2,43]) .empty) (3153,[3,1051]) .empty) (345,[3,5,23]) (.node .empty (3154,[2,19,83]) .empty))) (346,[2,173]) (.node (.node (.node (.node .empty (3155,[5,631]) .empty) (347,[347]) .empty) (3156,[2,2,3,263]) (.node .empty (3157,[7,11,41]) .empty)) (348,[2,2,3,29]) (.node (.node (.node .empty (349,[349]) .empty) (5967,[3,3,3,13,17]) .empty) (3159,[3,3,3,3,3,13]) (.node .empty (350,[2,5,5,7]) .empty)))))
theorem part0026_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 660 702 part0026 := by
  change part0026.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 660 702 = true
  decide +kernel

def part0027 : CertificateTree FactoredPoint := .node part0025 (329,[7,47]) part0026
theorem part0027_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 616 702 part0027 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 616 702
    part0025 part0026 (329,[7,47]) (by decide +kernel) part0025_valid
    (by decide +kernel) part0026_valid

def part0028 : CertificateTree FactoredPoint := .node part0024 (3116,[2,2,19,41]) part0027
theorem part0028_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 528 702 part0028 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 528 702
    part0024 part0027 (3116,[2,2,19,41]) (by decide +kernel) part0024_valid
    (by decide +kernel) part0027_valid

def part0029 : CertificateTree FactoredPoint := .node part0021 (11499,[3,3833]) part0028
theorem part0029_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 352 702 part0029 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 352 702
    part0021 part0028 (11499,[3,3833]) (by decide +kernel) part0021_valid
    (by decide +kernel) part0028_valid

def part0030 : CertificateTree FactoredPoint := .node part0014 (175,[5,5,7]) part0029
theorem part0030_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 0 702 part0030 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 0 702
    part0014 part0029 (175,[5,5,7]) (by decide +kernel) part0014_valid
    (by decide +kernel) part0029_valid

def part0031 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (3160,[2,2,2,5,79]) .empty) (352,[2,2,2,2,2,11]) .empty) (3161,[29,109]) (.node (.node .empty (353,[353]) .empty) (5971,[7,853]) .empty)) (3163,[3163]) (.node (.node (.node .empty (354,[2,3,59]) .empty) (5973,[3,11,181]) .empty) (355,[5,71]) (.node .empty (356,[2,2,89]) .empty))) (5974,[2,29,103]) (.node (.node (.node (.node .empty (357,[3,7,17]) .empty) (5975,[5,5,239]) .empty) (358,[2,179]) (.node (.node .empty (5976,[2,2,2,3,3,83]) .empty) (359,[359]) .empty)) (3168,[2,2,2,2,2,3,3,11]) (.node (.node (.node .empty (3169,[3169]) .empty) (360,[2,2,2,3,3,5]) .empty) (361,[19,19]) (.node .empty (3170,[2,5,317]) .empty)))) (362,[2,181]) (.node (.node (.node (.node (.node .empty (5980,[2,2,5,13,23]) .empty) (3172,[2,2,13,61]) .empty) (363,[3,11,11]) (.node (.node .empty (364,[2,2,7,13]) .empty) (3173,[19,167]) .empty)) (14410,[2,5,11,131]) (.node (.node (.node .empty (365,[5,73]) .empty) (11602,[2,5801]) .empty) (366,[2,3,61]) (.node .empty (367,[367]) .empty))) (5985,[3,3,5,7,19]) (.node (.node (.node (.node .empty (368,[2,2,2,2,23]) .empty) (3177,[3,3,353]) .empty) (5987,[5987]) (.node (.node .empty (369,[3,3,41]) .empty) (14415,[3,5,31,31]) .empty)) (370,[2,5,37]) (.node (.node (.node .empty (0,[]) .empty) (0,[]) .empty) (3181,[3181]) (.node .empty (372,[2,2,3,31]) .empty)))))
theorem part0031_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 703 746 part0031 := by
  change part0031.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 703 746 = true
  decide +kernel

def part0032 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (3182,[2,37,43]) .empty) (8801,[13,677]) .empty) (374,[2,11,17]) (.node (.node .empty (3184,[2,2,2,2,199]) .empty) (375,[3,5,5,5]) .empty)) (376,[2,2,2,47]) (.node (.node (.node .empty (3185,[5,7,7,13]) .empty) (377,[13,29]) .empty) (3186,[2,3,3,3,59]) (.node .empty (3187,[3187]) .empty))) (378,[2,3,3,3,7]) (.node (.node (.node (.node .empty (379,[379]) .empty) (5997,[3,1999]) .empty) (5998,[2,2999]) (.node (.node .empty (380,[2,2,5,19]) .empty) (3190,[2,5,11,29]) .empty)) (381,[3,127]) (.node (.node (.node .empty (382,[2,191]) .empty) (6000,[2,2,2,2,3,5,5,5]) .empty) (383,[383]) (.node .empty (6001,[17,353]) .empty)))) (384,[2,2,2,2,2,2,2,3]) (.node (.node (.node (.node (.node .empty (3193,[31,103]) .empty) (385,[5,7,11]) .empty) (20048,[2,2,2,2,7,179]) (.node (.node .empty (386,[2,193]) .empty) (6004,[2,2,19,79]) .empty)) (17241,[3,7,821]) (.node (.node (.node .empty (387,[3,3,43]) .empty) (388,[2,2,97]) .empty) (3197,[23,139]) (.node .empty (389,[389]) .empty))) (3198,[2,3,13,41]) (.node (.node (.node (.node .empty (6008,[2,2,2,751]) .empty) (390,[2,3,5,13]) .empty) (3200,[2,2,2,2,2,2,2,5,5]) (.node (.node .empty (391,[17,23]) .empty) (392,[2,2,2,7,7]) .empty)) (6010,[2,5,601]) (.node (.node (.node .empty (3202,[2,1601]) .empty) (393,[3,131]) .empty) (394,[2,197]) (.node .empty (6012,[2,2,3,3,167]) .empty)))))
theorem part0032_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 747 790 part0032 := by
  change part0032.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 747 790 = true
  decide +kernel

def part0033 : CertificateTree FactoredPoint := .node part0031 (373,[373]) part0032
theorem part0033_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 703 790 part0033 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 703 790
    part0031 part0032 (373,[373]) (by decide +kernel) part0031_valid
    (by decide +kernel) part0032_valid

def part0034 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (395,[5,79]) .empty) (8823,[3,17,173]) .empty) (396,[2,2,3,3,11]) (.node (.node .empty (397,[397]) .empty) (3206,[2,7,229]) .empty)) (398,[2,199]) (.node (.node (.node .empty (3207,[3,1069]) .empty) (399,[3,7,19]) .empty) (6017,[11,547]) (.node .empty (400,[2,2,2,2,5,5]) .empty))) (8827,[7,13,97]) (.node (.node (.node (.node .empty (401,[401]) .empty) (11637,[3,3,3,431]) .empty) (3211,[13,13,19]) (.node (.node .empty (402,[2,3,67]) .empty) (403,[13,31]) .empty)) (3212,[2,2,11,73]) (.node (.node (.node .empty (404,[2,2,101]) .empty) (20067,[3,6689]) .empty) (3214,[2,1607]) (.node .empty (405,[3,3,3,3,5]) .empty)))) (11642,[2,5821]) (.node (.node (.node (.node (.node .empty (406,[2,7,29]) .empty) (14452,[2,2,3613]) .empty) (407,[11,37]) (.node (.node .empty (3217,[3217]) .empty) (408,[2,2,2,3,17]) .empty)) (409,[409]) (.node (.node (.node .empty (17263,[61,283]) .empty) (3219,[3,29,37]) .empty) (410,[2,5,41]) (.node .empty (3220,[2,2,5,7,23]) .empty))) (411,[3,137]) (.node (.node (.node (.node .empty (412,[2,2,103]) .empty) (17266,[2,89,97]) .empty) (11649,[3,11,353]) (.node (.node .empty (413,[7,59]) .empty) (6032,[2,2,2,2,13,29]) .empty)) (414,[2,3,3,23]) (.node (.node (.node .empty (3224,[2,2,2,13,31]) .empty) (415,[5,83]) .empty) (3225,[3,5,5,43]) (.node .empty (416,[2,2,2,2,2,13]) .empty)))))
theorem part0034_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 791 834 part0034 := by
  change part0034.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 791 834 = true
  decide +kernel

def part0035 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (417,[3,139]) .empty) (8845,[5,29,61]) .empty) (418,[2,11,19]) (.node (.node .empty (419,[419]) .empty) (3228,[2,2,3,269]) .empty)) (420,[2,2,3,5,7]) (.node (.node (.node .empty (8847,[3,3,983]) .empty) (421,[421]) .empty) (8848,[2,2,2,2,7,79]) (.node .empty (422,[2,211]) .empty))) (3231,[3,3,359]) (.node (.node (.node (.node .empty (3232,[2,2,2,2,2,101]) .empty) (423,[3,3,47]) .empty) (0,[]) (.node (.node .empty (0,[]) .empty) (3234,[2,3,7,7,11]) .empty)) (425,[5,5,17]) (.node (.node (.node .empty (6044,[2,2,1511]) .empty) (426,[2,3,71]) .empty) (3236,[2,2,809]) (.node .empty (427,[7,61]) .empty)))) (428,[2,2,107]) (.node (.node (.node (.node (.node .empty (3237,[3,13,83]) .empty) (3238,[2,1619]) .empty) (429,[3,11,13]) (.node (.node .empty (14475,[3,5,5,193]) .empty) (430,[2,5,43]) .empty)) (431,[431]) (.node (.node (.node .empty (3240,[2,2,2,3,3,3,3,5]) .empty) (432,[2,2,2,2,3,3,3]) .empty) (3241,[7,463]) (.node .empty (433,[433]) .empty))) (6051,[3,2017]) (.node (.node (.node (.node .empty (3243,[3,23,47]) .empty) (434,[2,7,31]) .empty) (435,[3,5,29]) (.node (.node .empty (11671,[11,1061]) .empty) (436,[2,2,109]) .empty)) (6054,[2,3,1009]) (.node (.node (.node .empty (6055,[5,7,173]) .empty) (437,[19,23]) .empty) (6056,[2,2,2,757]) (.node .empty (438,[2,3,73]) .empty)))))
theorem part0035_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 835 878 part0035 := by
  change part0035.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 835 878 = true
  decide +kernel

def part0036 : CertificateTree FactoredPoint := .node part0034 (3226,[2,1613]) part0035
theorem part0036_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 791 878 part0036 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 791 878
    part0034 part0035 (3226,[2,1613]) (by decide +kernel) part0034_valid
    (by decide +kernel) part0035_valid

def part0037 : CertificateTree FactoredPoint := .node part0033 (22867,[13,1759]) part0036
theorem part0037_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 703 878 part0037 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 703 878
    part0033 part0036 (22867,[13,1759]) (by decide +kernel) part0033_valid
    (by decide +kernel) part0036_valid

def part0038 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (3248,[2,2,2,2,7,29]) .empty) (6058,[2,13,233]) .empty) (440,[2,2,2,5,11]) (.node (.node .empty (3250,[2,5,5,5,13]) .empty) (441,[3,3,7,7]) .empty)) (442,[2,13,17]) (.node (.node (.node .empty (8869,[7,7,181]) .empty) (443,[443]) .empty) (3252,[2,2,3,271]) (.node .empty (3253,[3253]) .empty))) (444,[2,2,3,37]) (.node (.node (.node (.node .empty (3254,[2,1627]) .empty) (445,[5,89]) .empty) (446,[2,223]) (.node (.node .empty (3255,[3,5,7,31]) .empty) (8874,[2,3,3,17,29]) .empty)) (447,[3,149]) (.node (.node (.node .empty (448,[2,2,2,2,2,2,7]) .empty) (6066,[2,3,3,337]) .empty) (449,[449]) (.node .empty (3258,[2,3,3,181]) .empty)))) (3259,[3259]) (.node (.node (.node (.node (.node .empty (450,[2,3,3,5,5]) .empty) (6069,[3,7,17,17]) .empty) (451,[11,41]) (.node (.node .empty (452,[2,2,113]) .empty) (3261,[3,1087]) .empty)) (6071,[13,467]) (.node (.node (.node .empty (453,[3,151]) .empty) (454,[2,227]) .empty) (8881,[83,107]) (.node .empty (6073,[6073]) .empty))) (455,[5,7,13]) (.node (.node (.node (.node .empty (6074,[2,3037]) .empty) (456,[2,2,2,3,19]) .empty) (457,[457]) (.node (.node .empty (3266,[2,23,71]) .empty) (458,[2,229]) .empty)) (3267,[3,3,3,11,11]) (.node (.node (.node .empty (17313,[3,29,199]) .empty) (459,[3,3,3,17]) .empty) (8887,[8887]) (.node .empty (460,[2,2,5,23]) .empty)))))
theorem part0038_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 879 922 part0038 := by
  change part0038.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 879 922 = true
  decide +kernel

def part0039 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (8888,[2,2,2,11,101]) .empty) (462,[2,3,7,11]) .empty) (6080,[2,2,2,2,2,2,5,19]) (.node (.node .empty (463,[463]) .empty) (6081,[3,2027]) .empty)) (464,[2,2,2,2,29]) (.node (.node (.node .empty (3273,[3,1091]) .empty) (465,[3,5,31]) .empty) (8892,[2,2,3,3,13,19]) (.node .empty (466,[2,233]) .empty))) (3275,[5,5,131]) (.node (.node (.node (.node .empty (467,[467]) .empty) (3276,[2,2,3,3,7,13]) .empty) (468,[2,2,3,3,13]) (.node (.node .empty (3277,[29,113]) .empty) (8896,[2,2,2,2,2,2,139]) .empty)) (469,[7,67]) (.node (.node (.node .empty (6088,[2,2,2,761]) .empty) (470,[2,5,47]) .empty) (6089,[6089]) (.node .empty (471,[3,157]) .empty)))) (472,[2,2,2,59]) (.node (.node (.node (.node (.node .empty (3281,[17,193]) .empty) (6091,[6091]) .empty) (473,[11,43]) (.node (.node .empty (6092,[2,2,1523]) .empty) (474,[2,3,79]) .empty)) (3284,[2,2,821]) (.node (.node (.node .empty (475,[5,5,19]) .empty) (3285,[3,3,5,73]) .empty) (476,[2,2,7,17]) (.node .empty (0,[]) .empty))) (0,[]) (.node (.node (.node (.node .empty (478,[2,239]) .empty) (3287,[19,173]) .empty) (479,[479]) (.node (.node .empty (3288,[2,2,2,3,137]) .empty) (6098,[2,3049]) .empty)) (480,[2,2,2,2,2,3,5]) (.node (.node (.node .empty (481,[13,37]) .empty) (8908,[2,2,17,131]) .empty) (482,[2,241]) (.node .empty (3291,[3,1097]) .empty)))))
theorem part0039_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 923 966 part0039 := by
  change part0039.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 923 966 = true
  decide +kernel

def part0040 : CertificateTree FactoredPoint := .node part0038 (461,[461]) part0039
theorem part0040_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 879 966 part0040 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 879 966
    part0038 part0039 (461,[461]) (by decide +kernel) part0038_valid
    (by decide +kernel) part0039_valid

def part0041 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (17337,[3,5779]) .empty) (484,[2,2,11,11]) .empty) (3293,[37,89]) (.node (.node .empty (8912,[2,2,2,2,557]) .empty) (485,[5,97]) .empty)) (486,[2,3,3,3,3,3]) (.node (.node (.node .empty (3295,[5,659]) .empty) (487,[487]) .empty) (6105,[3,5,11,37]) (.node .empty (488,[2,2,2,61]) .empty))) (6106,[2,43,71]) (.node (.node (.node (.node .empty (11725,[5,5,7,67]) .empty) (489,[3,163]) .empty) (3299,[3299]) (.node (.node .empty (490,[2,5,7,7]) .empty) (491,[491]) .empty)) (6109,[41,149]) (.node (.node (.node .empty (3301,[3301]) .empty) (492,[2,2,3,41]) .empty) (3302,[2,13,127]) (.node .empty (493,[17,29]) .empty)))) (494,[2,13,19]) (.node (.node (.node (.node (.node .empty (3303,[3,3,367]) .empty) (495,[3,3,5,11]) .empty) (3304,[2,2,2,7,59]) (.node (.node .empty (496,[2,2,2,2,31]) .empty) (3305,[5,661]) .empty)) (3306,[2,3,19,29]) (.node (.node (.node .empty (497,[7,71]) .empty) (3307,[3307]) .empty) (498,[2,3,83]) (.node .empty (499,[499]) .empty))) (6117,[3,2039]) (.node (.node (.node (.node .empty (500,[2,2,5,5,5]) .empty) (3309,[3,1103]) .empty) (17355,[3,5,13,89]) (.node (.node .empty (501,[3,167]) .empty) (502,[2,251]) .empty)) (14547,[3,13,373]) (.node (.node (.node .empty (503,[503]) .empty) (3312,[2,2,2,2,3,3,23]) .empty) (3313,[3313]) (.node .empty (504,[2,2,2,3,3,7]) .empty)))))
theorem part0041_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 967 1010 part0041 := by
  change part0041.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 967 1010 = true
  decide +kernel

def part0042 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (505,[5,101]) .empty) (3315,[3,5,13,17]) .empty) (506,[2,11,23]) (.node (.node .empty (507,[3,13,13]) .empty) (6125,[5,5,5,7,7]) .empty)) (508,[2,2,127]) (.node (.node (.node .empty (3317,[31,107]) .empty) (509,[509]) .empty) (6127,[11,557]) (.node .empty (510,[2,3,5,17]) .empty))) (8937,[3,3,3,331]) (.node (.node (.node (.node .empty (17365,[5,23,151]) .empty) (511,[7,73]) .empty) (11748,[2,2,3,11,89]) (.node (.node .empty (512,[2,2,2,2,2,2,2,2,2]) .empty) (6131,[6131]) .empty)) (513,[3,3,3,19]) (.node (.node (.node .empty (514,[2,257]) .empty) (11750,[2,5,5,5,47]) .empty) (6133,[6133]) (.node .empty (515,[5,103]) .empty)))) (3325,[5,5,7,19]) (.node (.node (.node (.node (.node .empty (516,[2,2,3,43]) .empty) (3326,[2,1663]) .empty) (517,[11,47]) (.node (.node .empty (6136,[2,2,2,13,59]) .empty) (518,[2,7,37]) .empty)) (8946,[2,3,3,7,71]) (.node (.node (.node .empty (519,[3,173]) .empty) (520,[2,2,2,5,13]) .empty) (8947,[23,389]) (.node .empty (521,[521]) .empty))) (6139,[7,877]) (.node (.node (.node (.node .empty (3331,[3331]) .empty) (522,[2,3,3,29]) .empty) (523,[523]) (.node .empty (3332,[2,2,7,7,17]) .empty)) (524,[2,2,131]) (.node (.node (.node .empty (6142,[2,37,83]) .empty) (525,[3,5,5,7]) .empty) (8952,[2,2,2,3,373]) (.node .empty (526,[2,263]) .empty)))))
theorem part0042_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1011 1053 part0042 := by
  change part0042.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 1011 1053 = true
  decide +kernel

def part0043 : CertificateTree FactoredPoint := .node part0041 (3314,[2,1657]) part0042
theorem part0043_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 967 1053 part0043 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 967 1053
    part0041 part0042 (3314,[2,1657]) (by decide +kernel) part0041_valid
    (by decide +kernel) part0042_valid

def part0044 : CertificateTree FactoredPoint := .node part0040 (483,[3,7,23]) part0043
theorem part0044_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 879 1053 part0044 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 879 1053
    part0040 part0043 (483,[3,7,23]) (by decide +kernel) part0040_valid
    (by decide +kernel) part0043_valid

def part0045 : CertificateTree FactoredPoint := .node part0037 (439,[439]) part0044
theorem part0045_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 703 1053 part0045 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 703 1053
    part0037 part0044 (439,[439]) (by decide +kernel) part0037_valid
    (by decide +kernel) part0044_valid

def part0046 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (14572,[2,2,3643]) .empty) (527,[17,31]) .empty) (8955,[3,3,5,199]) (.node (.node .empty (528,[2,2,2,2,3,11]) .empty) (529,[23,23]) .empty)) (6147,[3,3,683]) (.node (.node (.node .empty (0,[]) .empty) (0,[]) .empty) (14576,[2,2,2,2,911]) (.node .empty (531,[3,3,59]) .empty))) (3341,[13,257]) (.node (.node (.node (.node .empty (532,[2,2,7,19]) .empty) (533,[13,41]) .empty) (3342,[2,3,557]) (.node (.node .empty (3343,[3343]) .empty) (534,[2,3,89]) .empty)) (6153,[3,7,293]) (.node (.node (.node .empty (535,[5,107]) .empty) (536,[2,2,2,67]) .empty) (6154,[2,17,181]) (.node .empty (23009,[7,19,173]) .empty)))) (537,[3,179]) (.node (.node (.node (.node (.node .empty (538,[2,269]) .empty) (6156,[2,2,3,3,3,3,19]) .empty) (8966,[2,4483]) (.node (.node .empty (539,[7,7,11]) .empty) (6158,[2,3079]) .empty)) (540,[2,2,3,3,3,5]) (.node (.node (.node .empty (541,[541]) .empty) (3350,[2,5,5,67]) .empty) (542,[2,271]) (.node .empty (3351,[3,1117]) .empty))) (3352,[2,2,2,419]) (.node (.node (.node (.node .empty (543,[3,181]) .empty) (544,[2,2,2,2,2,17]) .empty) (3353,[7,479]) (.node (.node .empty (6163,[6163]) .empty) (545,[5,109]) .empty)) (3355,[5,11,61]) (.node (.node (.node .empty (546,[2,3,7,13]) .empty) (547,[547]) .empty) (8974,[2,7,641]) (.node .empty (548,[2,2,137]) .empty)))))
theorem part0046_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1054 1097 part0046 := by
  change part0046.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 1054 1097 = true
  decide +kernel

def part0047 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (8976,[2,2,2,2,3,11,17]) .empty) (549,[3,3,61]) .empty) (3359,[3359]) (.node (.node .empty (550,[2,5,5,11]) .empty) (3360,[2,2,2,2,2,3,5,7]) .empty)) (551,[19,29]) (.node (.node (.node .empty (3361,[3361]) .empty) (552,[2,2,2,3,23]) .empty) (3362,[2,41,41]) (.node .empty (553,[7,79]) .empty))) (554,[2,277]) (.node (.node (.node (.node .empty (8981,[7,1283]) .empty) (555,[3,5,37]) .empty) (8982,[2,3,3,499]) (.node (.node .empty (556,[2,2,139]) .empty) (3365,[5,673]) .empty)) (557,[557]) (.node (.node (.node .empty (6175,[5,5,13,19]) .empty) (6176,[2,2,2,2,2,193]) .empty) (558,[2,3,3,31]) (.node .empty (559,[13,43]) .empty)))) (14604,[2,2,3,1217]) (.node (.node (.node (.node (.node .empty (6178,[2,3089]) .empty) (560,[2,2,2,2,5,7]) .empty) (561,[3,11,17]) (.node (.node .empty (3370,[2,5,337]) .empty) (562,[2,281]) .empty)) (8989,[89,101]) (.node (.node (.node .empty (563,[563]) .empty) (3372,[2,2,3,281]) .empty) (3373,[3373]) (.node .empty (564,[2,2,3,47]) .empty))) (8992,[2,2,2,2,2,281]) (.node (.node (.node (.node .empty (565,[5,113]) .empty) (566,[2,283]) .empty) (3375,[3,3,3,5,5,5]) (.node (.node .empty (3376,[2,2,2,2,211]) .empty) (567,[3,3,3,3,7]) .empty)) (568,[2,2,2,71]) (.node (.node (.node .empty (3377,[11,307]) .empty) (569,[569]) .empty) (3378,[2,3,563]) (.node .empty (570,[2,3,5,19]) .empty)))))
theorem part0047_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1098 1141 part0047 := by
  change part0047.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 1098 1141 = true
  decide +kernel

def part0048 : CertificateTree FactoredPoint := .node part0046 (3357,[3,3,373]) part0047
theorem part0048_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1054 1141 part0048 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 1054 1141
    part0046 part0047 (3357,[3,3,373]) (by decide +kernel) part0046_valid
    (by decide +kernel) part0047_valid

def part0049 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (571,[571]) .empty) (6189,[3,2063]) .empty) (572,[2,2,11,13]) (.node (.node .empty (6190,[2,5,619]) .empty) (14618,[2,7309]) .empty)) (573,[3,191]) (.node (.node (.node .empty (9001,[9001]) .empty) (574,[2,7,41]) .empty) (11811,[3,31,127]) (.node .empty (575,[5,5,23]) .empty))) (576,[2,2,2,2,2,2,3,3]) (.node (.node (.node (.node .empty (3385,[5,677]) .empty) (577,[577]) .empty) (6195,[3,5,7,59]) (.node (.node .empty (578,[2,17,17]) .empty) (3387,[3,1129]) .empty)) (6197,[6197]) (.node (.node (.node .empty (579,[3,193]) .empty) (3389,[3389]) .empty) (580,[2,2,5,29]) (.node .empty (3390,[2,3,5,113]) .empty)))) (581,[7,83]) (.node (.node (.node (.node (.node .empty (3391,[3391]) .empty) (582,[2,3,97]) .empty) (0,[]) (.node (.node .empty (0,[]) .empty) (584,[2,2,2,73]) .empty)) (3393,[3,3,13,29]) (.node (.node (.node .empty (3394,[2,1697]) .empty) (585,[3,3,5,13]) .empty) (586,[2,293]) (.node .empty (11822,[2,23,257]) .empty))) (587,[587]) (.node (.node (.node (.node .empty (3396,[2,2,3,283]) .empty) (9015,[3,5,601]) .empty) (588,[2,2,3,7,7]) (.node (.node .empty (3398,[2,1699]) .empty) (589,[19,31]) .empty)) (3399,[3,11,103]) (.node (.node (.node .empty (590,[2,5,59]) .empty) (11827,[11827]) .empty) (591,[3,197]) (.node .empty (592,[2,2,2,2,37]) .empty)))))
theorem part0049_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1142 1185 part0049 := by
  change part0049.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 1142 1185 = true
  decide +kernel

def part0050 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (593,[593]) .empty) (3402,[2,3,3,3,3,3,7]) .empty) (6212,[2,2,1553]) (.node (.node .empty (594,[2,3,3,3,11]) .empty) (595,[5,7,17]) .empty)) (3404,[2,2,23,37]) (.node (.node (.node .empty (596,[2,2,149]) .empty) (9023,[7,1289]) .empty) (3406,[2,13,131]) (.node .empty (597,[3,199]) .empty))) (598,[2,13,23]) (.node (.node (.node (.node .empty (9025,[5,5,19,19]) .empty) (599,[599]) .empty) (3408,[2,2,2,2,3,71]) (.node (.node .empty (6218,[2,3109]) .empty) (600,[2,2,2,3,5,5]) .empty)) (601,[601]) (.node (.node (.node .empty (6219,[3,3,691]) .empty) (9029,[9029]) .empty) (602,[2,7,43]) (.node .empty (3412,[2,2,853]) .empty)))) (603,[3,3,67]) (.node (.node (.node (.node (.node .empty (604,[2,2,151]) .empty) (9031,[11,821]) .empty) (9032,[2,2,2,1129]) (.node (.node .empty (605,[5,11,11]) .empty) (6224,[2,2,2,2,389]) .empty)) (606,[2,3,101]) (.node (.node (.node .empty (607,[607]) .empty) (3416,[2,2,2,7,61]) .empty) (608,[2,2,2,2,2,19]) (.node .empty (6226,[2,11,283]) .empty))) (609,[3,7,29]) (.node (.node (.node (.node .empty (9036,[2,2,3,3,251]) .empty) (3419,[13,263]) .empty) (610,[2,5,61]) (.node (.node .empty (611,[13,47]) .empty) (23083,[41,563]) .empty)) (6230,[2,5,7,89]) (.node (.node (.node .empty (612,[2,2,3,3,17]) .empty) (613,[613]) .empty) (3422,[2,29,59]) (.node .empty (614,[2,307]) .empty)))))
theorem part0050_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1186 1229 part0050 := by
  change part0050.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 1186 1229 = true
  decide +kernel

def part0051 : CertificateTree FactoredPoint := .node part0049 (3401,[19,179]) part0050
theorem part0051_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1142 1229 part0051 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 1142 1229
    part0049 part0050 (3401,[19,179]) (by decide +kernel) part0049_valid
    (by decide +kernel) part0050_valid

def part0052 : CertificateTree FactoredPoint := .node part0048 (3379,[31,109]) part0051
theorem part0052_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1054 1229 part0052 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 1054 1229
    part0048 part0051 (3379,[31,109]) (by decide +kernel) part0048_valid
    (by decide +kernel) part0051_valid

def part0053 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (615,[3,5,41]) .empty) (6233,[23,271]) .empty) (9043,[9043]) (.node (.node .empty (616,[2,2,2,7,11]) .empty) (617,[617]) .empty)) (3426,[2,3,571]) (.node (.node (.node .empty (6236,[2,2,1559]) .empty) (618,[2,3,103]) .empty) (619,[619]) (.node .empty (11855,[5,2371]) .empty))) (6238,[2,3119]) (.node (.node (.node (.node .empty (620,[2,2,5,31]) .empty) (14666,[2,7333]) .empty) (621,[3,3,3,23]) (.node (.node .empty (622,[2,311]) .empty) (3431,[47,73]) .empty)) (6241,[79,79]) (.node (.node (.node .empty (623,[7,89]) .empty) (624,[2,2,2,2,3,13]) .empty) (11860,[2,2,5,593]) (.node .empty (625,[5,5,5,5]) .empty)))) (3434,[2,17,101]) (.node (.node (.node (.node (.node .empty (626,[2,313]) .empty) (6244,[2,2,7,223]) .empty) (627,[3,11,19]) (.node (.node .empty (6245,[5,1249]) .empty) (628,[2,2,157]) .empty)) (3437,[7,491]) (.node (.node (.node .empty (6247,[6247]) .empty) (629,[17,37]) .empty) (630,[2,3,3,5,7]) (.node .empty (3439,[19,181]) .empty))) (631,[631]) (.node (.node (.node (.node .empty (3440,[2,2,2,2,5,43]) .empty) (632,[2,2,2,79]) .empty) (17486,[2,7,1249]) (.node (.node .empty (3442,[2,1721]) .empty) (633,[3,211]) .empty)) (634,[2,317]) (.node (.node (.node .empty (3443,[11,313]) .empty) (3444,[2,2,3,7,41]) .empty) (635,[5,127]) (.node .empty (0,[]) .empty)))))
theorem part0053_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1230 1273 part0053 := by
  change part0053.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 1230 1273 = true
  decide +kernel

def part0054 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (637,[7,7,13]) .empty) (9064,[2,2,2,11,103]) .empty) (9065,[5,7,7,37]) (.node (.node .empty (638,[2,11,29]) .empty) (3448,[2,2,2,431]) .empty)) (639,[3,3,71]) (.node (.node (.node .empty (640,[2,2,2,2,2,2,2,5]) .empty) (14685,[3,5,11,89]) .empty) (641,[641]) (.node .empty (6259,[11,569]) .empty))) (3451,[7,17,29]) (.node (.node (.node (.node .empty (642,[2,3,107]) .empty) (643,[643]) .empty) (6261,[3,2087]) (.node (.node .empty (11880,[2,2,2,3,3,3,5,11]) .empty) (644,[2,2,7,23]) .empty)) (645,[3,5,43]) (.node (.node (.node .empty (3454,[2,11,157]) .empty) (11882,[2,13,457]) .empty) (646,[2,17,19]) (.node .empty (647,[647]) .empty)))) (23119,[61,379]) (.node (.node (.node (.node (.node .empty (648,[2,2,2,3,3,3,3]) .empty) (14693,[7,2099]) .empty) (9076,[2,2,2269]) (.node (.node .empty (649,[11,59]) .empty) (650,[2,5,5,13]) .empty)) (3459,[3,1153]) (.node (.node (.node .empty (651,[3,7,31]) .empty) (3460,[2,2,5,173]) .empty) (652,[2,2,163]) (.node .empty (6270,[2,3,5,11,19]) .empty))) (653,[653]) (.node (.node (.node (.node .empty (3462,[2,3,577]) .empty) (3463,[3463]) .empty) (654,[2,3,109]) (.node (.node .empty (3464,[2,2,2,433]) .empty) (655,[5,131]) .empty)) (656,[2,2,2,2,41]) (.node (.node (.node .empty (3465,[3,3,5,7,11]) .empty) (3466,[2,1733]) .empty) (657,[3,3,73]) (.node .empty (3467,[3467]) .empty)))))
theorem part0054_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1274 1317 part0054 := by
  change part0054.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 1274 1317 = true
  decide +kernel

def part0055 : CertificateTree FactoredPoint := .node part0053 (0,[]) part0054
theorem part0055_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1230 1317 part0055 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 1230 1317
    part0053 part0054 (0,[]) (by decide +kernel) part0053_valid
    (by decide +kernel) part0054_valid

def part0056 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (659,[659]) .empty) (3468,[2,2,3,17,17]) .empty) (660,[2,2,3,5,11]) (.node (.node .empty (6278,[2,43,73]) .empty) (661,[661]) .empty)) (3470,[2,5,347]) (.node (.node (.node .empty (662,[2,331]) .empty) (3471,[3,13,89]) .empty) (9090,[2,3,3,5,101]) (.node .empty (663,[3,13,17]) .empty))) (664,[2,2,2,83]) (.node (.node (.node (.node .empty (3473,[23,151]) .empty) (665,[5,7,19]) .empty) (3474,[2,3,3,193]) (.node (.node .empty (6284,[2,2,1571]) .empty) (666,[2,3,3,37]) .empty)) (6285,[3,5,419]) (.node (.node (.node .empty (667,[23,29]) .empty) (668,[2,2,167]) .empty) (6286,[2,7,449]) (.node .empty (6287,[6287]) .empty)))) (669,[3,223]) (.node (.node (.node (.node (.node .empty (11906,[2,5953]) .empty) (670,[2,5,67]) .empty) (3480,[2,2,2,3,5,29]) (.node (.node .empty (671,[11,61]) .empty) (3481,[59,59]) .empty)) (672,[2,2,2,2,2,3,7]) (.node (.node (.node .empty (673,[673]) .empty) (6291,[3,3,3,233]) .empty) (674,[2,337]) (.node .empty (3483,[3,3,3,3,43]) .empty))) (3484,[2,2,13,67]) (.node (.node (.node (.node .empty (675,[3,3,3,5,5]) .empty) (3485,[5,17,41]) .empty) (676,[2,2,13,13]) (.node (.node .empty (677,[677]) .empty) (6295,[5,1259]) .empty)) (6296,[2,2,2,787]) (.node (.node (.node .empty (678,[2,3,113]) .empty) (3488,[2,2,2,2,2,109]) .empty) (679,[7,97]) (.node .empty (14725,[5,5,19,31]) .empty)))))
theorem part0056_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1318 1361 part0056 := by
  change part0056.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 1318 1361 = true
  decide +kernel

def part0057 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (6299,[6299]) .empty) (681,[3,227]) .empty) (3491,[3491]) (.node (.node .empty (682,[2,11,31]) .empty) (683,[683]) .empty)) (3492,[2,2,3,3,97]) (.node (.node (.node .empty (17538,[2,3,37,79]) .empty) (684,[2,2,3,3,19]) .empty) (3494,[2,1747]) (.node .empty (685,[5,137]) .empty))) (686,[2,7,7,7]) (.node (.node (.node (.node .empty (11922,[2,3,1987]) .empty) (9114,[2,3,7,7,31]) .empty) (687,[3,229]) (.node (.node .empty (688,[2,2,2,2,43]) .empty) (6306,[2,3,1051]) .empty)) (0,[]) (.node (.node (.node .empty (0,[]) .empty) (690,[2,3,5,23]) .empty) (6308,[2,2,19,83]) (.node .empty (691,[691]) .empty)))) (3500,[2,2,5,5,5,7]) (.node (.node (.node (.node (.node .empty (692,[2,2,173]) .empty) (3501,[3,3,389]) .empty) (693,[3,3,7,11]) (.node (.node .empty (3502,[2,17,103]) .empty) (694,[2,347]) .empty)) (3503,[31,113]) (.node (.node (.node .empty (9122,[2,4561]) .empty) (695,[5,139]) .empty) (6314,[2,7,11,41]) (.node .empty (696,[2,2,2,3,29]) .empty))) (3506,[2,1753]) (.node (.node (.node (.node .empty (697,[17,41]) .empty) (698,[2,349]) .empty) (9125,[5,5,5,73]) (.node .empty (3508,[2,2,877]) .empty)) (699,[3,233]) (.node (.node (.node .empty (6318,[2,3,3,3,3,3,13]) .empty) (700,[2,2,5,5,7]) .empty) (701,[701]) (.node .empty (3510,[2,3,3,3,5,13]) .empty)))))
theorem part0057_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1362 1404 part0057 := by
  change part0057.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 1362 1404 = true
  decide +kernel

def part0058 : CertificateTree FactoredPoint := .node part0056 (680,[2,2,2,5,17]) part0057
theorem part0058_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1318 1404 part0058 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 1318 1404
    part0056 part0057 (680,[2,2,2,5,17]) (by decide +kernel) part0056_valid
    (by decide +kernel) part0057_valid

def part0059 : CertificateTree FactoredPoint := .node part0055 (658,[2,7,47]) part0058
theorem part0059_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1230 1404 part0059 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 1230 1404
    part0055 part0058 (658,[2,7,47]) (by decide +kernel) part0055_valid
    (by decide +kernel) part0058_valid

def part0060 : CertificateTree FactoredPoint := .node part0052 (6232,[2,2,2,19,41]) part0059
theorem part0060_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1054 1404 part0060 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 1054 1404
    part0052 part0059 (6232,[2,2,2,19,41]) (by decide +kernel) part0052_valid
    (by decide +kernel) part0059_valid

def part0061 : CertificateTree FactoredPoint := .node part0045 (8953,[7,1279]) part0060
theorem part0061_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 703 1404 part0061 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 703 1404
    part0045 part0060 (8953,[7,1279]) (by decide +kernel) part0045_valid
    (by decide +kernel) part0060_valid

def part0062 : CertificateTree FactoredPoint := .node part0030 (351,[3,3,3,13]) part0061
theorem part0062_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 0 1404 part0062 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 0 1404
    part0030 part0061 (351,[3,3,3,13]) (by decide +kernel) part0030_valid
    (by decide +kernel) part0061_valid

def part0063 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (6320,[2,2,2,2,5,79]) .empty) (3512,[2,2,2,439]) .empty) (703,[19,37]) (.node (.node .empty (704,[2,2,2,2,2,2,11]) .empty) (3513,[3,1171]) .empty)) (705,[3,5,47]) (.node (.node (.node .empty (3514,[2,7,251]) .empty) (706,[2,353]) .empty) (11942,[2,7,853]) (.node .empty (6325,[5,5,11,23]) .empty))) (707,[7,101]) (.node (.node (.node (.node .empty (3517,[3517]) .empty) (708,[2,2,3,59]) .empty) (709,[709]) (.node (.node .empty (11945,[5,2389]) .empty) (3519,[3,3,17,23]) .empty)) (710,[2,5,71]) (.node (.node (.node .empty (6329,[6329]) .empty) (711,[3,3,79]) .empty) (712,[2,2,2,89]) (.node .empty (3521,[7,503]) .empty)))) (6331,[13,487]) (.node (.node (.node (.node (.node .empty (713,[23,31]) .empty) (714,[2,3,7,17]) .empty) (11950,[2,5,5,239]) (.node (.node .empty (3524,[2,2,881]) .empty) (715,[5,11,13]) .empty)) (716,[2,2,179]) (.node (.node (.node .empty (9143,[41,223]) .empty) (6335,[5,7,181]) .empty) (717,[3,239]) (.node .empty (718,[2,359]) .empty))) (6336,[2,2,2,2,2,2,3,3,11]) (.node (.node (.node (.node .empty (719,[719]) .empty) (3528,[2,2,2,3,3,7,7]) .empty) (3529,[3529]) (.node (.node .empty (720,[2,2,2,2,3,3,5]) .empty) (9148,[2,2,2287]) .empty)) (721,[7,103]) (.node (.node (.node .empty (722,[2,19,19]) .empty) (6340,[2,2,5,317]) .empty) (3532,[2,2,883]) (.node .empty (723,[3,241]) .empty)))))
theorem part0063_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1405 1448 part0063 := by
  change part0063.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 1405 1448 = true
  decide +kernel

def part0064 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (11960,[2,2,2,5,13,23]) .empty) (3534,[2,3,19,31]) .empty) (725,[5,5,29]) (.node (.node .empty (3535,[5,7,101]) .empty) (726,[2,3,11,11]) .empty)) (727,[727]) (.node (.node (.node .empty (9154,[2,23,199]) .empty) (728,[2,2,2,7,13]) .empty) (3537,[3,3,3,131]) (.node .empty (729,[3,3,3,3,3,3]) .empty))) (3538,[2,29,61]) (.node (.node (.node (.node .empty (3539,[3539]) .empty) (730,[2,5,73]) .empty) (3540,[2,2,3,5,59]) (.node (.node .empty (731,[17,43]) .empty) (3541,[3541]) .empty)) (732,[2,2,3,61]) (.node (.node (.node .empty (733,[733]) .empty) (9160,[2,2,2,5,229]) .empty) (734,[2,367]) (.node .empty (3543,[3,1181]) .empty)))) (735,[3,5,7,7]) (.node (.node (.node (.node (.node .empty (9162,[2,3,3,509]) .empty) (736,[2,2,2,2,2,23]) .empty) (3545,[5,709]) (.node (.node .empty (6355,[5,31,41]) .empty) (737,[11,67]) .empty)) (3547,[3547]) (.node (.node (.node .empty (738,[2,3,3,41]) .empty) (739,[739]) .empty) (6357,[3,13,163]) (.node .empty (26021,[26021]) .empty))) (740,[2,2,5,37]) (.node (.node (.node (.node .empty (6359,[6359]) .empty) (741,[3,13,19]) .empty) (0,[]) (.node (.node .empty (0,[]) .empty) (743,[743]) .empty)) (3552,[2,2,2,2,2,3,37]) (.node (.node (.node .empty (3553,[11,17,19]) .empty) (744,[2,2,2,3,31]) .empty) (3554,[2,1777]) (.node .empty (745,[5,149]) .empty)))))
theorem part0064_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1449 1492 part0064 := by
  change part0064.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 1449 1492 = true
  decide +kernel

def part0065 : CertificateTree FactoredPoint := .node part0063 (724,[2,2,181]) part0064
theorem part0065_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1405 1492 part0065 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 1405 1492
    part0063 part0064 (724,[2,2,181]) (by decide +kernel) part0063_valid
    (by decide +kernel) part0064_valid

def part0066 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (6364,[2,2,37,43]) .empty) (6365,[5,19,67]) .empty) (747,[3,3,83]) (.node (.node .empty (3557,[3557]) .empty) (748,[2,2,11,17]) .empty)) (6367,[6367]) (.node (.node (.node .empty (749,[7,107]) .empty) (3559,[3559]) .empty) (750,[2,3,5,5,5]) (.node .empty (751,[751]) .empty))) (3560,[2,2,2,5,89]) (.node (.node (.node (.node .empty (752,[2,2,2,2,47]) .empty) (3561,[3,1187]) .empty) (3562,[2,13,137]) (.node (.node .empty (753,[3,251]) .empty) (754,[2,13,29]) .empty)) (3563,[7,509]) (.node (.node (.node .empty (6373,[6373]) .empty) (755,[5,151]) .empty) (3565,[5,23,31]) (.node .empty (756,[2,2,3,3,3,7]) .empty)))) (757,[757]) (.node (.node (.node (.node (.node .empty (9184,[2,2,2,2,2,7,41]) .empty) (758,[2,379]) .empty) (11994,[2,3,1999]) (.node (.node .empty (759,[3,11,23]) .empty) (6377,[7,911]) .empty)) (9187,[9187]) (.node (.node (.node .empty (760,[2,2,2,5,19]) .empty) (761,[761]) .empty) (3570,[2,3,5,7,17]) (.node .empty (3571,[3571]) .empty))) (762,[2,3,127]) (.node (.node (.node (.node .empty (11999,[13,13,71]) .empty) (763,[7,109]) .empty) (764,[2,2,191]) (.node (.node .empty (3573,[3,3,397]) .empty) (765,[3,3,5,17]) .empty)) (9192,[2,2,2,3,383]) (.node (.node (.node .empty (766,[2,383]) .empty) (3575,[5,5,11,13]) .empty) (767,[13,59]) (.node .empty (3576,[2,2,2,3,149]) .empty)))))
theorem part0066_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1493 1536 part0066 := by
  change part0066.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 1493 1536 = true
  decide +kernel

def part0067 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (3577,[7,7,73]) .empty) (769,[769]) .empty) (6387,[3,2129]) (.node (.node .empty (770,[2,5,7,11]) .empty) (3579,[3,1193]) .empty)) (6389,[6389]) (.node (.node (.node .empty (771,[3,257]) .empty) (772,[2,2,193]) .empty) (12008,[2,2,2,19,79]) (.node .empty (773,[773]) .empty))) (3582,[2,3,3,199]) (.node (.node (.node (.node .empty (3583,[3583]) .empty) (774,[2,3,3,43]) .empty) (3584,[2,2,2,2,2,2,2,2,2,7]) (.node (.node .empty (775,[5,5,31]) .empty) (776,[2,2,2,97]) .empty)) (6394,[2,23,139]) (.node (.node (.node .empty (777,[3,7,37]) .empty) (3586,[2,11,163]) .empty) (778,[2,389]) (.node .empty (3587,[17,211]) .empty)))) (6397,[6397]) (.node (.node (.node (.node (.node .empty (779,[19,41]) .empty) (9207,[3,3,3,11,31]) .empty) (780,[2,2,3,5,13]) (.node (.node .empty (9208,[2,2,2,1151]) .empty) (781,[11,71]) .empty)) (3591,[3,3,3,7,19]) (.node (.node (.node .empty (782,[2,17,23]) .empty) (3592,[2,2,2,449]) .empty) (783,[3,3,3,29]) (.node .empty (784,[2,2,2,2,7,7]) .empty))) (9211,[61,151]) (.node (.node (.node (.node .empty (23257,[13,1789]) .empty) (785,[5,157]) .empty) (6404,[2,2,1601]) (.node (.node .empty (786,[2,3,131]) .empty) (787,[787]) .empty)) (3596,[2,2,29,31]) (.node (.node (.node .empty (788,[2,2,197]) .empty) (12024,[2,2,2,3,3,167]) .empty) (9216,[2,2,2,2,2,2,2,2,2,2,3,3]) (.node .empty (789,[3,263]) .empty)))))
theorem part0067_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1537 1580 part0067 := by
  change part0067.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 1537 1580 = true
  decide +kernel

def part0068 : CertificateTree FactoredPoint := .node part0066 (768,[2,2,2,2,2,2,2,2,3]) part0067
theorem part0068_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1493 1580 part0068 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 1493 1580
    part0066 part0067 (768,[2,2,2,2,2,2,2,2,3]) (by decide +kernel) part0066_valid
    (by decide +kernel) part0067_valid

def part0069 : CertificateTree FactoredPoint := .node part0065 (746,[2,373]) part0068
theorem part0069_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1405 1580 part0069 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 1405 1580
    part0065 part0068 (746,[2,373]) (by decide +kernel) part0065_valid
    (by decide +kernel) part0068_valid

def part0070 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (790,[2,5,79]) .empty) (12027,[3,19,211]) .empty) (791,[7,113]) (.node (.node .empty (3601,[13,277]) .empty) (792,[2,2,2,3,3,11]) .empty)) (793,[13,61]) (.node (.node (.node .empty (6411,[3,2137]) .empty) (794,[2,397]) .empty) (3603,[3,1201]) (.node .empty (0,[]) .empty))) (0,[]) (.node (.node (.node (.node .empty (796,[2,2,199]) .empty) (6414,[2,3,1069]) .empty) (797,[797]) (.node (.node .empty (3606,[2,3,601]) .empty) (798,[2,3,7,19]) .empty)) (12034,[2,11,547]) (.node (.node (.node .empty (6417,[3,3,23,31]) .empty) (799,[17,47]) .empty) (800,[2,2,2,2,2,5,5]) (.node .empty (3609,[3,3,401]) .empty)))) (12037,[12037]) (.node (.node (.node (.node (.node .empty (801,[3,3,89]) .empty) (802,[2,401]) .empty) (3611,[23,157]) (.node (.node .empty (3612,[2,2,3,7,43]) .empty) (803,[11,73]) .empty)) (3613,[3613]) (.node (.node (.node .empty (804,[2,2,3,67]) .empty) (805,[5,7,23]) .empty) (6423,[3,2141]) (.node .empty (806,[2,13,31]) .empty))) (6424,[2,2,2,11,73]) (.node (.node (.node (.node .empty (3616,[2,2,2,2,2,113]) .empty) (807,[3,269]) .empty) (808,[2,2,2,101]) (.node (.node .empty (9235,[5,1847]) .empty) (809,[809]) .empty)) (3618,[2,3,3,3,67]) (.node (.node (.node .empty (3619,[7,11,47]) .empty) (810,[2,3,3,3,3,5]) .empty) (811,[811]) (.node .empty (3620,[2,2,5,181]) .empty)))))
theorem part0070_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1581 1624 part0070 := by
  change part0070.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 1581 1624 = true
  decide +kernel

def part0071 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (812,[2,2,7,29]) .empty) (3622,[2,1811]) .empty) (813,[3,271]) (.node (.node .empty (3623,[3623]) .empty) (814,[2,11,37]) .empty)) (9242,[2,4621]) (.node (.node (.node .empty (815,[5,163]) .empty) (6434,[2,3217]) .empty) (816,[2,2,2,2,3,17]) (.node .empty (6435,[3,3,5,11,13]) .empty))) (817,[19,43]) (.node (.node (.node (.node .empty (818,[2,409]) .empty) (3627,[3,3,13,31]) .empty) (3628,[2,2,907]) (.node (.node .empty (819,[3,3,7,13]) .empty) (6438,[2,3,29,37]) .empty)) (820,[2,2,5,41]) (.node (.node (.node .empty (821,[821]) .empty) (6439,[47,137]) .empty) (3631,[3631]) (.node .empty (822,[2,3,137]) .empty)))) (823,[823]) (.node (.node (.node (.node (.node .empty (9250,[2,5,5,5,37]) .empty) (824,[2,2,2,103]) .empty) (9251,[11,29,29]) (.node (.node .empty (825,[3,5,5,11]) .empty) (3634,[2,23,79]) .empty)) (23298,[2,3,11,353]) (.node (.node (.node .empty (826,[2,7,59]) .empty) (827,[827]) .empty) (3636,[2,2,3,3,101]) (.node .empty (3637,[3637]) .empty))) (828,[2,2,3,3,23]) (.node (.node (.node (.node .empty (829,[829]) .empty) (3638,[2,17,107]) .empty) (6448,[2,2,2,2,13,31]) (.node (.node .empty (830,[2,5,83]) .empty) (6449,[6449]) .empty)) (831,[3,277]) (.node (.node (.node .empty (6450,[2,3,5,5,43]) .empty) (832,[2,2,2,2,2,2,13]) .empty) (6451,[6451]) (.node .empty (833,[7,7,17]) .empty)))))
theorem part0071_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1625 1668 part0071 := by
  change part0071.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 1625 1668 = true
  decide +kernel

def part0072 : CertificateTree FactoredPoint := .node part0070 (3621,[3,17,71]) part0071
theorem part0072_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1581 1668 part0072 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 1581 1668
    part0070 part0071 (3621,[3,17,71]) (by decide +kernel) part0070_valid
    (by decide +kernel) part0071_valid

def part0073 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (834,[2,3,139]) .empty) (3644,[2,2,911]) .empty) (835,[5,167]) (.node (.node .empty (17690,[2,5,29,61]) .empty) (836,[2,2,11,19]) .empty)) (3646,[2,1823]) (.node (.node (.node .empty (837,[3,3,3,31]) .empty) (838,[2,419]) .empty) (3647,[7,521]) (.node .empty (839,[839]) .empty))) (3648,[2,2,2,2,2,2,3,19]) (.node (.node (.node (.node .empty (840,[2,2,2,3,5,7]) .empty) (3649,[41,89]) .empty) (841,[29,29]) (.node (.node .empty (3650,[2,5,5,73]) .empty) (842,[2,421]) .empty)) (3651,[3,1217]) (.node (.node (.node .empty (9270,[2,3,3,5,103]) .empty) (843,[3,281]) .empty) (844,[2,2,211]) (.node .empty (6462,[2,3,3,359]) .empty)))) (845,[5,13,13]) (.node (.node (.node (.node (.node .empty (6463,[23,281]) .empty) (3655,[5,17,43]) .empty) (846,[2,3,3,47]) (.node (.node .empty (3656,[2,2,2,457]) .empty) (847,[7,11,11]) .empty)) (0,[]) (.node (.node (.node .empty (0,[]) .empty) (17703,[3,3,7,281]) .empty) (849,[3,283]) (.node .empty (3659,[3659]) .empty))) (850,[2,5,5,17]) (.node (.node (.node (.node .empty (3660,[2,2,3,5,61]) .empty) (851,[23,37]) .empty) (12088,[2,2,2,1511]) (.node (.node .empty (852,[2,2,3,71]) .empty) (853,[853]) .empty)) (6471,[3,3,719]) (.node (.node (.node .empty (3663,[3,3,11,37]) .empty) (854,[2,7,61]) .empty) (855,[3,3,5,19]) (.node .empty (12091,[107,113]) .empty)))))
theorem part0073_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1669 1712 part0073 := by
  change part0073.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 1669 1712 = true
  decide +kernel

def part0074 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (3665,[5,733]) .empty) (857,[857]) .empty) (3666,[2,3,13,47]) (.node (.node .empty (6476,[2,2,1619]) .empty) (858,[2,3,11,13]) .empty)) (859,[859]) (.node (.node (.node .empty (3668,[2,2,7,131]) .empty) (14905,[5,11,271]) .empty) (860,[2,2,5,43]) (.node .empty (861,[3,7,41]) .empty))) (3670,[2,5,367]) (.node (.node (.node (.node .empty (862,[2,431]) .empty) (6480,[2,2,2,2,3,3,3,3,5]) .empty) (863,[863]) (.node (.node .empty (3672,[2,2,2,3,3,3,17]) .empty) (864,[2,2,2,2,2,3,3,3]) .empty)) (6482,[2,7,463]) (.node (.node (.node .empty (12101,[12101]) .empty) (865,[5,173]) .empty) (866,[2,433]) (.node .empty (12102,[2,3,2017]) .empty)))) (3676,[2,2,919]) (.node (.node (.node (.node (.node .empty (867,[3,17,17]) .empty) (3677,[3677]) .empty) (868,[2,2,7,31]) (.node (.node .empty (6487,[13,499]) .empty) (869,[11,79]) .empty)) (870,[2,3,5,29]) (.node (.node (.node .empty (9297,[3,3,1033]) .empty) (871,[13,67]) .empty) (3680,[2,2,2,2,2,5,23]) (.node .empty (872,[2,2,2,109]) .empty))) (3681,[3,3,409]) (.node (.node (.node (.node .empty (6491,[6491]) .empty) (873,[3,3,97]) .empty) (12110,[2,5,7,173]) (.node (.node .empty (874,[2,19,23]) .empty) (9302,[2,4651]) .empty)) (875,[5,5,5,7]) (.node (.node (.node .empty (3685,[5,11,67]) .empty) (876,[2,2,3,73]) .empty) (877,[877]) (.node .empty (3686,[2,19,97]) .empty)))))
theorem part0074_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1713 1756 part0074 := by
  change part0074.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 1713 1756 = true
  decide +kernel

def part0075 : CertificateTree FactoredPoint := .node part0073 (856,[2,2,2,107]) part0074
theorem part0075_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1669 1756 part0075 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 1669 1756
    part0073 part0074 (856,[2,2,2,107]) (by decide +kernel) part0073_valid
    (by decide +kernel) part0074_valid

def part0076 : CertificateTree FactoredPoint := .node part0072 (3643,[3643]) part0075
theorem part0076_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1581 1756 part0076 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 1581 1756
    part0072 part0075 (3643,[3643]) (by decide +kernel) part0072_valid
    (by decide +kernel) part0075_valid

def part0077 : CertificateTree FactoredPoint := .node part0069 (9217,[13,709]) part0076
theorem part0077_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1405 1756 part0077 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 1405 1756
    part0069 part0076 (9217,[13,709]) (by decide +kernel) part0069_valid
    (by decide +kernel) part0076_valid

def part0078 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (3687,[3,1229]) .empty) (3688,[2,2,2,461]) .empty) (879,[3,293]) (.node (.node .empty (3689,[7,17,31]) .empty) (880,[2,2,2,2,5,11]) .empty)) (881,[881]) (.node (.node (.node .empty (6499,[67,97]) .empty) (3691,[3691]) .empty) (882,[2,3,3,7,7]) (.node .empty (883,[883]) .empty))) (14928,[2,2,2,2,3,311]) (.node (.node (.node (.node .empty (884,[2,2,13,17]) .empty) (3693,[3,1231]) .empty) (885,[3,5,59]) (.node (.node .empty (6503,[7,929]) .empty) (886,[2,443]) .empty)) (3695,[5,739]) (.node (.node (.node .empty (887,[887]) .empty) (6505,[5,1301]) .empty) (3697,[3697]) (.node .empty (888,[2,2,2,3,37]) .empty)))) (3698,[2,43,43]) (.node (.node (.node (.node (.node .empty (889,[7,127]) .empty) (6508,[2,2,1627]) .empty) (890,[2,5,89]) (.node (.node .empty (14936,[2,2,2,1867]) .empty) (891,[3,3,3,3,11]) .empty)) (892,[2,2,223]) (.node (.node (.node .empty (6510,[2,3,5,7,31]) .empty) (14938,[2,7,11,97]) .empty) (893,[19,47]) (.node .empty (14939,[14939]) .empty))) (894,[2,3,149]) (.node (.node (.node (.node .empty (3704,[2,2,2,463]) .empty) (895,[5,179]) .empty) (896,[2,2,2,2,2,2,2,7]) (.node (.node .empty (12132,[2,2,3,3,337]) .empty) (9324,[2,2,3,3,7,37]) .empty)) (897,[3,13,23]) (.node (.node (.node .empty (898,[2,449]) .empty) (3707,[11,337]) .empty) (9326,[2,4663]) (.node .empty (899,[29,31]) .empty)))))
theorem part0078_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1757 1800 part0078 := by
  change part0078.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 1757 1800 = true
  decide +kernel

def part0079 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (900,[2,2,3,3,5,5]) .empty) (0,[]) .empty) (0,[]) (.node (.node .empty (12138,[2,3,7,17,17]) .empty) (902,[2,11,41]) .empty)) (903,[3,7,43]) (.node (.node (.node .empty (12139,[61,199]) .empty) (904,[2,2,2,113]) .empty) (3713,[47,79]) (.node .empty (9332,[2,2,2333]) .empty))) (905,[5,181]) (.node (.node (.node (.node .empty (9333,[3,3,17,61]) .empty) (906,[2,3,151]) .empty) (907,[907]) (.node (.node .empty (23379,[3,7793]) .empty) (908,[2,2,227]) .empty)) (9335,[5,1867]) (.node (.node (.node .empty (3718,[2,11,13,13]) .empty) (909,[3,3,101]) .empty) (3719,[3719]) (.node .empty (910,[2,5,7,13]) .empty)))) (911,[911]) (.node (.node (.node (.node (.node .empty (12147,[3,4049]) .empty) (3721,[61,61]) .empty) (912,[2,2,2,2,3,19]) (.node (.node .empty (3722,[2,1861]) .empty) (913,[11,83]) .empty)) (914,[2,457]) (.node (.node (.node .empty (6532,[2,2,23,71]) .empty) (915,[3,5,61]) .empty) (3724,[2,2,7,7,19]) (.node .empty (916,[2,2,229]) .empty))) (3725,[5,5,149]) (.node (.node (.node (.node .empty (9344,[2,2,2,2,2,2,2,73]) .empty) (917,[7,131]) .empty) (3727,[3727]) (.node (.node .empty (918,[2,3,3,3,17]) .empty) (919,[919]) .empty)) (6537,[3,2179]) (.node (.node (.node .empty (3729,[3,11,113]) .empty) (920,[2,2,2,5,23]) .empty) (6539,[13,503]) (.node .empty (921,[3,307]) .empty)))))
theorem part0079_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1801 1844 part0079 := by
  change part0079.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 1801 1844 = true
  decide +kernel

def part0080 : CertificateTree FactoredPoint := .node part0078 (3709,[3709]) part0079
theorem part0080_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1757 1844 part0080 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 1757 1844
    part0078 part0079 (3709,[3709]) (by decide +kernel) part0078_valid
    (by decide +kernel) part0079_valid

def part0081 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (3731,[7,13,41]) .empty) (923,[13,71]) .empty) (3732,[2,2,3,311]) (.node (.node .empty (924,[2,2,3,7,11]) .empty) (9351,[3,3,1039]) .empty)) (3734,[2,1867]) (.node (.node (.node .empty (925,[5,5,37]) .empty) (926,[2,463]) .empty) (9353,[47,199]) (.node .empty (3736,[2,2,2,467]) .empty))) (927,[3,3,103]) (.node (.node (.node (.node .empty (928,[2,2,2,2,2,29]) .empty) (3737,[37,101]) .empty) (929,[929]) (.node (.node .empty (20592,[2,2,2,2,3,3,11,13]) .empty) (930,[2,3,5,31]) .empty)) (9357,[3,3119]) (.node (.node (.node .empty (3740,[2,2,5,11,17]) .empty) (931,[7,7,19]) .empty) (932,[2,2,233]) (.node .empty (6550,[2,5,5,131]) .empty)))) (3742,[2,1871]) (.node (.node (.node (.node (.node .empty (933,[3,311]) .empty) (934,[2,467]) .empty) (3743,[19,197]) (.node (.node .empty (935,[5,11,17]) .empty) (9362,[2,31,151]) .empty)) (936,[2,2,2,3,3,13]) (.node (.node (.node .empty (6554,[2,29,113]) .empty) (937,[937]) .empty) (6555,[3,5,19,23]) (.node .empty (14983,[14983]) .empty))) (938,[2,7,67]) (.node (.node (.node (.node .empty (3748,[2,2,937]) .empty) (939,[3,313]) .empty) (9367,[17,19,29]) (.node (.node .empty (940,[2,2,5,47]) .empty) (941,[941]) .empty)) (3750,[2,3,5,5,5,5]) (.node (.node (.node .empty (12178,[2,6089]) .empty) (942,[2,3,157]) .empty) (6561,[3,3,3,3,3,3,3,3]) (.node .empty (943,[23,41]) .empty)))))
theorem part0081_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1845 1888 part0081 := by
  change part0081.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 1845 1888 = true
  decide +kernel

def part0082 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (3753,[3,3,3,139]) .empty) (945,[3,3,3,5,7]) .empty) (14990,[2,5,1499]) (.node (.node .empty (12182,[2,6091]) .empty) (946,[2,11,43]) .empty)) (947,[947]) (.node (.node (.node .empty (3756,[2,2,3,313]) .empty) (3757,[13,17,17]) .empty) (948,[2,2,3,79]) (.node .empty (949,[13,73]) .empty))) (12185,[5,2437]) (.node (.node (.node (.node .empty (3759,[3,7,179]) .empty) (950,[2,5,5,19]) .empty) (6569,[6569]) (.node (.node .empty (951,[3,317]) .empty) (3761,[3761]) .empty)) (952,[2,2,2,7,17]) (.node (.node (.node .empty (953,[953]) .empty) (20616,[2,2,2,3,859]) .empty) (0,[]) (.node .empty (0,[]) .empty)))) (3764,[2,2,941]) (.node (.node (.node (.node (.node .empty (955,[5,191]) .empty) (956,[2,2,239]) .empty) (6574,[2,19,173]) (.node (.node .empty (957,[3,11,29]) .empty) (3766,[2,7,269]) .empty)) (958,[2,479]) (.node (.node (.node .empty (6576,[2,2,2,2,3,137]) .empty) (6577,[6577]) .empty) (959,[7,137]) (.node .empty (3769,[3769]) .empty))) (960,[2,2,2,2,2,2,3,5]) (.node (.node (.node (.node .empty (961,[31,31]) .empty) (3770,[2,5,13,29]) .empty) (962,[2,13,37]) (.node (.node .empty (3771,[3,3,419]) .empty) (6581,[6581]) .empty)) (963,[3,3,107]) (.node (.node (.node .empty (964,[2,2,241]) .empty) (3773,[7,7,7,11]) .empty) (3774,[2,3,17,37]) (.node .empty (965,[5,193]) .empty)))))
theorem part0082_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1889 1932 part0082 := by
  change part0082.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 1889 1932 = true
  decide +kernel

def part0083 : CertificateTree FactoredPoint := .node part0081 (944,[2,2,2,2,59]) part0082
theorem part0083_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1845 1932 part0083 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 1845 1932
    part0081 part0082 (944,[2,2,2,2,59]) (by decide +kernel) part0081_valid
    (by decide +kernel) part0082_valid

def part0084 : CertificateTree FactoredPoint := .node part0080 (922,[2,461]) part0083
theorem part0084_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1757 1932 part0084 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 1757 1932
    part0080 part0083 (922,[2,461]) (by decide +kernel) part0080_valid
    (by decide +kernel) part0083_valid

def part0085 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (3775,[5,5,151]) .empty) (967,[967]) .empty) (15012,[2,2,3,3,3,139]) (.node (.node .empty (968,[2,2,2,11,11]) .empty) (3777,[3,1259]) .empty)) (969,[3,17,19]) (.node (.node (.node .empty (6587,[7,941]) .empty) (3779,[3779]) .empty) (970,[2,5,97]) (.node .empty (971,[971]) .empty))) (6589,[11,599]) (.node (.node (.node (.node .empty (972,[2,2,3,3,3,3,3]) .empty) (3781,[19,199]) .empty) (6591,[3,13,13,13]) (.node (.node .empty (973,[7,139]) .empty) (974,[2,487]) .empty)) (3783,[3,13,97]) (.node (.node (.node .empty (12211,[12211]) .empty) (975,[3,5,5,13]) .empty) (976,[2,2,2,2,61]) (.node .empty (3785,[5,757]) .empty)))) (977,[977]) (.node (.node (.node (.node (.node .empty (3786,[2,3,631]) .empty) (20641,[20641]) .empty) (978,[2,3,163]) (.node (.node .empty (3788,[2,2,947]) .empty) (979,[11,89]) .empty)) (6598,[2,3299]) (.node (.node (.node .empty (980,[2,2,5,7,7]) .empty) (6599,[6599]) .empty) (981,[3,3,109]) (.node .empty (982,[2,491]) .empty))) (3791,[17,223]) (.node (.node (.node (.node .empty (983,[983]) .empty) (3792,[2,2,2,2,3,79]) .empty) (3793,[3793]) (.node (.node .empty (984,[2,2,2,3,41]) .empty) (6603,[3,31,71]) .empty)) (985,[5,197]) (.node (.node (.node .empty (6604,[2,2,13,127]) .empty) (986,[2,17,29]) .empty) (987,[3,7,47]) (.node .empty (6605,[5,1321]) .empty)))))
theorem part0085_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1933 1976 part0085 := by
  change part0085.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 1933 1976 = true
  decide +kernel

def part0086 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (6606,[2,3,3,367]) .empty) (6607,[6607]) .empty) (989,[23,43]) (.node (.node .empty (990,[2,3,3,5,11]) .empty) (3799,[29,131]) .empty)) (991,[991]) (.node (.node (.node .empty (3800,[2,2,2,5,5,19]) .empty) (992,[2,2,2,2,2,31]) .empty) (6610,[2,5,661]) (.node .empty (3802,[2,1901]) .empty))) (993,[3,331]) (.node (.node (.node (.node .empty (3803,[3803]) .empty) (994,[2,7,71]) .empty) (17849,[13,1373]) (.node (.node .empty (995,[5,199]) .empty) (6614,[2,3307]) .empty)) (996,[2,2,3,83]) (.node (.node (.node .empty (997,[997]) .empty) (3806,[2,11,173]) .empty) (998,[2,499]) (.node .empty (3807,[3,3,3,3,47]) .empty)))) (6617,[13,509]) (.node (.node (.node (.node (.node .empty (999,[3,3,3,37]) .empty) (1000,[2,2,2,5,5,5]) .empty) (6618,[2,3,1103]) (.node (.node .empty (3810,[2,3,5,127]) .empty) (1001,[7,11,13]) .empty)) (9429,[3,7,449]) (.node (.node (.node .empty (1002,[2,3,167]) .empty) (3812,[2,2,953]) .empty) (1003,[17,59]) (.node .empty (1004,[2,2,251]) .empty))) (15049,[101,149]) (.node (.node (.node (.node .empty (1005,[3,5,67]) .empty) (6623,[37,179]) .empty) (1006,[2,503]) (.node (.node .empty (6624,[2,2,2,2,2,3,3,23]) .empty) (0,[]) .empty)) (0,[]) (.node (.node (.node .empty (6626,[2,3313]) .empty) (1008,[2,2,2,2,3,3,7]) .empty) (1009,[1009]) (.node .empty (3818,[2,23,83]) .empty)))))
theorem part0086_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1977 2020 part0086 := by
  change part0086.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 1977 2020 = true
  decide +kernel

def part0087 : CertificateTree FactoredPoint := .node part0085 (988,[2,2,13,19]) part0086
theorem part0087_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1933 2020 part0087 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 1933 2020
    part0085 part0086 (988,[2,2,13,19]) (by decide +kernel) part0085_valid
    (by decide +kernel) part0086_valid

def part0088 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1010,[2,5,101]) .empty) (15056,[2,2,2,2,941]) .empty) (1011,[3,337]) (.node (.node .empty (3821,[3821]) .empty) (1012,[2,2,11,23]) .empty)) (1013,[1013]) (.node (.node (.node .empty (3822,[2,3,7,7,13]) .empty) (1014,[2,3,13,13]) .empty) (9441,[3,3,1049]) (.node .empty (1015,[5,7,29]) .empty))) (17869,[107,167]) (.node (.node (.node (.node .empty (1016,[2,2,2,127]) .empty) (6634,[2,31,107]) .empty) (3826,[2,1913]) (.node (.node .empty (1017,[3,3,113]) .empty) (1018,[2,509]) .empty)) (3827,[43,89]) (.node (.node (.node .empty (1019,[1019]) .empty) (12255,[3,5,19,43]) .empty) (1020,[2,2,3,5,17]) (.node .empty (3829,[7,547]) .empty)))) (1021,[1021]) (.node (.node (.node (.node (.node .empty (3830,[2,5,383]) .empty) (34730,[2,5,23,151]) .empty) (1022,[2,7,73]) (.node (.node .empty (1023,[3,11,31]) .empty) (6641,[29,229]) .empty)) (3833,[3833]) (.node (.node (.node .empty (1024,[2,2,2,2,2,2,2,2,2,2]) .empty) (12261,[3,61,67]) .empty) (1025,[5,5,41]) (.node .empty (9453,[3,23,137]) .empty))) (1026,[2,3,3,3,19]) (.node (.node (.node (.node .empty (1027,[13,79]) .empty) (3836,[2,2,7,137]) .empty) (1028,[2,2,257]) (.node (.node .empty (3837,[3,1279]) .empty) (12265,[5,11,223]) .empty)) (1029,[3,7,7,7]) (.node (.node (.node .empty (12266,[2,6133]) .empty) (1030,[2,5,103]) .empty) (1031,[1031]) (.node .empty (3840,[2,2,2,2,2,2,2,2,3,5]) .empty)))))
theorem part0088_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2021 2064 part0088 := by
  change part0088.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 2021 2064 = true
  decide +kernel

def part0089 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1032,[2,2,2,3,43]) .empty) (1033,[1033]) .empty) (3842,[2,17,113]) (.node (.node .empty (3843,[3,3,7,61]) .empty) (1034,[2,11,47]) .empty)) (1035,[3,3,5,23]) (.node (.node (.node .empty (12271,[7,1753]) .empty) (9463,[9463]) .empty) (1036,[2,2,7,37]) (.node .empty (9464,[2,2,2,7,13,13]) .empty))) (1037,[17,61]) (.node (.node (.node (.node .empty (3847,[3847]) .empty) (1038,[2,3,173]) .empty) (1039,[1039]) (.node (.node .empty (12275,[5,5,491]) .empty) (1040,[2,2,2,2,5,13]) .empty)) (3849,[3,1283]) (.node (.node (.node .empty (3850,[2,5,5,7,11]) .empty) (1041,[3,347]) .empty) (1042,[2,521]) (.node .empty (9469,[17,557]) .empty)))) (6661,[6661]) (.node (.node (.node (.node (.node .empty (1043,[7,149]) .empty) (3853,[3853]) .empty) (1044,[2,2,3,3,29]) (.node (.node .empty (1045,[5,11,19]) .empty) (3854,[2,41,47]) .empty)) (1046,[2,523]) (.node (.node (.node .empty (6664,[2,2,2,7,7,17]) .empty) (3856,[2,2,2,2,241]) .empty) (1047,[3,349]) (.node .empty (1048,[2,2,2,131]) .empty))) (9475,[5,5,379]) (.node (.node (.node (.node .empty (1049,[1049]) .empty) (3858,[2,3,643]) .empty) (1050,[2,3,5,5,7]) (.node .empty (3859,[17,227]) .empty)) (1051,[1051]) (.node (.node (.node .empty (3860,[2,2,5,193]) .empty) (1052,[2,2,263]) .empty) (3861,[3,3,3,11,13]) (.node .empty (1053,[3,3,3,3,13]) .empty)))))
theorem part0089_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2065 2107 part0089 := by
  change part0089.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 2065 2107 = true
  decide +kernel

def part0090 : CertificateTree FactoredPoint := .node part0088 (6650,[2,5,5,7,19]) part0089
theorem part0090_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2021 2107 part0090 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 2021 2107
    part0088 part0089 (6650,[2,5,5,7,19]) (by decide +kernel) part0088_valid
    (by decide +kernel) part0089_valid

def part0091 : CertificateTree FactoredPoint := .node part0087 (3819,[3,19,67]) part0090
theorem part0091_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1933 2107 part0091 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 1933 2107
    part0087 part0090 (3819,[3,19,67]) (by decide +kernel) part0087_valid
    (by decide +kernel) part0090_valid

def part0092 : CertificateTree FactoredPoint := .node part0084 (966,[2,3,7,23]) part0091
theorem part0092_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1757 2107 part0092 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 1757 2107
    part0084 part0091 (966,[2,3,7,23]) (by decide +kernel) part0084_valid
    (by decide +kernel) part0091_valid

def part0093 : CertificateTree FactoredPoint := .node part0077 (878,[2,439]) part0092
theorem part0093_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1405 2107 part0093 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 1405 2107
    part0077 part0092 (878,[2,439]) (by decide +kernel) part0077_valid
    (by decide +kernel) part0092_valid

def part0094 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (3863,[3863]) .empty) (1054,[2,17,31]) .empty) (3864,[2,2,2,3,7,23]) (.node (.node .empty (1055,[5,211]) .empty) (9483,[3,29,109]) .empty)) (1056,[2,2,2,2,2,3,11]) (.node (.node (.node .empty (3866,[2,1933]) .empty) (1057,[7,151]) .empty) (1058,[2,23,23]) (.node .empty (3867,[3,1289]) .empty))) (3868,[2,2,967]) (.node (.node (.node (.node .empty (1059,[3,353]) .empty) (0,[]) .empty) (0,[]) (.node (.node .empty (1061,[1061]) .empty) (12297,[3,4099]) .empty)) (15107,[15107]) (.node (.node (.node .empty (1062,[2,3,3,59]) .empty) (1063,[1063]) .empty) (9490,[2,5,13,73]) (.node .empty (6682,[2,13,257]) .empty)))) (1064,[2,2,2,7,19]) (.node (.node (.node (.node (.node .empty (1065,[3,5,71]) .empty) (6683,[41,163]) .empty) (1066,[2,13,41]) (.node (.node .empty (3875,[5,5,5,31]) .empty) (3876,[2,2,3,17,19]) .empty)) (1067,[11,97]) (.node (.node (.node .empty (3877,[3877]) .empty) (1068,[2,2,3,89]) .empty) (1069,[1069]) (.node .empty (3878,[2,7,277]) .empty))) (9497,[9497]) (.node (.node (.node (.node .empty (1070,[2,5,107]) .empty) (1071,[3,3,7,17]) .empty) (3880,[2,2,2,5,97]) (.node (.node .empty (1072,[2,2,2,2,67]) .empty) (12308,[2,2,17,181]) .empty)) (6691,[6691]) (.node (.node (.node .empty (1073,[29,37]) .empty) (15119,[13,1163]) .empty) (1074,[2,3,179]) (.node .empty (3884,[2,2,971]) .empty)))))
theorem part0094_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2108 2151 part0094 := by
  change part0094.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 2108 2151 = true
  decide +kernel

def part0095 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1076,[2,2,269]) .empty) (3885,[3,5,7,37]) .empty) (15122,[2,7561]) (.node (.node .empty (1077,[3,359]) .empty) (3887,[13,13,23]) .empty)) (1078,[2,7,7,11]) (.node (.node (.node .empty (1079,[13,83]) .empty) (6697,[37,181]) .empty) (3889,[3889]) (.node .empty (1080,[2,2,2,3,3,3,5]) .empty))) (9508,[2,2,2377]) (.node (.node (.node (.node .empty (1081,[23,47]) .empty) (1082,[2,541]) .empty) (3891,[3,1297]) (.node (.node .empty (6701,[6701]) .empty) (1083,[3,19,19]) .empty)) (1084,[2,2,271]) (.node (.node (.node .empty (3893,[17,229]) .empty) (1085,[5,7,31]) .empty) (9512,[2,2,2,29,41]) (.node .empty (3895,[5,19,41]) .empty)))) (1086,[2,3,181]) (.node (.node (.node (.node (.node .empty (1087,[1087]) .empty) (9514,[2,67,71]) .empty) (1088,[2,2,2,2,2,2,17]) (.node (.node .empty (3897,[3,3,433]) .empty) (3898,[2,1949]) .empty)) (1089,[3,3,11,11]) (.node (.node (.node .empty (12326,[2,6163]) .empty) (1090,[2,5,109]) .empty) (1091,[1091]) (.node .empty (3900,[2,2,3,5,5,13]) .empty))) (6710,[2,5,11,61]) (.node (.node (.node (.node .empty (1092,[2,2,3,7,13]) .empty) (1093,[1093]) .empty) (6711,[3,2237]) (.node (.node .empty (1094,[2,547]) .empty) (3903,[3,1301]) .empty)) (1095,[3,5,73]) (.node (.node (.node .empty (6713,[7,7,137]) .empty) (1096,[2,2,2,137]) .empty) (6714,[2,3,3,373]) (.node .empty (1097,[1097]) .empty)))))
theorem part0095_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2152 2195 part0095 := by
  change part0095.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 2152 2195 = true
  decide +kernel

def part0096 : CertificateTree FactoredPoint := .node part0094 (1075,[5,5,43]) part0095
theorem part0096_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2108 2195 part0096 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 2108 2195
    part0094 part0095 (1075,[5,5,43]) (by decide +kernel) part0094_valid
    (by decide +kernel) part0095_valid

def part0097 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (3907,[3907]) .empty) (1098,[2,3,3,61]) .empty) (3908,[2,2,977]) (.node (.node .empty (1099,[7,157]) .empty) (6718,[2,3359]) .empty)) (1100,[2,2,5,5,11]) (.node (.node (.node .empty (3910,[2,5,17,23]) .empty) (1101,[3,367]) .empty) (3911,[3911]) (.node .empty (1102,[2,19,29]) .empty))) (1103,[1103]) (.node (.node (.node (.node .empty (3912,[2,2,2,3,163]) .empty) (6722,[2,3361]) .empty) (1104,[2,2,2,2,3,23]) (.node (.node .empty (9532,[2,2,2383]) .empty) (1105,[5,13,17]) .empty)) (3915,[3,3,3,5,29]) (.node (.node (.node .empty (1106,[2,7,79]) .empty) (9534,[2,3,7,227]) .empty) (1107,[3,3,3,41]) (.node .empty (1108,[2,2,277]) .empty)))) (9535,[5,1907]) (.node (.node (.node (.node (.node .empty (1109,[1109]) .empty) (3918,[2,3,653]) .empty) (1110,[2,3,5,37]) (.node (.node .empty (17964,[2,2,3,3,499]) .empty) (12347,[12347]) .empty)) (1111,[11,101]) (.node (.node (.node .empty (1112,[2,2,2,139]) .empty) (3921,[3,1307]) .empty) (0,[]) (.node .empty (0,[]) .empty))) (1114,[2,557]) (.node (.node (.node (.node .empty (12350,[2,5,5,13,19]) .empty) (6733,[6733]) .empty) (1115,[5,223]) (.node (.node .empty (12352,[2,2,2,2,2,2,193]) .empty) (1116,[2,2,3,3,31]) .empty)) (1117,[1117]) (.node (.node (.node .empty (12353,[11,1123]) .empty) (1118,[2,13,43]) .empty) (3927,[3,7,11,17]) (.node .empty (3928,[2,2,2,491]) .empty)))))
theorem part0097_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2196 2239 part0097 := by
  change part0097.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 2196 2239 = true
  decide +kernel

def part0098 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (3929,[3929]) .empty) (1120,[2,2,2,2,2,5,7]) .empty) (3930,[2,3,5,131]) (.node (.node .empty (1121,[19,59]) .empty) (1122,[2,3,11,17]) .empty)) (6740,[2,2,5,337]) (.node (.node (.node .empty (1123,[1123]) .empty) (9550,[2,5,5,191]) .empty) (1124,[2,2,281]) (.node .empty (17978,[2,89,101]) .empty))) (15170,[2,5,37,41]) (.node (.node (.node (.node .empty (1125,[3,3,5,5,5]) .empty) (1126,[2,563]) .empty) (3935,[5,787]) (.node (.node .empty (6745,[5,19,71]) .empty) (1127,[7,7,23]) .empty)) (6746,[2,3373]) (.node (.node (.node .empty (1128,[2,2,2,3,47]) .empty) (1129,[1129]) .empty) (3938,[2,11,179]) (.node .empty (17984,[2,2,2,2,2,2,281]) .empty)))) (1130,[2,5,113]) (.node (.node (.node (.node (.node .empty (23603,[23603]) .empty) (1131,[3,13,29]) .empty) (1132,[2,2,283]) (.node (.node .empty (3941,[7,563]) .empty) (15178,[2,7589]) .empty)) (1133,[11,103]) (.node (.node (.node .empty (3943,[3943]) .empty) (1134,[2,3,3,3,3,7]) .empty) (17989,[17989]) (.node .empty (1135,[5,227]) .empty))) (1136,[2,2,2,2,71]) (.node (.node (.node (.node .empty (6754,[2,11,307]) .empty) (3946,[2,1973]) .empty) (1137,[3,379]) (.node (.node .empty (1138,[2,569]) .empty) (6756,[2,2,3,563]) .empty)) (3948,[2,2,3,7,47]) (.node (.node (.node .empty (1139,[17,67]) .empty) (1140,[2,2,3,5,19]) .empty) (3949,[11,359]) (.node .empty (9568,[2,2,2,2,2,13,23]) .empty)))))
theorem part0098_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2240 2283 part0098 := by
  change part0098.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 2240 2283 = true
  decide +kernel

def part0099 : CertificateTree FactoredPoint := .node part0097 (1119,[3,373]) part0098
theorem part0099_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2196 2283 part0099 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 2196 2283
    part0097 part0098 (1119,[3,373]) (by decide +kernel) part0097_valid
    (by decide +kernel) part0098_valid

def part0100 : CertificateTree FactoredPoint := .node part0096 (12333,[3,4111]) part0099
theorem part0100_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2108 2283 part0100 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 2108 2283
    part0096 part0099 (12333,[3,4111]) (by decide +kernel) part0096_valid
    (by decide +kernel) part0099_valid

def part0101 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1142,[2,571]) .empty) (3951,[3,3,439]) .empty) (3952,[2,2,2,2,13,19]) (.node (.node .empty (1143,[3,3,127]) .empty) (1144,[2,2,2,11,13]) .empty)) (3953,[59,67]) (.node (.node (.node .empty (6763,[6763]) .empty) (1145,[5,229]) .empty) (3955,[5,7,113]) (.node .empty (1146,[2,3,191]) .empty))) (9574,[2,4787]) (.node (.node (.node (.node .empty (1147,[31,37]) .empty) (15193,[15193]) .empty) (1148,[2,2,7,41]) (.node (.node .empty (3958,[2,1979]) .empty) (1149,[3,383]) .empty)) (15195,[3,5,1013]) (.node (.node (.node .empty (1150,[2,5,5,23]) .empty) (1151,[1151]) .empty) (6769,[7,967]) (.node .empty (1152,[2,2,2,2,2,2,2,3,3]) .empty)))) (3961,[17,233]) (.node (.node (.node (.node (.node .empty (1153,[1153]) .empty) (3962,[2,7,283]) .empty) (1154,[2,577]) (.node (.node .empty (3963,[3,1321]) .empty) (3964,[2,2,991]) .empty)) (1155,[3,5,7,11]) (.node (.node (.node .empty (1156,[2,2,17,17]) .empty) (3965,[5,13,61]) .empty) (1157,[13,89]) (.node .empty (3966,[2,3,661]) .empty))) (3967,[3967]) (.node (.node (.node (.node .empty (1158,[2,3,193]) .empty) (3968,[2,2,2,2,2,2,2,31]) .empty) (1159,[19,61]) (.node (.node .empty (6778,[2,3389]) .empty) (1160,[2,2,2,5,29]) .empty)) (6779,[6779]) (.node (.node (.node .empty (1161,[3,3,3,43]) .empty) (6780,[2,2,3,5,113]) .empty) (1162,[2,7,83]) (.node .empty (1163,[1163]) .empty)))))
theorem part0101_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2284 2327 part0101 := by
  change part0101.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 2284 2327 = true
  decide +kernel

def part0102 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (6782,[2,3391]) .empty) (1164,[2,2,3,97]) .empty) (3974,[2,1987]) (.node (.node .empty (1165,[5,233]) .empty) (0,[]) .empty)) (0,[]) (.node (.node (.node .empty (6785,[5,23,59]) .empty) (1167,[3,389]) .empty) (1168,[2,2,2,2,73]) (.node .empty (3977,[41,97]) .empty))) (9596,[2,2,2399]) (.node (.node (.node (.node .empty (1169,[7,167]) .empty) (6788,[2,2,1697]) .empty) (1170,[2,3,3,5,13]) (.node (.node .empty (1171,[1171]) .empty) (3980,[2,2,5,199]) .empty)) (1172,[2,2,293]) (.node (.node (.node .empty (3981,[3,1327]) .empty) (1173,[3,17,23]) .empty) (3982,[2,11,181]) (.node .empty (1174,[2,587]) .empty)))) (3983,[7,569]) (.node (.node (.node (.node (.node .empty (6793,[6793]) .empty) (1175,[5,5,47]) .empty) (9603,[3,3,11,97]) (.node (.node .empty (1176,[2,2,2,3,7,7]) .empty) (3986,[2,1993]) .empty)) (1177,[11,107]) (.node (.node (.node .empty (6796,[2,2,1699]) .empty) (1178,[2,19,31]) .empty) (3988,[2,2,997]) (.node .empty (1179,[3,3,131]) .empty))) (3989,[3989]) (.node (.node (.node (.node .empty (1180,[2,2,5,59]) .empty) (1181,[1181]) .empty) (3990,[2,3,5,7,19]) (.node (.node .empty (3991,[13,307]) .empty) (1182,[2,3,197]) .empty)) (1183,[7,13,13]) (.node (.node (.node .empty (6801,[3,2267]) .empty) (1184,[2,2,2,2,2,37]) .empty) (3993,[3,11,11,11]) (.node .empty (1185,[3,5,79]) .empty)))))
theorem part0102_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2328 2371 part0102 := by
  change part0102.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 2328 2371 = true
  decide +kernel

def part0103 : CertificateTree FactoredPoint := .node part0101 (3972,[2,2,3,331]) part0102
theorem part0103_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2284 2371 part0103 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 2284 2371
    part0101 part0102 (3972,[2,2,3,331]) (by decide +kernel) part0101_valid
    (by decide +kernel) part0102_valid

def part0104 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1186,[2,593]) .empty) (6804,[2,2,3,3,3,3,3,7]) .empty) (1187,[1187]) (.node (.node .empty (3996,[2,2,3,3,3,37]) .empty) (9615,[3,5,641]) .empty)) (1188,[2,2,3,3,3,11]) (.node (.node (.node .empty (3998,[2,1999]) .empty) (1189,[29,41]) .empty) (1190,[2,5,7,17]) (.node .empty (6808,[2,2,2,23,37]) .empty))) (4000,[2,2,2,2,2,5,5,5]) (.node (.node (.node (.node .empty (1191,[3,397]) .empty) (1192,[2,2,2,149]) .empty) (15237,[3,3,1693]) (.node (.node .empty (1193,[1193]) .empty) (6811,[7,7,139]) .empty)) (4003,[4003]) (.node (.node (.node .empty (1194,[2,3,199]) .empty) (15240,[2,2,2,3,5,127]) .empty) (1195,[5,239]) (.node .empty (1196,[2,2,13,23]) .empty)))) (18050,[2,5,5,19,19]) (.node (.node (.node (.node (.node .empty (1197,[3,3,7,19]) .empty) (9624,[2,2,2,3,401]) .empty) (1198,[2,599]) (.node (.node .empty (6816,[2,2,2,2,2,3,71]) .empty) (9626,[2,4813]) .empty)) (1199,[11,109]) (.node (.node (.node .empty (12436,[2,2,3109]) .empty) (1200,[2,2,2,2,3,5,5]) .empty) (1201,[1201]) (.node .empty (4010,[2,5,401]) .empty))) (1202,[2,601]) (.node (.node (.node (.node .empty (12438,[2,3,3,691]) .empty) (9630,[2,3,3,5,107]) .empty) (1203,[3,401]) (.node (.node .empty (4013,[4013]) .empty) (1204,[2,2,7,43]) .empty)) (6823,[6823]) (.node (.node (.node .empty (1205,[5,241]) .empty) (4015,[5,11,73]) .empty) (1206,[2,3,3,67]) (.node .empty (4016,[2,2,2,2,251]) .empty)))))
theorem part0104_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2372 2415 part0104 := by
  change part0104.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 2372 2415 = true
  decide +kernel

def part0105 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1208,[2,2,2,151]) .empty) (4017,[3,13,103]) .empty) (6827,[6827]) (.node (.node .empty (1209,[3,13,31]) .empty) (4019,[4019]) .empty)) (1210,[2,5,11,11]) (.node (.node (.node .empty (4020,[2,2,3,5,67]) .empty) (1211,[7,173]) .empty) (4021,[4021]) (.node .empty (1212,[2,2,3,101]) .empty))) (1213,[1213]) (.node (.node (.node (.node .empty (9640,[2,2,2,5,241]) .empty) (1214,[2,607]) .empty) (4023,[3,3,3,149]) (.node (.node .empty (4024,[2,2,2,503]) .empty) (1215,[3,3,3,3,3,5]) .empty)) (1216,[2,2,2,2,2,2,19]) (.node (.node (.node .empty (12452,[2,2,11,283]) .empty) (1217,[1217]) .empty) (6835,[5,1367]) (.node .empty (1218,[2,3,7,29]) .empty)))) (18072,[2,2,2,3,3,251]) (.node (.node (.node (.node (.node .empty (0,[]) .empty) (0,[]) .empty) (4029,[3,17,79]) (.node (.node .empty (1220,[2,2,5,61]) .empty) (1221,[3,11,37]) .empty)) (4030,[2,5,13,31]) (.node (.node (.node .empty (1222,[2,13,47]) .empty) (4031,[29,139]) .empty) (1223,[1223]) (.node .empty (4032,[2,2,2,2,2,2,3,3,7]) .empty))) (12460,[2,2,5,7,89]) (.node (.node (.node (.node .empty (1224,[2,2,2,3,3,17]) .empty) (4034,[2,2017]) .empty) (1225,[5,5,7,7]) (.node .empty (1226,[2,613]) .empty)) (6844,[2,2,29,59]) (.node (.node (.node .empty (4036,[2,2,1009]) .empty) (1227,[3,409]) .empty) (1228,[2,2,307]) (.node .empty (4037,[11,367]) .empty)))))
theorem part0105_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2416 2458 part0105 := by
  change part0105.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 2416 2458 = true
  decide +kernel

def part0106 : CertificateTree FactoredPoint := .node part0104 (1207,[17,71]) part0105
theorem part0106_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2372 2458 part0106 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 2372 2458
    part0104 part0105 (1207,[17,71]) (by decide +kernel) part0104_valid
    (by decide +kernel) part0105_valid

def part0107 : CertificateTree FactoredPoint := .node part0103 (9612,[2,2,3,3,3,89]) part0106
theorem part0107_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2284 2458 part0107 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 2284 2458
    part0103 part0106 (9612,[2,2,3,3,3,89]) (by decide +kernel) part0103_valid
    (by decide +kernel) part0106_valid

def part0108 : CertificateTree FactoredPoint := .node part0100 (1141,[7,163]) part0107
theorem part0108_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2108 2458 part0108 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 2108 2458
    part0100 part0107 (1141,[7,163]) (by decide +kernel) part0100_valid
    (by decide +kernel) part0107_valid

def part0109 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (4038,[2,3,673]) .empty) (1230,[2,3,5,41]) .empty) (4039,[7,577]) (.node (.node .empty (1231,[1231]) .empty) (4040,[2,2,2,5,101]) .empty)) (9659,[13,743]) (.node (.node (.node .empty (1232,[2,2,2,2,7,11]) .empty) (15278,[2,7639]) .empty) (1233,[3,3,137]) (.node .empty (1234,[2,617]) .empty))) (6852,[2,2,3,571]) (.node (.node (.node (.node .empty (6853,[7,11,89]) .empty) (1235,[5,13,19]) .empty) (12472,[2,2,2,1559]) (.node (.node .empty (1236,[2,2,3,103]) .empty) (1237,[1237]) .empty)) (4046,[2,7,17,17]) (.node (.node (.node .empty (1238,[2,619]) .empty) (9665,[5,1933]) .empty) (1239,[3,7,59]) (.node .empty (4048,[2,2,2,2,11,23]) .empty)))) (4049,[4049]) (.node (.node (.node (.node (.node .empty (1240,[2,2,2,5,31]) .empty) (6859,[19,19,19]) .empty) (1241,[17,73]) (.node (.node .empty (4051,[4051]) .empty) (1242,[2,3,3,3,23]) .empty)) (4052,[2,2,1013]) (.node (.node (.node .empty (1243,[11,113]) .empty) (1244,[2,2,311]) .empty) (6862,[2,47,73]) (.node .empty (1245,[3,5,83]) .empty))) (9672,[2,2,2,3,13,31]) (.node (.node (.node (.node .empty (12482,[2,79,79]) .empty) (1246,[2,7,89]) .empty) (4056,[2,2,2,3,13,13]) (.node (.node .empty (1247,[29,43]) .empty) (1248,[2,2,2,2,2,3,13]) .empty)) (15293,[41,373]) (.node (.node (.node .empty (1249,[1249]) .empty) (9676,[2,2,41,59]) .empty) (1250,[2,5,5,5,5]) (.node .empty (6868,[2,2,17,101]) .empty)))))
theorem part0109_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2459 2502 part0109 := by
  change part0109.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 2459 2502 = true
  decide +kernel

def part0110 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1251,[3,3,139]) .empty) (1252,[2,2,313]) .empty) (4061,[31,131]) (.node (.node .empty (6871,[6871]) .empty) (1253,[7,179]) .empty)) (1254,[2,3,11,19]) (.node (.node (.node .empty (4063,[17,239]) .empty) (4064,[2,2,2,2,2,127]) .empty) (1255,[5,251]) (.node .empty (1256,[2,2,2,157]) .empty))) (6874,[2,7,491]) (.node (.node (.node (.node .empty (12493,[13,31,31]) .empty) (1257,[3,419]) .empty) (12494,[2,6247]) (.node (.node .empty (1258,[2,17,37]) .empty) (1259,[1259]) .empty)) (4068,[2,2,3,3,113]) (.node (.node (.node .empty (1260,[2,2,3,3,5,7]) .empty) (6878,[2,19,181]) .empty) (1261,[13,97]) (.node .empty (6879,[3,2293]) .empty)))) (1262,[2,631]) (.node (.node (.node (.node (.node .empty (6880,[2,2,2,2,2,5,43]) .empty) (4072,[2,2,2,509]) .empty) (1263,[3,421]) (.node (.node .empty (1264,[2,2,2,2,79]) .empty) (9691,[11,881]) .empty)) (1265,[5,11,23]) (.node (.node (.node .empty (12501,[3,3,3,463]) .empty) (6884,[2,2,1721]) .empty) (1266,[2,3,211]) (.node .empty (4076,[2,2,1019]) .empty))) (1267,[7,181]) (.node (.node (.node (.node .empty (1268,[2,2,317]) .empty) (4077,[3,3,3,151]) .empty) (4078,[2,2039]) (.node (.node .empty (1269,[3,3,3,47]) .empty) (4079,[4079]) .empty)) (1270,[2,5,127]) (.node (.node (.node .empty (4080,[2,2,2,2,3,5,17]) .empty) (1271,[31,41]) .empty) (0,[]) (.node .empty (0,[]) .empty)))))
theorem part0110_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2503 2546 part0110 := by
  change part0110.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 2503 2546 = true
  decide +kernel

def part0111 : CertificateTree FactoredPoint := .node part0109 (4060,[2,2,5,7,29]) part0110
theorem part0111_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2459 2546 part0111 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 2459 2546
    part0109 part0110 (4060,[2,2,5,7,29]) (by decide +kernel) part0109_valid
    (by decide +kernel) part0110_valid

def part0112 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1273,[19,67]) .empty) (1274,[2,7,7,13]) .empty) (4083,[3,1361]) (.node (.node .empty (1275,[3,5,5,17]) .empty) (6893,[61,113]) .empty)) (4085,[5,19,43]) (.node (.node (.node .empty (1276,[2,2,11,29]) .empty) (1277,[1277]) .empty) (4086,[2,3,3,227]) (.node .empty (6896,[2,2,2,2,431]) .empty))) (1278,[2,3,3,71]) (.node (.node (.node (.node .empty (1279,[1279]) .empty) (4088,[2,2,2,7,73]) .empty) (1280,[2,2,2,2,2,2,2,2,5]) (.node (.node .empty (9707,[17,571]) .empty) (1281,[3,7,61]) .empty)) (4090,[2,5,409]) (.node (.node (.node .empty (1282,[2,641]) .empty) (12518,[2,11,569]) .empty) (1283,[1283]) (.node .empty (6901,[67,103]) .empty)))) (4093,[4093]) (.node (.node (.node (.node (.node .empty (1284,[2,2,3,107]) .empty) (9712,[2,2,2,2,607]) .empty) (1285,[5,257]) (.node (.node .empty (1286,[2,643]) .empty) (9713,[11,883]) .empty)) (15332,[2,2,3833]) (.node (.node (.node .empty (1287,[3,3,11,13]) .empty) (9715,[5,29,67]) .empty) (1288,[2,2,2,7,23]) (.node .empty (1289,[1289]) .empty))) (4098,[2,3,683]) (.node (.node (.node (.node .empty (1290,[2,3,5,43]) .empty) (6908,[2,2,11,157]) .empty) (1291,[1291]) (.node (.node .empty (4100,[2,2,5,5,41]) .empty) (9719,[9719]) .empty)) (1292,[2,2,17,19]) (.node (.node (.node .empty (6911,[6911]) .empty) (1293,[3,431]) .empty) (1294,[2,647]) (.node .empty (4103,[11,373]) .empty)))))
theorem part0112_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2547 2590 part0112 := by
  change part0112.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 2547 2590 = true
  decide +kernel

def part0113 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (4104,[2,2,2,3,3,3,19]) .empty) (1296,[2,2,2,2,3,3,3,3]) .empty) (4105,[5,821]) (.node (.node .empty (1297,[1297]) .empty) (9724,[2,2,11,13,17]) .empty)) (18152,[2,2,2,2269]) (.node (.node (.node .empty (1298,[2,11,59]) .empty) (4108,[2,2,13,79]) .empty) (1299,[3,433]) (.node .empty (1300,[2,2,5,5,13]) .empty))) (4109,[7,587]) (.node (.node (.node (.node .empty (1301,[1301]) .empty) (18155,[5,3631]) .empty) (1302,[2,3,7,31]) (.node (.node .empty (6920,[2,2,2,5,173]) .empty) (1303,[1303]) .empty)) (6921,[3,3,769]) (.node (.node (.node .empty (1304,[2,2,2,163]) .empty) (4113,[3,3,457]) .empty) (1305,[3,3,5,29]) (.node .empty (4114,[2,11,11,17]) .empty)))) (1306,[2,653]) (.node (.node (.node (.node (.node .empty (4115,[5,823]) .empty) (1307,[1307]) .empty) (4116,[2,2,3,7,7,7]) (.node (.node .empty (6926,[2,3463]) .empty) (1308,[2,2,3,109]) .empty)) (1309,[7,11,17]) (.node (.node (.node .empty (4118,[2,29,71]) .empty) (6928,[2,2,2,2,433]) .empty) (1310,[2,5,131]) (.node .empty (1311,[3,19,23]) .empty))) (4120,[2,2,2,5,103]) (.node (.node (.node (.node .empty (1312,[2,2,2,2,2,41]) .empty) (6930,[2,3,3,5,7,11]) .empty) (1313,[13,101]) (.node (.node .empty (4122,[2,3,3,229]) .empty) (4123,[7,19,31]) .empty)) (1314,[2,3,3,73]) (.node (.node (.node .empty (4124,[2,2,1031]) .empty) (1315,[5,263]) .empty) (4125,[3,5,5,5,11]) (.node .empty (1316,[2,2,7,47]) .empty)))))
theorem part0113_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2591 2634 part0113 := by
  change part0113.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 2591 2634 = true
  decide +kernel

def part0114 : CertificateTree FactoredPoint := .node part0112 (1295,[5,7,37]) part0113
theorem part0114_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2547 2634 part0114 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 2547 2634
    part0112 part0113 (1295,[5,7,37]) (by decide +kernel) part0112_valid
    (by decide +kernel) part0113_valid

def part0115 : CertificateTree FactoredPoint := .node part0111 (4082,[2,13,157]) part0114
theorem part0115_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2459 2634 part0115 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 2459 2634
    part0111 part0114 (4082,[2,13,157]) (by decide +kernel) part0111_valid
    (by decide +kernel) part0114_valid

def part0116 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1317,[3,439]) .empty) (1318,[2,659]) .empty) (6936,[2,2,2,3,17,17]) (.node (.node .empty (1319,[1319]) .empty) (4128,[2,2,2,2,2,3,43]) .empty)) (1320,[2,2,2,3,5,11]) (.node (.node (.node .empty (9747,[3,3,3,19,19]) .empty) (1321,[1321]) .empty) (6939,[3,3,3,257]) (.node .empty (1322,[2,661]) .empty))) (4131,[3,3,3,3,3,17]) (.node (.node (.node (.node .empty (4132,[2,2,1033]) .empty) (1323,[3,3,3,7,7]) .empty) (1324,[2,2,331]) (.node (.node .empty (6942,[2,3,13,89]) .empty) (0,[]) .empty)) (0,[]) (.node (.node (.node .empty (18180,[2,2,3,3,5,101]) .empty) (1326,[2,3,13,17]) .empty) (1327,[1327]) (.node .empty (4136,[2,2,2,11,47]) .empty)))) (1328,[2,2,2,2,83]) (.node (.node (.node (.node (.node .empty (6946,[2,23,151]) .empty) (4138,[2,2069]) .empty) (1329,[3,443]) (.node (.node .empty (1330,[2,5,7,19]) .empty) (6948,[2,2,3,3,193]) .empty)) (1331,[11,11,11]) (.node (.node (.node .empty (18185,[5,3637]) .empty) (12568,[2,2,2,1571]) .empty) (1332,[2,2,3,3,37]) (.node .empty (6951,[3,7,331]) .empty))) (1333,[31,43]) (.node (.node (.node (.node .empty (12570,[2,3,5,419]) .empty) (1334,[2,23,29]) .empty) (1335,[3,5,89]) (.node (.node .empty (4144,[2,2,2,2,7,37]) .empty) (1336,[2,2,2,167]) .empty)) (4145,[5,829]) (.node (.node (.node .empty (9764,[2,2,2441]) .empty) (1337,[7,191]) .empty) (12574,[2,6287]) (.node .empty (1338,[2,3,223]) .empty)))))
theorem part0116_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2635 2678 part0116 := by
  change part0116.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 2635 2678 = true
  decide +kernel

def part0117 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (4148,[2,2,17,61]) .empty) (9767,[9767]) .empty) (1340,[2,2,5,67]) (.node (.node .empty (6959,[6959]) .empty) (1341,[3,3,149]) .empty)) (6960,[2,2,2,2,3,5,29]) (.node (.node (.node .empty (1342,[2,11,61]) .empty) (6961,[6961]) .empty) (1343,[17,79]) (.node .empty (4153,[4153]) .empty))) (1344,[2,2,2,2,2,2,3,7]) (.node (.node (.node (.node .empty (6963,[3,11,211]) .empty) (1345,[5,269]) .empty) (1346,[2,673]) (.node (.node .empty (9773,[29,337]) .empty) (4156,[2,2,1039]) .empty)) (1347,[3,449]) (.node (.node (.node .empty (1348,[2,2,337]) .empty) (6966,[2,3,3,3,3,43]) .empty) (4158,[2,3,3,3,7,11]) (.node .empty (1349,[19,71]) .empty)))) (4159,[4159]) (.node (.node (.node (.node (.node .empty (1350,[2,3,3,3,5,5]) .empty) (4160,[2,2,2,2,2,2,5,13]) .empty) (1351,[7,193]) (.node (.node .empty (4161,[3,19,73]) .empty) (1352,[2,2,2,13,13]) .empty)) (1353,[3,11,41]) (.node (.node (.node .empty (21016,[2,2,2,37,71]) .empty) (1354,[2,677]) .empty) (4163,[23,181]) (.node .empty (15400,[2,2,2,5,5,7,11]) .empty))) (1355,[5,271]) (.node (.node (.node (.node .empty (4165,[5,7,7,17]) .empty) (1356,[2,2,3,113]) .empty) (4166,[2,2083]) (.node (.node .empty (1357,[23,59]) .empty) (6976,[2,2,2,2,2,2,109]) .empty)) (1358,[2,7,97]) (.node (.node (.node .empty (4168,[2,2,2,521]) .empty) (1359,[3,3,151]) .empty) (9787,[9787]) (.node .empty (1360,[2,2,2,2,5,17]) .empty)))))
theorem part0117_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2679 2722 part0117 := by
  change part0117.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 2679 2722 = true
  decide +kernel

def part0118 : CertificateTree FactoredPoint := .node part0116 (1339,[13,103]) part0117
theorem part0118_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2635 2722 part0118 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 2635 2722
    part0116 part0117 (1339,[13,103]) (by decide +kernel) part0116_valid
    (by decide +kernel) part0117_valid

def part0119 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (6979,[7,997]) .empty) (12598,[2,6299]) .empty) (1362,[2,3,227]) (.node (.node .empty (9790,[2,5,11,89]) .empty) (1363,[29,47]) .empty)) (6982,[2,3491]) (.node (.node (.node .empty (1364,[2,2,11,31]) .empty) (1365,[3,5,7,13]) .empty) (9792,[2,2,2,2,2,2,3,3,17]) (.node .empty (1366,[2,683]) .empty))) (4175,[5,5,167]) (.node (.node (.node (.node .empty (1367,[1367]) .empty) (4176,[2,2,2,2,3,3,29]) .empty) (4177,[4177]) (.node (.node .empty (1368,[2,2,2,3,3,19]) .empty) (1369,[37,37]) .empty)) (9796,[2,2,31,79]) (.node (.node (.node .empty (4179,[3,7,199]) .empty) (1370,[2,5,137]) .empty) (4180,[2,2,5,11,19]) (.node .empty (1371,[3,457]) .empty)))) (1372,[2,2,7,7,7]) (.node (.node (.node (.node (.node .empty (4181,[37,113]) .empty) (1373,[1373]) .empty) (9800,[2,2,2,5,5,7,7]) (.node (.node .empty (18228,[2,2,3,7,7,31]) .empty) (1374,[2,3,229]) .empty)) (4184,[2,2,2,523]) (.node (.node (.node .empty (1375,[5,5,5,11]) .empty) (1376,[2,2,2,2,2,43]) .empty) (12612,[2,2,3,1051]) (.node .empty (9804,[2,2,3,19,43]) .empty))) (1377,[3,3,3,3,17]) (.node (.node (.node (.node .empty (0,[]) .empty) (0,[]) .empty) (6997,[6997]) (.node (.node .empty (1379,[7,197]) .empty) (1380,[2,2,3,5,23]) .empty)) (4189,[59,71]) (.node (.node (.node .empty (1381,[1381]) .empty) (4190,[2,5,419]) .empty) (1382,[2,691]) (.node .empty (7000,[2,2,2,5,5,5,7]) .empty)))))
theorem part0119_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2723 2766 part0119 := by
  change part0119.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 2723 2766 = true
  decide +kernel

def part0120 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1383,[3,461]) .empty) (1384,[2,2,2,173]) .empty) (4193,[7,599]) (.node (.node .empty (12621,[3,7,601]) .empty) (1385,[5,277]) .empty)) (1386,[2,3,3,7,11]) (.node (.node (.node .empty (4195,[5,839]) .empty) (4196,[2,2,1049]) .empty) (1387,[19,73]) (.node .empty (1388,[2,2,347]) .empty))) (4197,[3,1399]) (.node (.node (.node (.node .empty (4198,[2,2099]) .empty) (1389,[3,463]) .empty) (9817,[9817]) (.node (.node .empty (1390,[2,5,139]) .empty) (1391,[13,107]) .empty)) (7009,[43,163]) (.node (.node (.node .empty (4201,[4201]) .empty) (1392,[2,2,2,2,3,29]) .empty) (7011,[3,3,19,41]) (.node .empty (1393,[7,199]) .empty)))) (7012,[2,2,1753]) (.node (.node (.node (.node (.node .empty (1394,[2,17,41]) .empty) (1395,[3,3,5,31]) .empty) (9822,[2,3,1637]) (.node (.node .empty (1396,[2,2,349]) .empty) (4205,[5,29,29]) .empty)) (7015,[5,23,61]) (.node (.node (.node .empty (1397,[11,127]) .empty) (7016,[2,2,2,877]) .empty) (1398,[2,3,233]) (.node .empty (1399,[1399]) .empty))) (7017,[3,2339]) (.node (.node (.node (.node .empty (4209,[3,23,61]) .empty) (1400,[2,2,2,5,5,7]) .empty) (7019,[7019]) (.node .empty (1401,[3,467]) .empty)) (1402,[2,701]) (.node (.node (.node .empty (7020,[2,2,3,3,3,5,13]) .empty) (4212,[2,2,3,3,3,3,13]) .empty) (1403,[23,61]) (.node .empty (1404,[2,2,3,3,3,13]) .empty)))))
theorem part0120_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2767 2809 part0120 := by
  change part0120.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 2767 2809 = true
  decide +kernel

def part0121 : CertificateTree FactoredPoint := .node part0119 (4192,[2,2,2,2,2,131]) part0120
theorem part0121_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2723 2809 part0121 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 2723 2809
    part0119 part0120 (4192,[2,2,2,2,2,131]) (by decide +kernel) part0119_valid
    (by decide +kernel) part0120_valid

def part0122 : CertificateTree FactoredPoint := .node part0118 (1361,[1361]) part0121
theorem part0122_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2635 2809 part0122 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 2635 2809
    part0118 part0121 (1361,[1361]) (by decide +kernel) part0118_valid
    (by decide +kernel) part0121_valid

def part0123 : CertificateTree FactoredPoint := .node part0115 (4126,[2,2063]) part0122
theorem part0123_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2459 2809 part0123 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 2459 2809
    part0115 part0122 (4126,[2,2063]) (by decide +kernel) part0115_valid
    (by decide +kernel) part0122_valid

def part0124 : CertificateTree FactoredPoint := .node part0108 (1229,[1229]) part0123
theorem part0124_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2108 2809 part0124 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 2108 2809
    part0108 part0123 (1229,[1229]) (by decide +kernel) part0108_valid
    (by decide +kernel) part0123_valid

def part0125 : CertificateTree FactoredPoint := .node part0093 (6671,[7,953]) part0124
theorem part0125_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 1405 2809 part0125 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 1405 2809
    part0093 part0124 (6671,[7,953]) (by decide +kernel) part0093_valid
    (by decide +kernel) part0124_valid

def part0126 : CertificateTree FactoredPoint := .node part0062 (702,[2,3,3,3,13]) part0125
theorem part0126_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 0 2809 part0126 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 0 2809
    part0062 part0125 (702,[2,3,3,3,13]) (by decide +kernel) part0062_valid
    (by decide +kernel) part0125_valid

def data : CertificateTree FactoredPoint := part0126
theorem valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 0 2809 data := by
  exact part0126_valid

end GeneralizedGoldbach.LargeCertificates.Odd53.B0000
