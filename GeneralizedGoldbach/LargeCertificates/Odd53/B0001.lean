module

public import GeneralizedGoldbach.FullCertificateKernel
public import GeneralizedGoldbach.LargeCertificates.SharedPrimes

/-! 全量有限证书：外部生成数据，内核检查覆盖及各项条件。 -/
@[expose] public section
namespace GeneralizedGoldbach.LargeCertificates.Odd53.B0001
open FullCertificate
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
def part0000 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (9832,[2,2,2,1229]) .empty) (1405,[5,281]) .empty) (4215,[3,5,281]) (.node (.node .empty (1406,[2,19,37]) .empty) (1407,[3,7,67]) .empty)) (4216,[2,2,2,17,31]) (.node (.node (.node .empty (1408,[2,2,2,2,2,2,2,11]) .empty) (7026,[2,3,1171]) .empty) (1409,[1409]) (.node .empty (18263,[7,2609]) .empty))) (1410,[2,3,5,47]) (.node (.node (.node (.node .empty (7028,[2,2,7,251]) .empty) (7029,[3,3,11,71]) .empty) (1411,[17,83]) (.node (.node .empty (1412,[2,2,353]) .empty) (15457,[13,29,41]) .empty)) (4222,[2,2111]) (.node (.node (.node .empty (1413,[3,3,157]) .empty) (9841,[13,757]) .empty) (1414,[2,7,101]) (.node .empty (7033,[13,541]) .empty)))) (1415,[5,283]) (.node (.node (.node (.node (.node .empty (4225,[5,5,13,13]) .empty) (1416,[2,2,2,3,59]) .empty) (1417,[13,109]) (.node (.node .empty (7035,[3,5,7,67]) .empty) (1418,[2,709]) .empty)) (4227,[3,1409]) (.node (.node (.node .empty (1419,[3,11,43]) .empty) (4228,[2,2,7,151]) .empty) (4229,[4229]) (.node .empty (1420,[2,2,5,71]) .empty))) (4230,[2,3,3,5,47]) (.node (.node (.node (.node .empty (1421,[7,7,29]) .empty) (4231,[4231]) .empty) (1422,[2,3,3,79]) (.node (.node .empty (1423,[1423]) .empty) (7041,[3,2347]) .empty)) (1424,[2,2,2,2,89]) (.node (.node (.node .empty (7042,[2,7,503]) .empty) (1425,[3,5,5,19]) .empty) (4234,[2,29,73]) (.node .empty (4235,[5,7,11,11]) .empty)))))
theorem part0000_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2810 2853 part0000 := by
  change part0000.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 2810 2853 = true
  decide +kernel

def part0001 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1427,[1427]) .empty) (4236,[2,2,3,353]) .empty) (1428,[2,2,3,7,17]) (.node (.node .empty (4237,[19,223]) .empty) (1429,[1429]) .empty)) (7047,[3,3,3,3,3,29]) (.node (.node (.node .empty (7048,[2,2,2,881]) .empty) (1430,[2,5,11,13]) .empty) (0,[]) (.node .empty (0,[]) .empty))) (1432,[2,2,2,179]) (.node (.node (.node (.node .empty (15477,[3,7,11,67]) .empty) (1433,[1433]) .empty) (7051,[11,641]) (.node (.node .empty (4243,[4243]) .empty) (1434,[2,3,239]) .empty)) (1435,[5,7,41]) (.node (.node (.node .empty (7053,[3,2351]) .empty) (1436,[2,2,359]) .empty) (9863,[7,1409]) (.node .empty (7055,[5,17,83]) .empty)))) (1437,[3,479]) (.node (.node (.node (.node (.node .empty (1438,[2,719]) .empty) (4247,[31,137]) .empty) (1439,[1439]) (.node (.node .empty (4248,[2,2,2,3,3,59]) .empty) (7058,[2,3529]) .empty)) (1440,[2,2,2,2,2,3,3,5]) (.node (.node (.node .empty (9868,[2,2,2467]) .empty) (1441,[11,131]) .empty) (18296,[2,2,2,2287]) (.node .empty (1442,[2,7,103]) .empty))) (4252,[2,2,1063]) (.node (.node (.node (.node .empty (1443,[3,13,37]) .empty) (1444,[2,2,19,19]) .empty) (12680,[2,2,2,5,317]) (.node (.node .empty (9872,[2,2,2,2,617]) .empty) (1445,[5,17,17]) .empty)) (4255,[5,23,37]) (.node (.node (.node .empty (1446,[2,3,241]) .empty) (1447,[1447]) .empty) (4256,[2,2,2,2,2,7,19]) (.node .empty (1448,[2,2,2,181]) .empty)))))
theorem part0001_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2854 2897 part0001 := by
  change part0001.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 2854 2897 = true
  decide +kernel

def part0002 : CertificateTree FactoredPoint := .node part0000 (1426,[2,23,31]) part0001
theorem part0002_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2810 2897 part0002 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 2810 2897
    part0000 part0001 (1426,[2,23,31]) (by decide +kernel) part0000_valid
    (by decide +kernel) part0001_valid

def part0003 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1449,[3,3,7,23]) .empty) (7067,[37,191]) .empty) (4259,[4259]) (.node (.node .empty (1450,[2,5,5,29]) .empty) (1451,[1451]) .empty)) (9878,[2,11,449]) (.node (.node (.node .empty (4261,[4261]) .empty) (1452,[2,2,3,11,11]) .empty) (1453,[1453]) (.node .empty (7071,[3,2357]) .empty))) (1454,[2,727]) (.node (.node (.node (.node .empty (9881,[41,241]) .empty) (1455,[3,5,97]) .empty) (7073,[11,643]) (.node (.node .empty (1456,[2,2,2,2,7,13]) .empty) (4265,[5,853]) .empty)) (18311,[18311]) (.node (.node (.node .empty (1457,[31,47]) .empty) (1458,[2,3,3,3,3,3,3]) .empty) (4267,[17,251]) (.node .empty (1459,[1459]) .empty)))) (4268,[2,2,11,97]) (.node (.node (.node (.node (.node .empty (7078,[2,3539]) .empty) (1460,[2,2,5,73]) .empty) (4270,[2,5,7,61]) (.node (.node .empty (1461,[3,487]) .empty) (4271,[4271]) .empty)) (1462,[2,17,43]) (.node (.node (.node .empty (1463,[7,11,19]) .empty) (4272,[2,2,2,2,3,89]) .empty) (4273,[4273]) (.node .empty (1464,[2,2,2,3,61]) .empty))) (4274,[2,2137]) (.node (.node (.node (.node .empty (1465,[5,293]) .empty) (1466,[2,733]) .empty) (18320,[2,2,2,2,5,229]) (.node (.node .empty (4276,[2,2,1069]) .empty) (1467,[3,3,163]) .empty)) (1468,[2,2,367]) (.node (.node (.node .empty (4277,[7,13,47]) .empty) (1469,[13,113]) .empty) (7087,[19,373]) (.node .empty (1470,[2,3,5,7,7]) .empty)))))
theorem part0003_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2898 2941 part0003 := by
  change part0003.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 2898 2941 = true
  decide +kernel

def part0004 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1471,[1471]) .empty) (4280,[2,2,2,5,107]) .empty) (1472,[2,2,2,2,2,2,23]) (.node (.node .empty (4281,[3,1427]) .empty) (4282,[2,2141]) .empty)) (1473,[3,491]) (.node (.node (.node .empty (4283,[4283]) .empty) (1474,[2,11,67]) .empty) (4284,[2,2,3,3,7,17]) (.node .empty (1475,[5,5,59]) .empty))) (7094,[2,3547]) (.node (.node (.node (.node .empty (1476,[2,2,3,3,41]) .empty) (4286,[2,2143]) .empty) (1477,[7,211]) (.node (.node .empty (1478,[2,739]) .empty) (4287,[3,1429]) .empty)) (1479,[3,17,29]) (.node (.node (.node .empty (7097,[47,151]) .empty) (4289,[4289]) .empty) (1480,[2,2,2,5,37]) (.node .empty (1481,[1481]) .empty)))) (7099,[31,229]) (.node (.node (.node (.node (.node .empty (12718,[2,6359]) .empty) (1482,[2,3,13,19]) .empty) (1483,[1483]) (.node (.node .empty (4292,[2,2,29,37]) .empty) (0,[]) .empty)) (0,[]) (.node (.node (.node .empty (1485,[3,3,3,5,11]) .empty) (4294,[2,19,113]) .empty) (1486,[2,743]) (.node .empty (4295,[5,859]) .empty))) (1487,[1487]) (.node (.node (.node (.node .empty (4296,[2,2,2,3,179]) .empty) (4297,[4297]) .empty) (1488,[2,2,2,2,3,31]) (.node (.node .empty (1489,[1489]) .empty) (4298,[2,7,307]) .empty)) (7108,[2,2,1777]) (.node (.node (.node .empty (1490,[2,5,149]) .empty) (1491,[3,7,71]) .empty) (4300,[2,2,5,5,43]) (.node .empty (1492,[2,2,373]) .empty)))))
theorem part0004_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2942 2985 part0004 := by
  change part0004.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 2942 2985 = true
  decide +kernel

def part0005 : CertificateTree FactoredPoint := .node part0003 (4279,[11,389]) part0004
theorem part0005_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2898 2985 part0005 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 2898 2985
    part0003 part0004 (4279,[11,389]) (by decide +kernel) part0003_valid
    (by decide +kernel) part0004_valid

def part0006 : CertificateTree FactoredPoint := .node part0002 (9875,[5,5,5,79]) part0005
theorem part0006_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2810 2985 part0006 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 2810 2985
    part0002 part0005 (9875,[5,5,5,79]) (by decide +kernel) part0002_valid
    (by decide +kernel) part0005_valid

def part0007 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1493,[1493]) .empty) (4302,[2,3,3,239]) .empty) (4303,[13,331]) (.node (.node .empty (1494,[2,3,3,83]) .empty) (4304,[2,2,2,2,269]) .empty)) (1495,[5,13,23]) (.node (.node (.node .empty (7114,[2,3557]) .empty) (1496,[2,2,2,11,17]) .empty) (4306,[2,2153]) (.node .empty (1497,[3,499]) .empty))) (12734,[2,6367]) (.node (.node (.node (.node .empty (1498,[2,7,107]) .empty) (1499,[1499]) .empty) (4308,[2,2,3,359]) (.node (.node .empty (7118,[2,3559]) .empty) (1500,[2,2,3,5,5,5]) .empty)) (7119,[3,3,7,113]) (.node (.node (.node .empty (1501,[19,79]) .empty) (1502,[2,751]) .empty) (4311,[3,3,479]) (.node .empty (7121,[7121]) .empty)))) (1503,[3,3,167]) (.node (.node (.node (.node (.node .empty (1504,[2,2,2,2,2,47]) .empty) (4313,[19,227]) .empty) (1505,[5,7,43]) (.node (.node .empty (4314,[2,3,719]) .empty) (7124,[2,2,13,137]) .empty)) (1506,[2,3,251]) (.node (.node (.node .empty (4316,[2,2,13,83]) .empty) (1507,[11,137]) .empty) (1508,[2,2,13,29]) (.node .empty (4317,[3,1439]) .empty))) (7127,[7127]) (.node (.node (.node (.node .empty (1509,[3,503]) .empty) (12746,[2,6373]) .empty) (1510,[2,5,151]) (.node (.node .empty (1511,[1511]) .empty) (4320,[2,2,2,2,2,3,3,3,5]) .empty)) (7130,[2,5,23,31]) (.node (.node (.node .empty (1512,[2,2,2,3,3,3,7]) .empty) (4322,[2,2161]) .empty) (1513,[17,89]) (.node .empty (1514,[2,757]) .empty)))))
theorem part0007_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2986 3029 part0007 := by
  change part0007.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 2986 3029 = true
  decide +kernel

def part0008 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1515,[3,5,101]) .empty) (4324,[2,2,23,47]) .empty) (1516,[2,2,379]) (.node (.node .empty (4325,[5,5,173]) .empty) (4326,[2,3,7,103]) .empty)) (1517,[37,41]) (.node (.node (.node .empty (1518,[2,3,11,23]) .empty) (12754,[2,7,911]) .empty) (4328,[2,2,2,541]) (.node .empty (1519,[7,7,31]) .empty))) (15565,[5,11,283]) (.node (.node (.node (.node .empty (1520,[2,2,2,2,5,19]) .empty) (1521,[3,3,13,13]) .empty) (4330,[2,5,433]) (.node (.node .empty (1522,[2,761]) .empty) (4331,[61,71]) .empty)) (1523,[1523]) (.node (.node (.node .empty (4332,[2,2,3,19,19]) .empty) (7142,[2,3571]) .empty) (1524,[2,2,3,127]) (.node .empty (9952,[2,2,2,2,2,311]) .empty)))) (1525,[5,5,61]) (.node (.node (.node (.node (.node .empty (4335,[3,5,17,17]) .empty) (1526,[2,7,109]) .empty) (4336,[2,2,2,2,271]) (.node (.node .empty (1527,[3,509]) .empty) (1528,[2,2,2,191]) .empty)) (7146,[2,3,3,397]) (.node (.node (.node .empty (15574,[2,13,599]) .empty) (1529,[11,139]) .empty) (1530,[2,3,3,5,17]) (.node .empty (9957,[3,3319]) .empty))) (1531,[1531]) (.node (.node (.node (.node .empty (7149,[3,2383]) .empty) (1532,[2,2,383]) .empty) (4341,[3,1447]) (.node (.node .empty (1533,[3,7,73]) .empty) (18387,[3,3,3,3,227]) .empty)) (1534,[2,13,59]) (.node (.node (.node .empty (4343,[43,101]) .empty) (12771,[3,3,3,11,43]) .empty) (1535,[5,307]) (.node .empty (1536,[2,2,2,2,2,2,2,2,2,3]) .empty)))))
theorem part0008_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 3030 3073 part0008 := by
  change part0008.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 3030 3073 = true
  decide +kernel

def part0009 : CertificateTree FactoredPoint := .node part0007 (18368,[2,2,2,2,2,2,7,41]) part0008
theorem part0009_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2986 3073 part0009 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 2986 3073
    part0007 part0008 (18368,[2,2,2,2,2,2,7,41]) (by decide +kernel) part0007_valid
    (by decide +kernel) part0008_valid

def part0010 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (0,[]) .empty) (0,[]) .empty) (1538,[2,769]) (.node (.node .empty (9965,[5,1993]) .empty) (4348,[2,2,1087]) .empty)) (1539,[3,3,3,3,19]) (.node (.node (.node .empty (1540,[2,2,5,7,11]) .empty) (7158,[2,3,1193]) .empty) (4350,[2,3,5,5,29]) (.node .empty (1541,[23,67]) .empty))) (12778,[2,6389]) (.node (.node (.node (.node .empty (1542,[2,3,257]) .empty) (1543,[1543]) .empty) (7161,[3,7,11,31]) (.node (.node .empty (1544,[2,2,2,193]) .empty) (4353,[3,1451]) .empty)) (1545,[3,5,103]) (.node (.node (.node .empty (4354,[2,7,311]) .empty) (1546,[2,773]) .empty) (4355,[5,13,67]) (.node .empty (9974,[2,4987]) .empty)))) (1547,[7,13,17]) (.node (.node (.node (.node (.node .empty (4357,[4357]) .empty) (1548,[2,2,3,3,43]) .empty) (1549,[1549]) (.node (.node .empty (7167,[3,2389]) .empty) (7168,[2,2,2,2,2,2,2,2,2,2,7]) .empty)) (1550,[2,5,5,31]) (.node (.node (.node .empty (1551,[3,11,47]) .empty) (4360,[2,2,2,5,109]) .empty) (1552,[2,2,2,2,97]) (.node .empty (4361,[7,7,89]) .empty))) (1553,[1553]) (.node (.node (.node (.node .empty (4362,[2,3,727]) .empty) (1554,[2,3,7,37]) .empty) (7172,[2,2,11,163]) (.node (.node .empty (4364,[2,2,1091]) .empty) (1555,[5,311]) .empty)) (1556,[2,2,389]) (.node (.node (.node .empty (7174,[2,17,211]) .empty) (7175,[5,5,7,41]) .empty) (1557,[3,3,173]) (.node .empty (12794,[2,6397]) .empty)))))
theorem part0010_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 3074 3117 part0010 := by
  change part0010.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 3074 3117 = true
  decide +kernel

def part0011 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1559,[1559]) .empty) (4368,[2,2,2,2,3,7,13]) .empty) (18414,[2,3,3,3,11,31]) (.node (.node .empty (1560,[2,2,2,3,5,13]) .empty) (4370,[2,5,19,23]) .empty)) (1561,[7,223]) (.node (.node (.node .empty (4371,[3,31,47]) .empty) (1562,[2,11,71]) .empty) (4372,[2,2,1093]) (.node .empty (1563,[3,521]) .empty))) (4373,[4373]) (.node (.node (.node (.node .empty (1564,[2,2,17,23]) .empty) (4374,[2,3,3,3,3,3,3,3]) .empty) (1565,[5,313]) (.node (.node .empty (7184,[2,2,2,2,449]) .empty) (1566,[2,3,3,3,29]) .empty)) (1567,[1567]) (.node (.node (.node .empty (9994,[2,19,263]) .empty) (1568,[2,2,2,2,2,7,7]) .empty) (4377,[3,1459]) (.node .empty (7187,[7187]) .empty)))) (1569,[3,523]) (.node (.node (.node (.node (.node .empty (9997,[13,769]) .empty) (1570,[2,5,157]) .empty) (1571,[1571]) (.node (.node .empty (7189,[7,13,79]) .empty) (4381,[13,337]) .empty)) (1572,[2,2,3,131]) (.node (.node (.node .empty (1573,[11,11,13]) .empty) (4382,[2,7,313]) .empty) (1574,[2,787]) (.node .empty (4383,[3,3,487]) .empty))) (1575,[3,3,5,5,7]) (.node (.node (.node (.node .empty (10002,[2,3,1667]) .empty) (1576,[2,2,2,197]) .empty) (4385,[5,877]) (.node (.node .empty (4386,[2,3,17,43]) .empty) (1577,[19,83]) .empty)) (18432,[2,2,2,2,2,2,2,2,2,2,2,3,3]) (.node (.node (.node .empty (1578,[2,3,263]) .empty) (1579,[1579]) .empty) (7197,[3,2399]) (.node .empty (10007,[10007]) .empty)))))
theorem part0011_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 3118 3161 part0011 := by
  change part0011.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 3118 3161 = true
  decide +kernel

def part0012 : CertificateTree FactoredPoint := .node part0010 (1558,[2,19,41]) part0011
theorem part0012_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 3074 3161 part0012 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 3074 3161
    part0010 part0011 (1558,[2,19,41]) (by decide +kernel) part0010_valid
    (by decide +kernel) part0011_valid

def part0013 : CertificateTree FactoredPoint := .node part0009 (7154,[2,7,7,73]) part0012
theorem part0013_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2986 3161 part0013 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 2986 3161
    part0009 part0012 (7154,[2,7,7,73]) (by decide +kernel) part0009_valid
    (by decide +kernel) part0012_valid

def part0014 : CertificateTree FactoredPoint := .node part0006 (9919,[7,13,109]) part0013
theorem part0014_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2810 3161 part0014 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 2810 3161
    part0006 part0013 (9919,[7,13,109]) (by decide +kernel) part0006_valid
    (by decide +kernel) part0013_valid

def part0015 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1581,[3,17,31]) .empty) (4390,[2,5,439]) .empty) (4391,[4391]) (.node (.node .empty (1582,[2,7,113]) .empty) (1583,[1583]) .empty)) (4392,[2,2,2,3,3,61]) (.node (.node (.node .empty (7202,[2,13,277]) .empty) (1584,[2,2,2,2,3,3,11]) .empty) (10012,[2,2,2503]) (.node .empty (1585,[5,317]) .empty))) (1586,[2,13,61]) (.node (.node (.node (.node .empty (12822,[2,3,2137]) .empty) (7205,[5,11,131]) .empty) (1587,[3,23,23]) (.node (.node .empty (1588,[2,2,397]) .empty) (7206,[2,3,1201]) .empty)) (7207,[7207]) (.node (.node (.node .empty (1589,[7,227]) .empty) (0,[]) .empty) (0,[]) (.node .empty (10018,[2,5009]) .empty)))) (1591,[37,43]) (.node (.node (.node (.node (.node .empty (1592,[2,2,2,199]) .empty) (4401,[3,3,3,163]) .empty) (7211,[7211]) (.node (.node .empty (1593,[3,3,3,59]) .empty) (1594,[2,797]) .empty)) (7212,[2,2,3,601]) (.node (.node (.node .empty (1595,[5,11,29]) .empty) (4404,[2,2,3,367]) .empty) (1596,[2,2,3,7,19]) (.node .empty (4405,[5,881]) .empty))) (1597,[1597]) (.node (.node (.node (.node .empty (10024,[2,2,2,7,179]) .empty) (12834,[2,3,3,23,31]) .empty) (1598,[2,17,47]) (.node (.node .empty (12835,[5,17,151]) .empty) (1599,[3,13,41]) .empty)) (1600,[2,2,2,2,2,2,5,5]) (.node (.node (.node .empty (7218,[2,3,3,401]) .empty) (1601,[1601]) .empty) (10028,[2,2,23,109]) (.node .empty (15647,[15647]) .empty)))))
theorem part0015_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 3162 3205 part0015 := by
  change part0015.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 3162 3205 = true
  decide +kernel

def part0016 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (4412,[2,2,1103]) .empty) (1603,[7,229]) .empty) (1604,[2,2,401]) (.node (.node .empty (4413,[3,1471]) .empty) (1605,[3,5,107]) .empty)) (7223,[31,233]) (.node (.node (.node .empty (7224,[2,2,2,3,7,43]) .empty) (1606,[2,11,73]) .empty) (1607,[1607]) (.node .empty (4416,[2,2,2,2,2,2,3,23]) .empty))) (7226,[2,3613]) (.node (.node (.node (.node .empty (1608,[2,2,2,3,67]) .empty) (1609,[1609]) .empty) (15654,[2,3,2609]) (.node (.node .empty (1610,[2,5,7,23]) .empty) (4419,[3,3,491]) .empty)) (7229,[7229]) (.node (.node (.node .empty (1611,[3,3,179]) .empty) (1612,[2,2,13,31]) .empty) (12848,[2,2,2,2,11,73]) (.node .empty (1613,[1613]) .empty)))) (7231,[7,1033]) (.node (.node (.node (.node (.node .empty (4423,[4423]) .empty) (1614,[2,3,269]) .empty) (1615,[5,17,19]) (.node (.node .empty (4424,[2,2,2,7,79]) .empty) (1616,[2,2,2,2,101]) .empty)) (10043,[11,11,83]) (.node (.node (.node .empty (1617,[3,7,7,11]) .empty) (7235,[5,1447]) .empty) (1618,[2,809]) (.node .empty (4427,[19,233]) .empty))) (1619,[1619]) (.node (.node (.node (.node .empty (4428,[2,2,3,3,3,41]) .empty) (7238,[2,7,11,47]) .empty) (1620,[2,2,3,3,3,3,5]) (.node (.node .empty (1621,[1621]) .empty) (4430,[2,5,443]) .empty)) (1622,[2,811]) (.node (.node (.node .empty (7240,[2,2,2,5,181]) .empty) (4432,[2,2,2,2,277]) .empty) (1623,[3,541]) (.node .empty (7242,[2,3,17,71]) .empty)))))
theorem part0016_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 3206 3249 part0016 := by
  change part0016.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 3206 3249 = true
  decide +kernel

def part0017 : CertificateTree FactoredPoint := .node part0015 (1602,[2,3,3,89]) part0016
theorem part0017_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 3162 3249 part0017 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 3162 3249
    part0015 part0016 (1602,[2,3,3,89]) (by decide +kernel) part0015_valid
    (by decide +kernel) part0016_valid

def part0018 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1625,[5,5,5,13]) .empty) (4434,[2,3,739]) .empty) (7244,[2,2,1811]) (.node (.node .empty (1626,[2,3,271]) .empty) (1627,[1627]) .empty)) (7245,[3,3,5,7,23]) (.node (.node (.node .empty (4437,[3,3,17,29]) .empty) (1628,[2,2,11,37]) .empty) (7247,[7247]) (.node .empty (1629,[3,3,181]) .empty))) (18484,[2,2,4621]) (.node (.node (.node (.node .empty (1630,[2,5,163]) .empty) (4440,[2,2,2,3,5,37]) .empty) (1631,[7,233]) (.node (.node .empty (4441,[4441]) .empty) (1632,[2,2,2,2,2,3,17]) .empty)) (4442,[2,2221]) (.node (.node (.node .empty (1633,[23,71]) .empty) (10061,[10061]) .empty) (1634,[2,19,43]) (.node .empty (1635,[3,5,109]) .empty)))) (4444,[2,2,11,101]) (.node (.node (.node (.node (.node .empty (1636,[2,2,409]) .empty) (7254,[2,3,3,13,31]) .empty) (1637,[1637]) (.node (.node .empty (4446,[2,3,3,13,19]) .empty) (4447,[4447]) .empty)) (1638,[2,3,3,7,13]) (.node (.node (.node .empty (4448,[2,2,2,2,2,139]) .empty) (1639,[11,149]) .empty) (10067,[10067]) (.node .empty (1640,[2,2,2,5,41]) .empty))) (7259,[7,17,61]) (.node (.node (.node (.node .empty (1641,[3,547]) .empty) (1642,[2,821]) .empty) (12878,[2,47,137]) (.node (.node .empty (0,[]) .empty) (0,[]) .empty)) (7262,[2,3631]) (.node (.node (.node .empty (1644,[2,2,3,137]) .empty) (1645,[5,7,47]) .empty) (4454,[2,17,131]) (.node .empty (1646,[2,823]) .empty)))))
theorem part0018_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 3250 3293 part0018 := by
  change part0018.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 3250 3293 = true
  decide +kernel

def part0019 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (4456,[2,2,2,557]) .empty) (1647,[3,3,3,61]) .empty) (1648,[2,2,2,2,103]) (.node (.node .empty (10075,[5,5,13,31]) .empty) (7267,[13,13,43]) .empty)) (1649,[17,97]) (.node (.node (.node .empty (1650,[2,3,5,5,11]) .empty) (7268,[2,2,23,79]) .empty) (1651,[13,127]) (.node .empty (4460,[2,2,5,223]) .empty))) (10079,[10079]) (.node (.node (.node (.node .empty (1652,[2,2,7,59]) .empty) (1653,[3,19,29]) .empty) (4462,[2,23,97]) (.node (.node .empty (1654,[2,827]) .empty) (7272,[2,2,2,3,3,101]) .empty)) (10082,[2,71,71]) (.node (.node (.node .empty (1655,[5,331]) .empty) (4465,[5,19,47]) .empty) (1656,[2,2,2,3,3,23]) (.node .empty (1657,[1657]) .empty)))) (15702,[2,3,2617]) (.node (.node (.node (.node (.node .empty (1658,[2,829]) .empty) (4467,[3,1489]) .empty) (1659,[3,7,79]) (.node (.node .empty (7277,[19,383]) .empty) (10087,[7,11,131]) .empty)) (1660,[2,2,5,83]) (.node (.node (.node .empty (4470,[2,3,5,149]) .empty) (1661,[11,151]) .empty) (10089,[3,3,19,59]) (.node .empty (1662,[2,3,277]) .empty))) (1663,[1663]) (.node (.node (.node (.node .empty (7281,[3,3,809]) .empty) (4473,[3,3,7,71]) .empty) (1664,[2,2,2,2,2,2,2,13]) (.node (.node .empty (1665,[3,3,5,37]) .empty) (10092,[2,2,3,29,29]) .empty)) (10093,[10093]) (.node (.node (.node .empty (1666,[2,7,7,17]) .empty) (1667,[1667]) .empty) (4476,[2,2,3,373]) (.node .empty (7286,[2,3643]) .empty)))))
theorem part0019_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 3294 3337 part0019 := by
  change part0019.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 3294 3337 = true
  decide +kernel

def part0020 : CertificateTree FactoredPoint := .node part0018 (10073,[7,1439]) part0019
theorem part0020_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 3250 3337 part0020 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 3250 3337
    part0018 part0019 (10073,[7,1439]) (by decide +kernel) part0018_valid
    (by decide +kernel) part0019_valid

def part0021 : CertificateTree FactoredPoint := .node part0017 (1624,[2,2,2,7,29]) part0020
theorem part0021_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 3162 3337 part0021 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 3162 3337
    part0017 part0020 (1624,[2,2,2,7,29]) (by decide +kernel) part0017_valid
    (by decide +kernel) part0020_valid

def part0022 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1669,[1669]) .empty) (15714,[2,3,3,3,3,97]) .empty) (7288,[2,2,2,911]) (.node (.node .empty (1670,[2,5,167]) .empty) (10098,[2,3,3,3,11,17]) .empty)) (1671,[3,557]) (.node (.node (.node .empty (4481,[4481]) .empty) (1672,[2,2,2,11,19]) .empty) (21336,[2,2,2,3,7,127]) (.node .empty (1673,[7,239]) .empty))) (4483,[4483]) (.node (.node (.node (.node .empty (1674,[2,3,3,3,31]) .empty) (7293,[3,11,13,17]) .empty) (1675,[5,5,67]) (.node (.node .empty (1676,[2,2,419]) .empty) (7294,[2,7,521]) .empty)) (4486,[2,2243]) (.node (.node (.node .empty (1677,[3,13,43]) .empty) (1678,[2,839]) .empty) (4487,[7,641]) (.node .empty (4488,[2,2,2,3,11,17]) .empty)))) (1679,[23,73]) (.node (.node (.node (.node (.node .empty (1680,[2,2,2,2,3,5,7]) .empty) (7298,[2,41,89]) .empty) (1681,[41,41]) (.node (.node .empty (4490,[2,5,449]) .empty) (1682,[2,29,29]) .empty)) (4491,[3,3,499]) (.node (.node (.node .empty (1683,[3,3,11,17]) .empty) (7301,[7,7,149]) .empty) (1684,[2,2,421]) (.node .empty (7302,[2,3,1217]) .empty))) (4494,[2,3,7,107]) (.node (.node (.node (.node .empty (1685,[5,337]) .empty) (4495,[5,29,31]) .empty) (1686,[2,3,281]) (.node (.node .empty (4496,[2,2,2,2,281]) .empty) (1687,[7,241]) .empty)) (1688,[2,2,2,211]) (.node (.node (.node .empty (4497,[3,1499]) .empty) (4498,[2,13,173]) .empty) (1689,[3,563]) (.node .empty (1690,[2,5,13,13]) .empty)))))
theorem part0022_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 3338 3381 part0022 := by
  change part0022.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 3338 3381 = true
  decide +kernel

def part0023 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (7309,[7309]) .empty) (1691,[19,89]) .empty) (7310,[2,5,17,43]) (.node (.node .empty (1692,[2,2,3,3,47]) .empty) (1693,[1693]) .empty)) (7311,[3,2437]) (.node (.node (.node .empty (4503,[3,19,79]) .empty) (1694,[2,7,11,11]) .empty) (1695,[3,5,113]) (.node .empty (7313,[71,103]) .empty))) (0,[]) (.node (.node (.node (.node .empty (0,[]) .empty) (1697,[1697]) .empty) (4506,[2,3,751]) (.node (.node .empty (4507,[4507]) .empty) (1698,[2,3,283]) .empty)) (1699,[1699]) (.node (.node (.node .empty (4508,[2,2,7,7,23]) .empty) (7318,[2,3659]) .empty) (1700,[2,2,5,5,17]) (.node .empty (4510,[2,5,11,41]) .empty)))) (1701,[3,3,3,3,3,7]) (.node (.node (.node (.node (.node .empty (4511,[13,347]) .empty) (1702,[2,23,37]) .empty) (1703,[13,131]) (.node (.node .empty (4512,[2,2,2,2,2,3,47]) .empty) (4513,[4513]) .empty)) (1704,[2,2,2,3,71]) (.node (.node (.node .empty (1705,[5,11,31]) .empty) (4514,[2,37,61]) .empty) (1706,[2,853]) (.node .empty (4515,[3,5,7,43]) .empty))) (4516,[2,2,1129]) (.node (.node (.node (.node .empty (1707,[3,569]) .empty) (4517,[4517]) .empty) (1708,[2,2,7,61]) (.node (.node .empty (1709,[1709]) .empty) (4518,[2,3,3,251]) .empty)) (1710,[2,3,3,5,19]) (.node (.node (.node .empty (24182,[2,107,113]) .empty) (7329,[3,7,349]) .empty) (1711,[29,59]) (.node .empty (1712,[2,2,2,2,107]) .empty)))))
theorem part0023_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 3382 3425 part0023 := by
  change part0023.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 3382 3425 = true
  decide +kernel

def part0024 : CertificateTree FactoredPoint := .node part0022 (4499,[11,409]) part0023
theorem part0024_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 3338 3425 part0024 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 3338 3425
    part0022 part0023 (4499,[11,409]) (by decide +kernel) part0022_valid
    (by decide +kernel) part0023_valid

def part0025 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (4522,[2,7,17,19]) .empty) (1713,[3,571]) .empty) (1714,[2,857]) (.node (.node .empty (7332,[2,2,3,13,47]) .empty) (7333,[7333]) .empty)) (1715,[5,7,7,7]) (.node (.node (.node .empty (10143,[3,3,7,7,23]) .empty) (1716,[2,2,3,11,13]) .empty) (7335,[3,3,5,163]) (.node .empty (1717,[17,101]) .empty))) (1718,[2,859]) (.node (.node (.node (.node .empty (4527,[3,3,503]) .empty) (4528,[2,2,2,2,283]) .empty) (1719,[3,3,191]) (.node (.node .empty (15765,[3,5,1051]) .empty) (1720,[2,2,2,5,43]) .empty)) (1721,[1721]) (.node (.node (.node .empty (7339,[41,179]) .empty) (1722,[2,3,7,41]) .empty) (4531,[23,197]) (.node .empty (1723,[1723]) .empty)))) (4532,[2,2,11,103]) (.node (.node (.node (.node (.node .empty (1724,[2,2,431]) .empty) (4533,[3,1511]) .empty) (1725,[3,5,5,23]) (.node (.node .empty (7343,[7,1049]) .empty) (1726,[2,863]) .empty)) (4535,[5,907]) (.node (.node (.node .empty (10154,[2,5077]) .empty) (1727,[11,157]) .empty) (1728,[2,2,2,2,2,2,3,3,3]) (.node .empty (12964,[2,2,7,463]) .empty))) (4538,[2,2269]) (.node (.node (.node (.node .empty (1729,[7,13,19]) .empty) (4539,[3,17,89]) .empty) (1730,[2,5,173]) (.node (.node .empty (7349,[7349]) .empty) (1731,[3,577]) .empty)) (1732,[2,2,433]) (.node (.node (.node .empty (4541,[19,239]) .empty) (1733,[1733]) .empty) (4542,[2,3,757]) (.node .empty (4543,[7,11,59]) .empty)))))
theorem part0025_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 3426 3469 part0025 := by
  change part0025.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 3426 3469 = true
  decide +kernel

def part0026 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (4544,[2,2,2,2,2,2,71]) .empty) (1735,[5,347]) .empty) (4545,[3,3,5,101]) (.node (.node .empty (1736,[2,2,2,7,31]) .empty) (4546,[2,2273]) .empty)) (1737,[3,3,193]) (.node (.node (.node .empty (4547,[4547]) .empty) (1738,[2,11,79]) .empty) (12975,[3,5,5,173]) (.node .empty (1739,[37,47]) .empty))) (1740,[2,2,3,5,29]) (.node (.node (.node (.node .empty (10167,[3,3389]) .empty) (1741,[1741]) .empty) (4550,[2,5,5,7,13]) (.node (.node .empty (1742,[2,13,67]) .empty) (7360,[2,2,2,2,2,2,5,23]) .empty)) (1743,[3,7,83]) (.node (.node (.node .empty (7361,[17,433]) .empty) (1744,[2,2,2,2,109]) .empty) (4553,[29,157]) (.node .empty (4554,[2,3,3,11,23]) .empty)))) (1745,[5,349]) (.node (.node (.node (.node (.node .empty (12982,[2,6491]) .empty) (1746,[2,3,3,97]) .empty) (1747,[1747]) (.node (.node .empty (4556,[2,2,17,67]) .empty) (4557,[3,7,7,31]) .empty)) (1748,[2,2,19,23]) (.node (.node (.node .empty (0,[]) .empty) (0,[]) .empty) (10177,[10177]) (.node .empty (1750,[2,5,5,5,7]) .empty))) (4560,[2,2,2,2,3,5,19]) (.node (.node (.node (.node .empty (1751,[17,103]) .empty) (4561,[4561]) .empty) (1752,[2,2,2,3,73]) (.node .empty (1753,[1753]) .empty)) (7371,[3,3,3,3,7,13]) (.node (.node (.node .empty (1754,[2,877]) .empty) (7372,[2,2,19,97]) .empty) (21418,[2,10709]) (.node .empty (1755,[3,3,3,5,13]) .empty)))))
theorem part0026_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 3470 3512 part0026 := by
  change part0026.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 3470 3512 = true
  decide +kernel

def part0027 : CertificateTree FactoredPoint := .node part0025 (1734,[2,3,17,17]) part0026
theorem part0027_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 3426 3512 part0027 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 3426 3512
    part0025 part0026 (1734,[2,3,17,17]) (by decide +kernel) part0025_valid
    (by decide +kernel) part0026_valid

def part0028 : CertificateTree FactoredPoint := .node part0024 (7330,[2,5,733]) part0027
theorem part0028_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 3338 3512 part0028 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 3338 3512
    part0024 part0027 (7330,[2,5,733]) (by decide +kernel) part0024_valid
    (by decide +kernel) part0027_valid

def part0029 : CertificateTree FactoredPoint := .node part0021 (1668,[2,2,3,139]) part0028
theorem part0029_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 3162 3512 part0029 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 3162 3512
    part0021 part0028 (1668,[2,2,3,139]) (by decide +kernel) part0021_valid
    (by decide +kernel) part0028_valid

def part0030 : CertificateTree FactoredPoint := .node part0014 (1580,[2,2,5,79]) part0029
theorem part0030_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2810 3512 part0030 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 2810 3512
    part0014 part0029 (1580,[2,2,5,79]) (by decide +kernel) part0014_valid
    (by decide +kernel) part0029_valid

def part0031 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (7374,[2,3,1229]) .empty) (12993,[3,61,71]) .empty) (1757,[7,251]) (.node (.node .empty (4567,[4567]) .empty) (1758,[2,3,293]) .empty)) (1759,[1759]) (.node (.node (.node .empty (7377,[3,2459]) .empty) (7378,[2,7,17,31]) .empty) (1760,[2,2,2,2,2,5,11]) (.node .empty (21424,[2,2,2,2,13,103]) .empty))) (1761,[3,587]) (.node (.node (.node (.node .empty (1762,[2,881]) .empty) (4571,[7,653]) .empty) (12999,[3,7,619]) (.node (.node .empty (1763,[41,43]) .empty) (7382,[2,3691]) .empty)) (1764,[2,2,3,3,7,7]) (.node (.node (.node .empty (4574,[2,2287]) .empty) (1765,[5,353]) .empty) (1766,[2,883]) (.node .empty (15811,[97,163]) .empty)))) (1767,[3,19,31]) (.node (.node (.node (.node (.node .empty (10194,[2,3,1699]) .empty) (1768,[2,2,2,13,17]) .empty) (4577,[23,199]) (.node (.node .empty (4578,[2,3,7,109]) .empty) (1769,[29,61]) .empty)) (1770,[2,3,5,59]) (.node (.node (.node .empty (4579,[19,241]) .empty) (1771,[7,11,23]) .empty) (4580,[2,2,5,229]) (.node .empty (1772,[2,2,443]) .empty))) (4581,[3,3,509]) (.node (.node (.node (.node .empty (10200,[2,2,2,3,5,5,17]) .empty) (1773,[3,3,197]) .empty) (1774,[2,887]) (.node (.node .empty (13010,[2,5,1301]) .empty) (7393,[7393]) .empty)) (1775,[5,5,71]) (.node (.node (.node .empty (4585,[5,7,131]) .empty) (1776,[2,2,2,2,3,37]) .empty) (1777,[1777]) (.node .empty (7395,[3,5,17,29]) .empty)))))
theorem part0031_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 3513 3556 part0031 := by
  change part0031.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 3513 3556 = true
  decide +kernel

def part0032 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1778,[2,7,127]) .empty) (7397,[13,569]) .empty) (1779,[3,593]) (.node (.node .empty (4589,[13,353]) .empty) (1780,[2,2,5,89]) .empty)) (1781,[13,137]) (.node (.node (.node .empty (7399,[7,7,151]) .empty) (4591,[4591]) .empty) (1782,[2,3,3,3,3,11]) (.node .empty (1783,[1783]) .empty))) (4592,[2,2,2,2,7,41]) (.node (.node (.node (.node .empty (1784,[2,2,2,223]) .empty) (4593,[3,1531]) .empty) (4594,[2,2297]) (.node (.node .empty (1785,[3,5,7,17]) .empty) (27067,[27067]) .empty)) (1786,[2,19,47]) (.node (.node (.node .empty (1787,[1787]) .empty) (4596,[2,2,3,383]) .empty) (4597,[4597]) (.node .empty (1788,[2,2,3,149]) .empty)))) (1789,[1789]) (.node (.node (.node (.node (.node .empty (4598,[2,11,11,19]) .empty) (4599,[3,3,7,73]) .empty) (1790,[2,5,179]) (.node (.node .empty (29881,[29881]) .empty) (1791,[3,3,199]) .empty)) (1792,[2,2,2,2,2,2,2,2,7]) (.node (.node (.node .empty (4601,[43,107]) .empty) (7411,[7411]) .empty) (1793,[11,163]) (.node .empty (4603,[4603]) .empty))) (1794,[2,3,13,23]) (.node (.node (.node (.node .empty (4604,[2,2,1151]) .empty) (1795,[5,359]) .empty) (1796,[2,2,449]) (.node (.node .empty (7414,[2,11,337]) .empty) (13033,[13033]) .empty)) (1797,[3,599]) (.node (.node (.node .empty (18652,[2,2,4663]) .empty) (1798,[2,29,31]) .empty) (4608,[2,2,2,2,2,2,2,2,2,3,3]) (.node .empty (1799,[7,257]) .empty)))))
theorem part0032_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 3557 3600 part0032 := by
  change part0032.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 3557 3600 = true
  decide +kernel

def part0033 : CertificateTree FactoredPoint := .node part0031 (4587,[3,11,139]) part0032
theorem part0033_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 3513 3600 part0033 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 3513 3600
    part0031 part0032 (4587,[3,11,139]) (by decide +kernel) part0031_valid
    (by decide +kernel) part0032_valid

def part0034 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1800,[2,2,2,3,3,5,5]) .empty) (1801,[1801]) .empty) (4610,[2,5,461]) (.node (.node .empty (0,[]) .empty) (0,[]) .empty)) (4612,[2,2,1153]) (.node (.node (.node .empty (1803,[3,601]) .empty) (10231,[13,787]) .empty) (1804,[2,2,11,41]) (.node .empty (7423,[13,571]) .empty))) (1805,[5,19,19]) (.node (.node (.node (.node .empty (1806,[2,3,7,43]) .empty) (4615,[5,13,71]) .empty) (1807,[13,139]) (.node (.node .empty (15852,[2,2,3,1321]) .empty) (1808,[2,2,2,2,113]) .empty)) (4617,[3,3,3,3,3,19]) (.node (.node (.node .empty (4618,[2,2309]) .empty) (1809,[3,3,3,67]) .empty) (18664,[2,2,2,2333]) (.node .empty (1810,[2,5,181]) .empty)))) (1811,[1811]) (.node (.node (.node (.node (.node .empty (4620,[2,2,3,5,7,11]) .empty) (4621,[4621]) .empty) (1812,[2,2,3,151]) (.node (.node .empty (4622,[2,2311]) .empty) (1813,[7,7,37]) .empty)) (1814,[2,907]) (.node (.node (.node .empty (21477,[3,7159]) .empty) (1815,[3,5,11,11]) .empty) (10242,[2,3,3,569]) (.node .empty (1816,[2,2,2,227]) .empty))) (4625,[5,5,5,37]) (.node (.node (.node (.node .empty (10244,[2,2,13,197]) .empty) (1817,[23,79]) .empty) (7436,[2,2,11,13,13]) (.node (.node .empty (1818,[2,3,3,101]) .empty) (4628,[2,2,13,89]) .empty)) (1819,[17,107]) (.node (.node (.node .empty (7438,[2,3719]) .empty) (1820,[2,2,5,7,13]) .empty) (10248,[2,2,2,3,7,61]) (.node .empty (1821,[3,607]) .empty)))))
theorem part0034_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 3601 3644 part0034 := by
  change part0034.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 3601 3644 = true
  decide +kernel

def part0035 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (4631,[11,421]) .empty) (1823,[1823]) .empty) (4632,[2,2,2,3,193]) (.node (.node .empty (7442,[2,61,61]) .empty) (1824,[2,2,2,2,2,3,19]) .empty)) (15870,[2,3,5,23,23]) (.node (.node (.node .empty (1825,[5,5,73]) .empty) (4635,[3,3,5,103]) .empty) (1826,[2,11,83]) (.node .empty (1827,[3,3,7,29]) .empty))) (4636,[2,2,19,61]) (.node (.node (.node (.node .empty (1828,[2,2,457]) .empty) (13064,[2,2,2,23,71]) .empty) (10256,[2,2,2,2,641]) (.node (.node .empty (1829,[31,59]) .empty) (1830,[2,3,5,61]) .empty)) (7448,[2,2,2,7,7,19]) (.node (.node (.node .empty (1831,[1831]) .empty) (4640,[2,2,2,2,2,5,29]) .empty) (1832,[2,2,2,229]) (.node .empty (7450,[2,5,5,149]) .empty)))) (7451,[7451]) (.node (.node (.node (.node (.node .empty (1833,[3,13,47]) .empty) (4643,[4643]) .empty) (1834,[2,7,131]) (.node (.node .empty (27116,[2,2,6779]) .empty) (1835,[5,367]) .empty)) (7454,[2,3727]) (.node (.node (.node .empty (1836,[2,2,3,3,3,17]) .empty) (10264,[2,2,2,1283]) .empty) (1837,[11,167]) (.node .empty (1838,[2,919]) .empty))) (4647,[3,1549]) (.node (.node (.node (.node .empty (7457,[7457]) .empty) (1839,[3,613]) .empty) (4649,[4649]) (.node (.node .empty (1840,[2,2,2,2,5,23]) .empty) (4650,[2,3,5,5,31]) .empty)) (1841,[7,263]) (.node (.node (.node .empty (4651,[4651]) .empty) (1842,[2,3,307]) .empty) (4652,[2,2,1163]) (.node .empty (1843,[19,97]) .empty)))))
theorem part0035_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 3645 3688 part0035 := by
  change part0035.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 3645 3688 = true
  decide +kernel

def part0036 : CertificateTree FactoredPoint := .node part0034 (1822,[2,911]) part0035
theorem part0036_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 3601 3688 part0036 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 3601 3688
    part0034 part0035 (1822,[2,911]) (by decide +kernel) part0034_valid
    (by decide +kernel) part0035_valid

def part0037 : CertificateTree FactoredPoint := .node part0033 (7418,[2,3709]) part0036
theorem part0037_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 3513 3688 part0037 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 3513 3688
    part0033 part0036 (7418,[2,3709]) (by decide +kernel) part0033_valid
    (by decide +kernel) part0036_valid

def part0038 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (7462,[2,7,13,41]) .empty) (1845,[3,3,5,41]) .empty) (7463,[17,439]) (.node (.node .empty (1846,[2,13,71]) .empty) (7464,[2,2,2,3,311]) .empty)) (1847,[1847]) (.node (.node (.node .empty (4656,[2,2,2,2,3,97]) .empty) (1848,[2,2,2,3,7,11]) .empty) (15893,[23,691]) (.node .empty (1849,[43,43]) .empty))) (4658,[2,17,137]) (.node (.node (.node (.node .empty (7468,[2,2,1867]) .empty) (1850,[2,5,5,37]) .empty) (7469,[7,11,97]) (.node (.node .empty (1851,[3,617]) .empty) (1852,[2,2,463]) .empty)) (4661,[59,79]) (.node (.node (.node .empty (4662,[2,3,3,7,37]) .empty) (1853,[17,109]) .empty) (4663,[4663]) (.node .empty (1854,[2,3,3,103]) .empty)))) (0,[]) (.node (.node (.node (.node (.node .empty (0,[]) .empty) (1856,[2,2,2,2,2,2,29]) .empty) (7474,[2,37,101]) (.node (.node .empty (4666,[2,2333]) .empty) (1857,[3,619]) .empty)) (1858,[2,929]) (.node (.node (.node .empty (27139,[7,3877]) .empty) (1859,[11,13,13]) .empty) (4668,[2,2,3,389]) (.node .empty (1860,[2,2,3,5,31]) .empty))) (10287,[3,3,3,3,127]) (.node (.node (.node (.node .empty (1861,[1861]) .empty) (4670,[2,5,467]) .empty) (7480,[2,2,2,5,11,17]) (.node (.node .empty (1862,[2,7,7,19]) .empty) (4672,[2,2,2,2,2,2,73]) .empty)) (1863,[3,3,3,3,23]) (.node (.node (.node .empty (1864,[2,2,2,233]) .empty) (10291,[41,251]) .empty) (4674,[2,3,19,41]) (.node .empty (1865,[5,373]) .empty)))))
theorem part0038_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 3689 3732 part0038 := by
  change part0038.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 3689 3732 = true
  decide +kernel

def part0039 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1866,[2,3,311]) .empty) (1867,[1867]) .empty) (4676,[2,2,7,167]) (.node (.node .empty (1868,[2,2,467]) .empty) (4677,[3,1559]) .empty)) (1869,[3,7,89]) (.node (.node (.node .empty (10296,[2,2,2,3,3,11,13]) .empty) (1870,[2,5,11,17]) .empty) (10297,[7,1471]) (.node .empty (1871,[1871]) .empty))) (4680,[2,2,2,3,3,5,13]) (.node (.node (.node (.node .empty (1872,[2,2,2,2,3,3,13]) .empty) (4681,[31,151]) .empty) (1873,[1873]) (.node (.node .empty (10300,[2,2,5,5,103]) .empty) (1874,[2,937]) .empty)) (13110,[2,3,5,19,23]) (.node (.node (.node .empty (4684,[2,2,1171]) .empty) (1875,[3,5,5,5,5]) .empty) (10303,[10303]) (.node .empty (1876,[2,2,7,67]) .empty)))) (1877,[1877]) (.node (.node (.node (.node (.node .empty (7495,[5,1499]) .empty) (7496,[2,2,2,937]) .empty) (1878,[2,3,313]) (.node (.node .empty (1879,[1879]) .empty) (15924,[2,2,3,1327]) .empty)) (18734,[2,17,19,29]) (.node (.node (.node .empty (1880,[2,2,2,5,47]) .empty) (1881,[3,3,11,19]) .empty) (10308,[2,2,3,859]) (.node .empty (1882,[2,941]) .empty))) (7500,[2,2,3,5,5,5,5]) (.node (.node (.node (.node .empty (4692,[2,2,3,17,23]) .empty) (1883,[7,269]) .empty) (4693,[13,19,19]) (.node (.node .empty (1884,[2,2,3,157]) .empty) (4694,[2,2347]) .empty)) (1885,[5,13,29]) (.node (.node (.node .empty (4695,[3,5,313]) .empty) (1886,[2,23,41]) .empty) (1887,[3,17,37]) (.node .empty (10314,[2,3,3,3,191]) .empty)))))
theorem part0039_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 3733 3776 part0039 := by
  change part0039.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 3733 3776 = true
  decide +kernel

def part0040 : CertificateTree FactoredPoint := .node part0038 (4675,[5,5,11,17]) part0039
theorem part0040_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 3689 3776 part0040 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 3689 3776
    part0038 part0039 (4675,[5,5,11,17]) (by decide +kernel) part0038_valid
    (by decide +kernel) part0039_valid

def part0041 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (7506,[2,3,3,3,139]) .empty) (1889,[1889]) .empty) (4698,[2,3,3,3,3,29]) (.node (.node .empty (1890,[2,3,3,3,5,7]) .empty) (4699,[37,127]) .empty)) (10318,[2,7,11,67]) (.node (.node (.node .empty (1891,[31,61]) .empty) (15937,[15937]) .empty) (1892,[2,2,11,43]) (.node .empty (4702,[2,2351]) .empty))) (1893,[3,631]) (.node (.node (.node (.node .empty (1894,[2,947]) .empty) (7512,[2,2,2,3,313]) .empty) (10322,[2,13,397]) (.node (.node .empty (1895,[5,379]) .empty) (7514,[2,13,17,17]) .empty)) (1896,[2,2,2,3,79]) (.node (.node (.node .empty (4706,[2,13,181]) .empty) (1897,[7,271]) .empty) (1898,[2,13,73]) (.node .empty (4707,[3,3,523]) .empty)))) (7517,[7517]) (.node (.node (.node (.node (.node .empty (1899,[3,3,211]) .empty) (7518,[2,3,7,179]) .empty) (1900,[2,2,5,5,19]) (.node (.node .empty (1901,[1901]) .empty) (7519,[73,103]) .empty)) (10329,[3,11,313]) (.node (.node (.node .empty (1902,[2,3,317]) .empty) (7521,[3,23,109]) .empty) (1903,[11,173]) (.node .empty (7522,[2,3761]) .empty))) (1904,[2,2,2,2,7,17]) (.node (.node (.node (.node .empty (1905,[3,5,127]) .empty) (13141,[17,773]) .empty) (1906,[2,953]) (.node (.node .empty (15951,[3,13,409]) .empty) (1907,[1907]) .empty)) (4716,[2,2,3,3,131]) (.node (.node (.node .empty (0,[]) .empty) (0,[]) .empty) (13145,[5,11,239]) (.node .empty (1909,[23,83]) .empty)))))
theorem part0041_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 3777 3820 part0041 := by
  change part0041.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 3777 3820 = true
  decide +kernel

def part0042 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1910,[2,5,191]) .empty) (7529,[7529]) .empty) (1911,[3,7,7,13]) (.node (.node .empty (1912,[2,2,2,239]) .empty) (10339,[7,7,211]) .empty)) (1913,[1913]) (.node (.node (.node .empty (4722,[2,3,787]) .empty) (1914,[2,3,11,29]) .empty) (7532,[2,2,7,269]) (.node .empty (4724,[2,2,1181]) .empty))) (1915,[5,383]) (.node (.node (.node (.node .empty (1916,[2,2,479]) .empty) (13152,[2,2,2,2,2,3,137]) .empty) (7535,[5,11,137]) (.node (.node .empty (1917,[3,3,3,71]) .empty) (13154,[2,6577]) .empty)) (1918,[2,7,137]) (.node (.node (.node .empty (7537,[7537]) .empty) (1919,[19,101]) .empty) (4729,[4729]) (.node .empty (1920,[2,2,2,2,2,2,2,3,5]) .empty)))) (4730,[2,5,11,43]) (.node (.node (.node (.node (.node .empty (1921,[17,113]) .empty) (1922,[2,31,31]) .empty) (7540,[2,2,5,13,29]) (.node (.node .empty (4732,[2,2,7,13,13]) .empty) (1923,[3,641]) .empty)) (1924,[2,2,13,37]) (.node (.node (.node .empty (7542,[2,3,3,419]) .empty) (1925,[5,5,7,11]) .empty) (4734,[2,3,3,263]) (.node .empty (13162,[2,6581]) .empty))) (1926,[2,3,3,107]) (.node (.node (.node (.node .empty (4736,[2,2,2,2,2,2,2,37]) .empty) (1927,[41,47]) .empty) (1928,[2,2,2,241]) (.node .empty (4737,[3,1579]) .empty)) (7547,[7547]) (.node (.node (.node .empty (1929,[3,643]) .empty) (7548,[2,2,3,17,37]) .empty) (1930,[2,5,193]) (.node .empty (1931,[1931]) .empty)))))
theorem part0042_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 3821 3863 part0042 := by
  change part0042.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 3821 3863 = true
  decide +kernel

def part0043 : CertificateTree FactoredPoint := .node part0041 (7528,[2,2,2,941]) part0042
theorem part0043_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 3777 3863 part0043 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 3777 3863
    part0041 part0042 (7528,[2,2,2,941]) (by decide +kernel) part0041_valid
    (by decide +kernel) part0042_valid

def part0044 : CertificateTree FactoredPoint := .node part0040 (1888,[2,2,2,2,2,59]) part0043
theorem part0044_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 3689 3863 part0044 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 3689 3863
    part0040 part0043 (1888,[2,2,2,2,2,59]) (by decide +kernel) part0040_valid
    (by decide +kernel) part0043_valid

def part0045 : CertificateTree FactoredPoint := .node part0037 (1844,[2,2,461]) part0044
theorem part0045_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 3513 3863 part0045 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 3513 3863
    part0037 part0044 (1844,[2,2,461]) (by decide +kernel) part0037_valid
    (by decide +kernel) part0044_valid

def part0046 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1932,[2,2,3,7,23]) .empty) (4741,[11,431]) .empty) (1933,[1933]) (.node (.node .empty (7551,[3,3,839]) .empty) (1934,[2,967]) .empty)) (15979,[19,29,29]) (.node (.node (.node .empty (1935,[3,3,5,43]) .empty) (7553,[7,13,83]) .empty) (1936,[2,2,2,2,11,11]) (.node .empty (4745,[5,13,73]) .empty))) (1937,[13,149]) (.node (.node (.node (.node .empty (7555,[5,1511]) .empty) (1938,[2,3,17,19]) .empty) (4747,[47,101]) (.node (.node .empty (4748,[2,2,1187]) .empty) (1939,[7,277]) .empty)) (7558,[2,3779]) (.node (.node (.node .empty (1940,[2,2,5,97]) .empty) (7559,[7559]) .empty) (1941,[3,647]) (.node .empty (1942,[2,971]) .empty)))) (13178,[2,11,599]) (.node (.node (.node (.node (.node .empty (7561,[7561]) .empty) (1943,[29,67]) .empty) (1944,[2,2,2,3,3,3,3,3]) (.node (.node .empty (4753,[7,7,97]) .empty) (4754,[2,2377]) .empty)) (1945,[5,389]) (.node (.node (.node .empty (4755,[3,5,317]) .empty) (1946,[2,7,139]) .empty) (1947,[3,11,59]) (.node .empty (4756,[2,2,29,41]) .empty))) (1948,[2,2,487]) (.node (.node (.node (.node .empty (4757,[67,71]) .empty) (1949,[1949]) .empty) (4758,[2,3,13,61]) (.node (.node .empty (4759,[4759]) .empty) (1950,[2,3,5,5,13]) .empty)) (1951,[1951]) (.node (.node (.node .empty (7569,[3,3,29,29]) .empty) (1952,[2,2,2,2,2,61]) .empty) (4761,[3,3,23,23]) (.node .empty (1953,[3,3,7,31]) .empty)))))
theorem part0046_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 3864 3907 part0046 := by
  change part0046.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 3864 3907 = true
  decide +kernel

def part0047 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1954,[2,977]) .empty) (4763,[11,433]) .empty) (1955,[5,17,23]) (.node (.node .empty (4764,[2,2,3,397]) .empty) (16001,[16001]) .empty)) (1956,[2,2,3,163]) (.node (.node (.node .empty (4766,[2,2383]) .empty) (1957,[19,103]) .empty) (4767,[3,7,227]) (.node .empty (1958,[2,11,89]) .empty))) (4768,[2,2,2,2,2,149]) (.node (.node (.node (.node .empty (1959,[3,653]) .empty) (13196,[2,2,3299]) .empty) (1960,[2,2,2,5,7,7]) (.node (.node .empty (0,[]) .empty) (0,[]) .empty)) (4771,[13,367]) (.node (.node (.node .empty (1962,[2,3,3,109]) .empty) (1963,[13,151]) .empty) (10390,[2,5,1039]) (.node .empty (1964,[2,2,491]) .empty)))) (7582,[2,17,223]) (.node (.node (.node (.node (.node .empty (1965,[3,5,131]) .empty) (10392,[2,2,2,3,433]) .empty) (1966,[2,983]) (.node (.node .empty (4775,[5,5,191]) .empty) (7585,[5,37,41]) .empty)) (1967,[7,281]) (.node (.node (.node .empty (7586,[2,3793]) .empty) (1968,[2,2,2,2,3,41]) .empty) (4778,[2,2389]) (.node .empty (1969,[11,179]) .empty))) (13206,[2,3,31,71]) (.node (.node (.node (.node .empty (1970,[2,5,197]) .empty) (7589,[7589]) .empty) (1971,[3,3,3,73]) (.node (.node .empty (10399,[10399]) .empty) (1972,[2,2,17,29]) .empty)) (1973,[1973]) (.node (.node (.node .empty (4782,[2,3,797]) .empty) (1974,[2,3,7,47]) .empty) (10401,[3,3467]) (.node .empty (4784,[2,2,2,2,13,23]) .empty)))))
theorem part0047_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 3908 3951 part0047 := by
  change part0047.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 3908 3951 = true
  decide +kernel

def part0048 : CertificateTree FactoredPoint := .node part0046 (7571,[67,113]) part0047
theorem part0048_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 3864 3951 part0048 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 3864 3951
    part0046 part0047 (7571,[67,113]) (by decide +kernel) part0046_valid
    (by decide +kernel) part0047_valid

def part0049 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (1976,[2,2,2,13,19]) .empty) (4785,[3,5,11,29]) .empty) (4786,[2,2393]) (.node (.node .empty (1977,[3,659]) .empty) (4787,[4787]) .empty)) (1978,[2,23,43]) (.node (.node (.node .empty (1979,[1979]) .empty) (7597,[71,107]) .empty) (1980,[2,2,3,3,5,11]) (.node .empty (7598,[2,29,131]) .empty))) (7599,[3,17,149]) (.node (.node (.node (.node .empty (1981,[7,283]) .empty) (1982,[2,991]) .empty) (4791,[3,1597]) (.node (.node .empty (4792,[2,2,2,599]) .empty) (1983,[3,661]) .empty)) (1984,[2,2,2,2,2,2,31]) (.node (.node (.node .empty (10411,[29,359]) .empty) (4794,[2,3,17,47]) .empty) (1985,[5,397]) (.node .empty (4795,[5,7,137]) .empty)))) (1986,[2,3,331]) (.node (.node (.node (.node (.node .empty (1987,[1987]) .empty) (4796,[2,2,11,109]) .empty) (7606,[2,3803]) (.node (.node .empty (1988,[2,2,7,71]) .empty) (4798,[2,2399]) .empty)) (1989,[3,3,13,17]) (.node (.node (.node .empty (4799,[4799]) .empty) (1990,[2,5,199]) .empty) (10418,[2,5209]) (.node .empty (1991,[11,181]) .empty))) (4801,[4801]) (.node (.node (.node (.node .empty (1992,[2,2,2,3,83]) .empty) (1993,[1993]) .empty) (10420,[2,2,5,521]) (.node (.node .empty (1994,[2,997]) .empty) (4803,[3,1601]) .empty)) (4804,[2,2,1201]) (.node (.node (.node .empty (1995,[3,5,7,19]) .empty) (1996,[2,2,499]) .empty) (4805,[5,31,31]) (.node .empty (1997,[1997]) .empty)))))
theorem part0049_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 3952 3995 part0049 := by
  change part0049.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 3952 3995 = true
  decide +kernel

def part0050 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (4807,[11,19,23]) .empty) (1998,[2,3,3,3,37]) .empty) (1999,[1999]) (.node (.node .empty (7617,[3,2539]) .empty) (2000,[2,2,2,2,5,5,5]) .empty)) (13236,[2,2,3,1103]) (.node (.node (.node .empty (2001,[3,23,29]) .empty) (4810,[2,5,13,37]) .empty) (7620,[2,2,3,5,127]) (.node .empty (2002,[2,7,11,13]) .empty))) (2003,[2003]) (.node (.node (.node (.node .empty (4812,[2,2,3,401]) .empty) (4813,[4813]) .empty) (2004,[2,2,3,167]) (.node (.node .empty (7623,[3,3,7,11,11]) .empty) (2005,[5,401]) .empty)) (4815,[3,3,5,107]) (.node (.node (.node .empty (2006,[2,17,59]) .empty) (10434,[2,3,37,47]) .empty) (2007,[3,3,223]) (.node .empty (2008,[2,2,2,251]) .empty)))) (10435,[5,2087]) (.node (.node (.node (.node (.node .empty (4818,[2,3,11,73]) .empty) (2009,[7,7,41]) .empty) (2010,[2,3,5,67]) (.node (.node .empty (4819,[61,79]) .empty) (2011,[2011]) .empty)) (4820,[2,2,5,241]) (.node (.node (.node .empty (2012,[2,2,503]) .empty) (4821,[3,1607]) .empty) (2013,[3,11,61]) (.node .empty (27294,[2,3,4549]) .empty))) (0,[]) (.node (.node (.node (.node .empty (0,[]) .empty) (13251,[3,7,631]) .empty) (2015,[5,13,31]) (.node (.node .empty (13252,[2,2,3313]) .empty) (2016,[2,2,2,2,2,3,3,7]) .empty)) (2017,[2017]) (.node (.node (.node .empty (4826,[2,19,127]) .empty) (2018,[2,1009]) .empty) (4827,[3,1609]) (.node .empty (13255,[5,11,241]) .empty)))))
theorem part0050_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 3996 4039 part0050 := by
  change part0050.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 3996 4039 = true
  decide +kernel

def part0051 : CertificateTree FactoredPoint := .node part0049 (4806,[2,3,3,3,89]) part0050
theorem part0051_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 3952 4039 part0051 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 3952 4039
    part0049 part0050 (4806,[2,3,3,3,89]) (by decide +kernel) part0049_valid
    (by decide +kernel) part0050_valid

def part0052 : CertificateTree FactoredPoint := .node part0048 (1975,[5,5,79]) part0051
theorem part0052_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 3864 4039 part0052 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 3864 4039
    part0048 part0051 (1975,[5,5,79]) (by decide +kernel) part0048_valid
    (by decide +kernel) part0051_valid

def part0053 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (7638,[2,3,19,67]) .empty) (2020,[2,2,5,101]) .empty) (7639,[7639]) (.node (.node .empty (2021,[43,47]) .empty) (4831,[4831]) .empty)) (2022,[2,3,337]) (.node (.node (.node .empty (4832,[2,2,2,2,2,151]) .empty) (2023,[7,17,17]) .empty) (7642,[2,3821]) (.node .empty (2024,[2,2,2,11,23]) .empty))) (4834,[2,2417]) (.node (.node (.node (.node .empty (2025,[3,3,3,3,5,5]) .empty) (2026,[2,1013]) .empty) (4835,[5,967]) (.node (.node .empty (2027,[2027]) .empty) (4836,[2,2,3,13,31]) .empty)) (2028,[2,2,3,13,13]) (.node (.node (.node .empty (4837,[7,691]) .empty) (2029,[2029]) .empty) (4838,[2,41,59]) (.node .empty (2030,[2,5,7,29]) .empty)))) (4839,[3,1613]) (.node (.node (.node (.node (.node .empty (7649,[7649]) .empty) (2031,[3,677]) .empty) (2032,[2,2,2,2,127]) (.node (.node .empty (4841,[47,103]) .empty) (16078,[2,8039]) .empty)) (2033,[19,107]) (.node (.node (.node .empty (7652,[2,2,1913]) .empty) (2034,[2,3,3,113]) .empty) (2035,[5,11,37]) (.node .empty (4844,[2,2,7,173]) .empty))) (2036,[2,2,509]) (.node (.node (.node (.node .empty (4845,[3,5,17,19]) .empty) (2037,[3,7,97]) .empty) (7655,[5,1531]) (.node (.node .empty (2038,[2,1019]) .empty) (4847,[37,131]) .empty)) (2039,[2039]) (.node (.node (.node .empty (4848,[2,2,2,2,3,101]) .empty) (2040,[2,2,2,3,5,17]) .empty) (7658,[2,7,547]) (.node .empty (2041,[13,157]) .empty)))))
theorem part0053_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4040 4083 part0053 := by
  change part0053.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 4040 4083 = true
  decide +kernel

def part0054 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (2042,[2,1021]) .empty) (7660,[2,2,5,383]) .empty) (4852,[2,2,1213]) (.node (.node .empty (2043,[3,3,227]) .empty) (16089,[3,31,173]) .empty)) (2044,[2,2,7,73]) (.node (.node (.node .empty (10472,[2,2,2,7,11,17]) .empty) (2045,[5,409]) .empty) (2046,[2,3,11,31]) (.node .empty (4855,[5,971]) .empty))) (4856,[2,2,2,607]) (.node (.node (.node (.node .empty (2047,[23,89]) .empty) (7666,[2,3833]) .empty) (2048,[2,2,2,2,2,2,2,2,2,2,2]) (.node (.node .empty (7667,[11,17,41]) .empty) (2049,[3,683]) .empty)) (10477,[10477]) (.node (.node (.node .empty (2050,[2,5,5,41]) .empty) (7669,[7669]) .empty) (2051,[7,293]) (.node .empty (4861,[4861]) .empty)))) (2052,[2,2,3,3,3,19]) (.node (.node (.node (.node (.node .empty (2053,[2053]) .empty) (4862,[2,11,13,17]) .empty) (2054,[2,13,79]) (.node (.node .empty (4863,[3,1621]) .empty) (2055,[3,5,137]) .empty)) (10482,[2,3,1747]) (.node (.node (.node .empty (2056,[2,2,2,257]) .empty) (7674,[2,3,1279]) .empty) (10484,[2,2,2621]) (.node .empty (2057,[11,11,17]) .empty))) (10485,[3,3,5,233]) (.node (.node (.node (.node .empty (2058,[2,3,7,7,7]) .empty) (4868,[2,2,1217]) .empty) (2059,[29,71]) (.node (.node .empty (10487,[10487]) .empty) (2060,[2,2,5,103]) .empty)) (10488,[2,2,2,3,19,23]) (.node (.node (.node .empty (2061,[3,3,229]) .empty) (2062,[2,1031]) .empty) (7680,[2,2,2,2,2,2,2,2,2,3,5]) (.node .empty (2063,[2063]) .empty)))))
theorem part0054_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4084 4127 part0054 := by
  change part0054.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 4084 4127 = true
  decide +kernel

def part0055 : CertificateTree FactoredPoint := .node part0053 (4850,[2,5,5,97]) part0054
theorem part0055_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4040 4127 part0055 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 4040 4127
    part0053 part0054 (4850,[2,5,5,97]) (by decide +kernel) part0053_valid
    (by decide +kernel) part0054_valid

def part0056 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (13300,[2,2,5,5,7,19]) .empty) (2064,[2,2,2,2,3,43]) .empty) (2065,[5,7,59]) (.node (.node .empty (7683,[3,13,197]) .empty) (2066,[2,1033]) .empty)) (4875,[3,5,5,5,13]) (.node (.node (.node .empty (0,[]) .empty) (0,[]) .empty) (4877,[4877]) (.node .empty (2068,[2,2,11,47]) .empty))) (2069,[2069]) (.node (.node (.node (.node .empty (4878,[2,3,3,271]) .empty) (2070,[2,3,3,5,23]) .empty) (10497,[3,3499]) (.node (.node .empty (7689,[3,11,233]) .empty) (2071,[19,109]) .empty)) (10499,[10499]) (.node (.node (.node .empty (2072,[2,2,2,7,37]) .empty) (4882,[2,2441]) .empty) (2073,[3,691]) (.node .empty (10501,[10501]) .empty)))) (2074,[2,17,61]) (.node (.node (.node (.node (.node .empty (4884,[2,2,3,11,37]) .empty) (2075,[5,5,83]) .empty) (7694,[2,3847]) (.node (.node .empty (2076,[2,2,3,173]) .empty) (7695,[3,3,3,3,5,19]) .empty)) (2077,[31,67]) (.node (.node (.node .empty (2078,[2,1039]) .empty) (4887,[3,3,3,181]) .empty) (2079,[3,3,3,7,11]) (.node .empty (7697,[43,179]) .empty))) (2080,[2,2,2,2,2,5,13]) (.node (.node (.node (.node .empty (7698,[2,3,1283]) .empty) (2081,[2081]) .empty) (10508,[2,2,37,71]) (.node (.node .empty (7700,[2,2,5,5,7,11]) .empty) (2082,[2,3,347]) .empty)) (2083,[2083]) (.node (.node (.node .empty (10510,[2,5,1051]) .empty) (2084,[2,2,521]) .empty) (10511,[23,457]) (.node .empty (2085,[3,5,139]) .empty)))))
theorem part0056_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4128 4171 part0056 := by
  change part0056.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 4128 4171 = true
  decide +kernel

def part0057 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (4895,[5,11,89]) .empty) (2086,[2,7,149]) .empty) (2087,[2087]) (.node (.node .empty (4896,[2,2,2,2,2,3,3,17]) .empty) (7706,[2,3853]) .empty)) (2088,[2,2,2,3,3,29]) (.node (.node (.node .empty (2089,[2089]) .empty) (4898,[2,31,79]) .empty) (2090,[2,5,11,19]) (.node .empty (7708,[2,2,41,47]) .empty))) (2091,[3,17,41]) (.node (.node (.node (.node .empty (4900,[2,2,5,5,7,7]) .empty) (2092,[2,2,523]) .empty) (10519,[67,157]) (.node (.node .empty (4902,[2,3,19,43]) .empty) (2093,[7,13,23]) .empty)) (4903,[4903]) (.node (.node (.node .empty (2094,[2,3,349]) .empty) (4904,[2,2,2,613]) .empty) (2095,[5,419]) (.node .empty (2096,[2,2,2,2,131]) .empty)))) (10523,[17,619]) (.node (.node (.node (.node (.node .empty (27378,[2,3,3,3,3,13,13]) .empty) (2097,[3,3,233]) .empty) (2098,[2,1049]) (.node (.node .empty (4907,[7,701]) .empty) (2099,[2099]) .empty)) (4908,[2,2,3,409]) (.node (.node (.node .empty (2100,[2,2,3,5,5,7]) .empty) (7718,[2,17,227]) .empty) (7719,[3,31,83]) (.node .empty (2101,[11,191]) .empty))) (2102,[2,1051]) (.node (.node (.node (.node .empty (4911,[3,1637]) .empty) (4912,[2,2,2,2,307]) .empty) (2103,[3,701]) (.node .empty (2104,[2,2,2,263]) .empty)) (7722,[2,3,3,3,11,13]) (.node (.node (.node .empty (7723,[7723]) .empty) (2105,[5,421]) .empty) (2106,[2,3,3,3,3,13]) (.node .empty (4915,[5,983]) .empty)))))
theorem part0057_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4172 4214 part0057 := by
  change part0057.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 4172 4214 = true
  decide +kernel

def part0058 : CertificateTree FactoredPoint := .node part0056 (10512,[2,2,2,2,3,3,73]) part0057
theorem part0058_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4128 4214 part0058 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 4128 4214
    part0056 part0057 (10512,[2,2,2,2,3,3,73]) (by decide +kernel) part0056_valid
    (by decide +kernel) part0057_valid

def part0059 : CertificateTree FactoredPoint := .node part0055 (10490,[2,5,1049]) part0058
theorem part0059_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4040 4214 part0059 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 4040 4214
    part0055 part0058 (10490,[2,5,1049]) (by decide +kernel) part0055_valid
    (by decide +kernel) part0058_valid

def part0060 : CertificateTree FactoredPoint := .node part0052 (2019,[3,673]) part0059
theorem part0060_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 3864 4214 part0060 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 3864 4214
    part0052 part0059 (2019,[3,673]) (by decide +kernel) part0052_valid
    (by decide +kernel) part0059_valid

def part0061 : CertificateTree FactoredPoint := .node part0045 (13167,[3,3,7,11,19]) part0060
theorem part0061_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 3513 4214 part0061 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 3513 4214
    part0045 part0060 (13167,[3,3,7,11,19]) (by decide +kernel) part0045_valid
    (by decide +kernel) part0060_valid

def part0062 : CertificateTree FactoredPoint := .node part0030 (1756,[2,2,439]) part0061
theorem part0062_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2810 4214 part0062 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 2810 4214
    part0030 part0061 (1756,[2,2,439]) (by decide +kernel) part0030_valid
    (by decide +kernel) part0061_valid

def part0063 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (2107,[7,7,43]) .empty) (4917,[3,11,149]) .empty) (2108,[2,2,17,31]) (.node (.node .empty (2109,[3,19,37]) .empty) (10536,[2,2,2,3,439]) .empty)) (4919,[4919]) (.node (.node (.node .empty (2110,[2,5,211]) .empty) (2111,[2111]) .empty) (7729,[59,131]) (.node .empty (4921,[7,19,37]) .empty))) (2112,[2,2,2,2,2,2,3,11]) (.node (.node (.node (.node .empty (2113,[2113]) .empty) (4922,[2,23,107]) .empty) (7732,[2,2,1933]) (.node (.node .empty (2114,[2,7,151]) .empty) (2115,[3,3,5,47]) .empty)) (16160,[2,2,2,2,2,5,101]) (.node (.node (.node .empty (2116,[2,2,23,23]) .empty) (4925,[5,5,197]) .empty) (7735,[5,7,13,17]) (.node .empty (2117,[29,73]) .empty)))) (4927,[13,379]) (.node (.node (.node (.node (.node .empty (2118,[2,3,353]) .empty) (2119,[13,163]) .empty) (4928,[2,2,2,2,2,2,7,11]) (.node (.node .empty (0,[]) .empty) (0,[]) .empty)) (2121,[3,7,101]) (.node (.node (.node .empty (7739,[71,109]) .empty) (2122,[2,1061]) .empty) (21785,[5,4357]) (.node .empty (7741,[7741]) .empty))) (2123,[11,193]) (.node (.node (.node (.node .empty (4933,[4933]) .empty) (2124,[2,2,3,3,59]) .empty) (4934,[2,2467]) (.node (.node .empty (2125,[5,5,5,17]) .empty) (2126,[2,1063]) .empty)) (4935,[3,5,7,47]) (.node (.node (.node .empty (4936,[2,2,2,617]) .empty) (2127,[3,709]) .empty) (4937,[4937]) (.node .empty (2128,[2,2,2,2,7,19]) .empty)))))
theorem part0063_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4215 4258 part0063 := by
  change part0063.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 4215 4258 = true
  decide +kernel

def part0064 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (4938,[2,3,823]) .empty) (2130,[2,3,5,71]) .empty) (4939,[11,449]) (.node (.node .empty (2131,[2131]) .empty) (4940,[2,2,5,13,19]) .empty)) (2132,[2,2,13,41]) (.node (.node (.node .empty (4941,[3,3,3,3,61]) .empty) (10560,[2,2,2,2,2,2,3,5,11]) .empty) (2133,[3,3,3,79]) (.node .empty (4943,[4943]) .empty))) (2134,[2,11,97]) (.node (.node (.node (.node .empty (2135,[5,7,61]) .empty) (4944,[2,2,2,2,3,103]) .empty) (4945,[5,23,43]) (.node (.node .empty (2136,[2,2,2,3,89]) .empty) (2137,[2137]) .empty)) (7755,[3,5,11,47]) (.node (.node (.node .empty (2138,[2,1069]) .empty) (7756,[2,2,7,277]) .empty) (2139,[3,23,31]) (.node .empty (10566,[2,3,3,587]) .empty)))) (10567,[10567]) (.node (.node (.node (.node (.node .empty (2140,[2,2,5,107]) .empty) (2141,[2141]) .empty) (13377,[3,7,7,7,13]) (.node (.node .empty (2142,[2,3,3,7,17]) .empty) (7760,[2,2,2,2,5,97]) .empty)) (2143,[2143]) (.node (.node (.node .empty (7761,[3,13,199]) .empty) (2144,[2,2,2,2,2,67]) .empty) (4953,[3,13,127]) (.node .empty (2145,[3,5,11,13]) .empty))) (7763,[7,1109]) (.node (.node (.node (.node .empty (13382,[2,6691]) .empty) (2146,[2,29,37]) .empty) (4956,[2,2,3,7,59]) (.node (.node .empty (2147,[19,113]) .empty) (4957,[4957]) .empty)) (2148,[2,2,3,179]) (.node (.node (.node .empty (10576,[2,2,2,2,661]) .empty) (2149,[7,307]) .empty) (4959,[3,3,19,29]) (.node .empty (2150,[2,5,5,43]) .empty)))))
theorem part0064_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4259 4302 part0064 := by
  change part0064.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 4259 4302 = true
  decide +kernel

def part0065 : CertificateTree FactoredPoint := .node part0063 (2129,[2129]) part0064
theorem part0065_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4215 4302 part0065 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 4215 4302
    part0063 part0064 (2129,[2129]) (by decide +kernel) part0063_valid
    (by decide +kernel) part0064_valid

def part0066 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (2151,[3,3,239]) .empty) (2152,[2,2,2,269]) .empty) (4961,[11,11,41]) (.node (.node .empty (2153,[2153]) .empty) (4962,[2,3,827]) .empty)) (21817,[21817]) (.node (.node (.node .empty (2154,[2,3,359]) .empty) (19009,[19009]) .empty) (2155,[5,431]) (.node .empty (4965,[3,5,331]) .empty))) (2156,[2,2,7,7,11]) (.node (.node (.node (.node .empty (4966,[2,13,191]) .empty) (2157,[3,719]) .empty) (2158,[2,13,83]) (.node (.node .empty (13394,[2,37,181]) .empty) (7777,[7,11,101]) .empty)) (2159,[17,127]) (.node (.node (.node .empty (4969,[4969]) .empty) (2160,[2,2,2,2,3,3,3,5]) .empty) (2161,[2161]) (.node .empty (7779,[3,2593]) .empty)))) (10589,[10589]) (.node (.node (.node (.node (.node .empty (2162,[2,23,47]) .empty) (2163,[3,7,103]) .empty) (4972,[2,2,11,113]) (.node (.node .empty (2164,[2,2,541]) .empty) (7782,[2,3,1297]) .empty)) (10592,[2,2,2,2,2,331]) (.node (.node (.node .empty (2165,[5,433]) .empty) (10593,[3,3,11,107]) .empty) (2166,[2,3,19,19]) (.node .empty (4976,[2,2,2,2,311]) .empty))) (2167,[11,197]) (.node (.node (.node (.node .empty (2168,[2,2,2,271]) .empty) (7786,[2,17,229]) .empty) (7787,[13,599]) (.node (.node .empty (2169,[3,3,241]) .empty) (2170,[2,5,7,31]) .empty)) (16215,[3,5,23,47]) (.node (.node (.node .empty (2171,[13,167]) .empty) (10598,[2,7,757]) .empty) (7790,[2,5,19,41]) (.node .empty (2172,[2,2,3,181]) .empty)))))
theorem part0066_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4303 4346 part0066 := by
  change part0066.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 4303 4346 = true
  decide +kernel

def part0067 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (0,[]) .empty) (2174,[2,1087]) .empty) (16219,[7,7,331]) (.node (.node .empty (2175,[3,5,5,29]) .empty) (4984,[2,2,2,7,89]) .empty)) (2176,[2,2,2,2,2,2,2,17]) (.node (.node (.node .empty (4985,[5,997]) .empty) (13413,[3,17,263]) .empty) (2177,[7,311]) (.node .empty (4987,[4987]) .empty))) (2178,[2,3,3,11,11]) (.node (.node (.node (.node .empty (2179,[2179]) .empty) (4988,[2,2,29,43]) .empty) (10607,[10607]) (.node (.node .empty (2180,[2,2,5,109]) .empty) (13417,[13417]) .empty)) (2181,[3,727]) (.node (.node (.node .empty (2182,[2,1091]) .empty) (7800,[2,2,2,3,5,5,13]) .empty) (4992,[2,2,2,2,2,2,2,3,13]) (.node .empty (2183,[37,59]) .empty)))) (4993,[4993]) (.node (.node (.node (.node (.node .empty (2184,[2,2,2,3,7,13]) .empty) (2185,[5,19,23]) .empty) (4994,[2,11,227]) (.node (.node .empty (2186,[2,1093]) .empty) (13422,[2,3,2237]) .empty)) (2187,[3,3,3,3,3,3,3]) (.node (.node (.node .empty (13423,[31,433]) .empty) (2188,[2,2,547]) .empty) (4997,[19,263]) (.node .empty (4998,[2,3,7,7,17]) .empty))) (2189,[11,199]) (.node (.node (.node (.node .empty (2190,[2,3,5,73]) .empty) (10617,[3,3539]) .empty) (5000,[2,2,2,5,5,5,5]) (.node (.node .empty (2191,[7,313]) .empty) (2192,[2,2,2,2,137]) .empty)) (5001,[3,1667]) (.node (.node (.node .empty (2193,[3,17,43]) .empty) (5002,[2,41,61]) .empty) (2194,[2,1097]) (.node .empty (10621,[13,19,43]) .empty)))))
theorem part0067_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4347 4390 part0067 := by
  change part0067.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 4347 4390 = true
  decide +kernel

def part0068 : CertificateTree FactoredPoint := .node part0066 (0,[]) part0067
theorem part0068_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4303 4390 part0068 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 4303 4390
    part0066 part0067 (0,[]) (by decide +kernel) part0066_valid
    (by decide +kernel) part0067_valid

def part0069 : CertificateTree FactoredPoint := .node part0065 (10578,[2,3,41,43]) part0068
theorem part0069_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4215 4390 part0069 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 4215 4390
    part0065 part0068 (10578,[2,3,41,43]) (by decide +kernel) part0065_valid
    (by decide +kernel) part0068_valid

def part0070 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (2195,[5,439]) .empty) (5005,[5,7,11,13]) .empty) (2196,[2,2,3,3,61]) (.node (.node .empty (5006,[2,2503]) .empty) (2197,[13,13,13]) .empty)) (7816,[2,2,2,977]) (.node (.node (.node .empty (2198,[2,7,157]) .empty) (5008,[2,2,2,2,313]) .empty) (2199,[3,733]) (.node .empty (5009,[5009]) .empty))) (2200,[2,2,2,5,5,11]) (.node (.node (.node (.node .empty (5010,[2,3,5,167]) .empty) (2201,[31,71]) .empty) (5011,[5011]) (.node (.node .empty (2202,[2,3,367]) .empty) (2203,[2203]) .empty)) (5012,[2,2,7,179]) (.node (.node (.node .empty (7822,[2,3911]) .empty) (2204,[2,2,19,29]) .empty) (2205,[3,3,5,7,7]) (.node .empty (5014,[2,23,109]) .empty)))) (2206,[2,1103]) (.node (.node (.node (.node (.node .empty (7824,[2,2,2,2,3,163]) .empty) (2207,[2207]) .empty) (7825,[5,5,313]) (.node (.node .empty (10635,[3,5,709]) .empty) (2208,[2,2,2,2,2,3,23]) .empty)) (2209,[47,47]) (.node (.node (.node .empty (7827,[3,2609]) .empty) (5019,[3,7,239]) .empty) (2210,[2,5,13,17]) (.node .empty (2211,[3,11,67]) .empty))) (5020,[2,2,5,251]) (.node (.node (.node (.node .empty (5021,[5021]) .empty) (2212,[2,2,7,79]) .empty) (2213,[2213]) (.node (.node .empty (5022,[2,3,3,3,3,31]) .empty) (5023,[5023]) .empty)) (2214,[2,3,3,3,41]) (.node (.node (.node .empty (5024,[2,2,2,2,2,157]) .empty) (2215,[5,443]) .empty) (2216,[2,2,2,277]) (.node .empty (10643,[29,367]) .empty)))))
theorem part0070_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4391 4434 part0070 := by
  change part0070.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 4391 4434 = true
  decide +kernel

def part0071 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (2217,[3,739]) .empty) (2218,[2,1109]) .empty) (5027,[11,457]) (.node (.node .empty (10646,[2,5323]) .empty) (2219,[7,317]) .empty)) (2220,[2,2,3,5,37]) (.node (.node (.node .empty (5029,[47,107]) .empty) (2221,[2221]) .empty) (5030,[2,5,503]) (.node .empty (16267,[16267]) .empty))) (2222,[2,11,101]) (.node (.node (.node (.node .empty (7841,[7841]) .empty) (2223,[3,3,13,19]) .empty) (2224,[2,2,2,2,139]) (.node (.node .empty (5033,[7,719]) .empty) (7843,[11,23,31]) .empty)) (2225,[5,5,89]) (.node (.node (.node .empty (0,[]) .empty) (0,[]) .empty) (5036,[2,2,1259]) (.node .empty (2227,[17,131]) .empty)))) (2228,[2,2,557]) (.node (.node (.node (.node (.node .empty (10655,[5,2131]) .empty) (7847,[7,19,59]) .empty) (2229,[3,743]) (.node (.node .empty (5039,[5039]) .empty) (2230,[2,5,223]) .empty)) (5040,[2,2,2,2,3,3,5,7]) (.node (.node (.node .empty (2231,[23,97]) .empty) (5041,[71,71]) .empty) (2232,[2,2,2,3,3,31]) (.node .empty (2233,[7,11,29]) .empty))) (7851,[3,2617]) (.node (.node (.node (.node .empty (2234,[2,1117]) .empty) (5043,[3,41,41]) .empty) (2235,[3,5,149]) (.node (.node .empty (10662,[2,3,1777]) .empty) (2236,[2,2,13,43]) .empty)) (5045,[5,1009]) (.node (.node (.node .empty (2237,[2237]) .empty) (5046,[2,3,29,29]) .empty) (7856,[2,2,2,2,491]) (.node .empty (2238,[2,3,373]) .empty)))))
theorem part0071_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4435 4478 part0071 := by
  change part0071.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 4435 4478 = true
  decide +kernel

def part0072 : CertificateTree FactoredPoint := .node part0070 (30307,[30307]) part0071
theorem part0072_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4391 4478 part0072 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 4391 4478
    part0070 part0071 (30307,[30307]) (by decide +kernel) part0070_valid
    (by decide +kernel) part0071_valid

def part0073 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (7857,[3,3,3,3,97]) .empty) (5049,[3,3,3,11,17]) .empty) (2240,[2,2,2,2,2,2,5,7]) (.node (.node .empty (10668,[2,2,3,7,127]) .empty) (2241,[3,3,3,83]) .empty)) (5051,[5051]) (.node (.node (.node .empty (2242,[2,19,59]) .empty) (2243,[2243]) .empty) (5052,[2,2,3,421]) (.node .empty (2244,[2,2,3,11,17]) .empty))) (5053,[31,163]) (.node (.node (.node (.node .empty (16290,[2,3,3,5,181]) .empty) (2245,[5,449]) .empty) (2246,[2,1123]) (.node (.node .empty (16291,[11,1481]) .empty) (2247,[3,7,107]) .empty)) (7865,[5,11,11,13]) (.node (.node (.node .empty (2248,[2,2,2,281]) .empty) (16293,[3,5431]) .empty) (2249,[13,173]) (.node .empty (5058,[2,3,3,281]) .empty)))) (5059,[5059]) (.node (.node (.node (.node (.node .empty (2250,[2,3,3,5,5,5]) .empty) (2251,[2251]) .empty) (10678,[2,19,281]) (.node (.node .empty (2252,[2,2,563]) .empty) (7870,[2,5,787]) .empty)) (5062,[2,2531]) (.node (.node (.node .empty (2253,[3,751]) .empty) (13490,[2,5,19,71]) .empty) (2254,[2,7,7,23]) (.node .empty (2255,[5,11,41]) .empty))) (5064,[2,2,2,3,211]) (.node (.node (.node (.node .empty (13492,[2,2,3373]) .empty) (2256,[2,2,2,2,3,47]) .empty) (7875,[3,3,5,5,5,7]) (.node (.node .empty (2257,[37,61]) .empty) (2258,[2,1129]) .empty)) (5067,[3,3,563]) (.node (.node (.node .empty (7877,[7877]) .empty) (2259,[3,3,251]) .empty) (10687,[10687]) (.node .empty (2260,[2,2,5,113]) .empty)))))
theorem part0073_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4479 4522 part0073 := by
  change part0073.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 4479 4522 = true
  decide +kernel

def part0074 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (5070,[2,3,5,13,13]) .empty) (10689,[3,7,509]) .empty) (2262,[2,3,13,29]) (.node (.node .empty (5072,[2,2,2,2,317]) .empty) (2263,[31,73]) .empty)) (2264,[2,2,2,283]) (.node (.node (.node .empty (7882,[2,7,563]) .empty) (2265,[3,5,151]) .empty) (5074,[2,43,59]) (.node .empty (5075,[5,5,7,29]) .empty))) (2266,[2,11,103]) (.node (.node (.node (.node .empty (2267,[2267]) .empty) (5076,[2,2,3,3,3,47]) .empty) (5077,[5077]) (.node (.node .empty (2268,[2,2,3,3,3,3,7]) .empty) (2269,[2269]) .empty)) (10696,[2,2,2,7,191]) (.node (.node (.node .empty (27551,[27551]) .empty) (2270,[2,5,227]) .empty) (13507,[13,1039]) (.node .empty (2271,[3,757]) .empty)))) (2272,[2,2,2,2,2,71]) (.node (.node (.node (.node (.node .empty (13508,[2,2,11,307]) .empty) (2273,[2273]) .empty) (10700,[2,2,5,5,107]) (.node (.node .empty (7892,[2,2,1973]) .empty) (2274,[2,3,379]) .empty)) (10702,[2,5351]) (.node (.node (.node .empty (2275,[5,5,7,13]) .empty) (2276,[2,2,569]) .empty) (13512,[2,2,2,3,563]) (.node .empty (2277,[3,3,11,23]) .empty))) (7895,[5,1579]) (.node (.node (.node (.node .empty (5087,[5087]) .empty) (2278,[2,17,67]) .empty) (0,[]) (.node .empty (0,[]) .empty)) (2280,[2,2,2,3,5,19]) (.node (.node (.node .empty (5089,[7,727]) .empty) (2281,[2281]) .empty) (5090,[2,5,509]) (.node .empty (10709,[10709]) .empty)))))
theorem part0074_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4523 4565 part0074 := by
  change part0074.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 4523 4565 = true
  decide +kernel

def part0075 : CertificateTree FactoredPoint := .node part0073 (2261,[7,17,19]) part0074
theorem part0075_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4479 4565 part0075 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 4479 4565
    part0073 part0074 (2261,[7,17,19]) (by decide +kernel) part0073_valid
    (by decide +kernel) part0074_valid

def part0076 : CertificateTree FactoredPoint := .node part0072 (2239,[2239]) part0075
theorem part0076_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4391 4565 part0076 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 4391 4565
    part0072 part0075 (2239,[2239]) (by decide +kernel) part0072_valid
    (by decide +kernel) part0075_valid

def part0077 : CertificateTree FactoredPoint := .node part0069 (7813,[13,601]) part0076
theorem part0077_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4215 4565 part0077 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 4215 4565
    part0069 part0076 (7813,[13,601]) (by decide +kernel) part0069_valid
    (by decide +kernel) part0076_valid

def part0078 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (7901,[7901]) .empty) (2283,[3,761]) .empty) (2284,[2,2,571]) (.node (.node .empty (5093,[11,463]) .empty) (10712,[2,2,2,13,103]) .empty)) (2285,[5,457]) (.node (.node (.node .empty (7904,[2,2,2,2,2,13,19]) .empty) (2286,[2,3,3,127]) .empty) (2287,[2287]) (.node .empty (7905,[3,5,17,31]) .empty))) (2288,[2,2,2,2,11,13]) (.node (.node (.node (.node .empty (5097,[3,1699]) .empty) (2289,[3,7,109]) .empty) (13525,[5,5,541]) (.node (.node .empty (5099,[5099]) .empty) (2290,[2,5,229]) .empty)) (5100,[2,2,3,5,5,17]) (.node (.node (.node .empty (2291,[29,79]) .empty) (5101,[5101]) .empty) (2292,[2,2,3,191]) (.node .empty (2293,[2293]) .empty)))) (7911,[3,3,3,293]) (.node (.node (.node (.node (.node .empty (16339,[16339]) .empty) (2294,[2,31,37]) .empty) (2295,[3,3,3,5,17]) (.node (.node .empty (5104,[2,2,2,2,11,29]) .empty) (10723,[10723]) .empty)) (2296,[2,2,2,7,41]) (.node (.node (.node .empty (2297,[2297]) .empty) (7915,[5,1583]) .empty) (5107,[5107]) (.node .empty (2298,[2,3,383]) .empty))) (5108,[2,2,1277]) (.node (.node (.node (.node .empty (2299,[11,11,19]) .empty) (16345,[5,7,467]) .empty) (2300,[2,2,5,5,23]) (.node (.node .empty (5110,[2,5,7,73]) .empty) (2301,[3,13,59]) .empty)) (2302,[2,1151]) (.node (.node (.node .empty (5111,[19,269]) .empty) (7921,[89,89]) .empty) (2303,[7,7,47]) (.node .empty (2304,[2,2,2,2,2,2,2,2,3,3]) .empty)))))
theorem part0078_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4566 4609 part0078 := by
  change part0078.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 4566 4609 = true
  decide +kernel

def part0079 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (5114,[2,2557]) .empty) (2305,[5,461]) .empty) (2306,[2,1153]) (.node (.node .empty (5115,[3,5,11,31]) .empty) (5116,[2,2,1279]) .empty)) (2307,[3,769]) (.node (.node (.node .empty (2308,[2,2,577]) .empty) (7926,[2,3,1321]) .empty) (2309,[2309]) (.node .empty (5118,[2,3,853]) .empty))) (5119,[5119]) (.node (.node (.node (.node .empty (2310,[2,3,5,7,11]) .empty) (2311,[2311]) .empty) (7929,[3,3,881]) (.node (.node .empty (2312,[2,2,2,17,17]) .empty) (5121,[3,3,569]) .empty)) (5122,[2,13,197]) (.node (.node (.node .empty (2313,[3,3,257]) .empty) (2314,[2,13,89]) .empty) (5123,[47,109]) (.node .empty (5124,[2,2,3,7,61]) .empty)))) (2315,[5,463]) (.node (.node (.node (.node (.node .empty (7934,[2,3967]) .empty) (2316,[2,2,3,193]) .empty) (7935,[3,5,23,23]) (.node (.node .empty (2317,[7,331]) .empty) (7936,[2,2,2,2,2,2,2,2,31]) .empty)) (2318,[2,19,61]) (.node (.node (.node .empty (5128,[2,2,2,641]) .empty) (2319,[3,773]) .empty) (13556,[2,2,3389]) (.node .empty (2320,[2,2,2,2,5,29]) .empty))) (5130,[2,3,3,3,5,19]) (.node (.node (.node (.node .empty (2321,[11,211]) .empty) (13558,[2,6779]) .empty) (2322,[2,3,3,3,43]) (.node (.node .empty (5132,[2,2,1283]) .empty) (2323,[23,101]) .empty)) (5133,[3,29,59]) (.node (.node (.node .empty (2324,[2,2,7,83]) .empty) (2325,[3,5,5,31]) .empty) (5134,[2,17,151]) (.node .empty (2326,[2,1163]) .empty)))))
theorem part0079_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4610 4653 part0079 := by
  change part0079.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 4610 4653 = true
  decide +kernel

def part0080 : CertificateTree FactoredPoint := .node part0078 (7922,[2,17,233]) part0079
theorem part0080_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4566 4653 part0080 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 4566 4653
    part0078 part0079 (7922,[2,17,233]) (by decide +kernel) part0078_valid
    (by decide +kernel) part0079_valid

def part0081 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (2327,[13,179]) .empty) (5136,[2,2,2,2,3,107]) .empty) (10755,[3,3,5,239]) (.node (.node .empty (2328,[2,2,2,3,97]) .empty) (10756,[2,2,2689]) .empty)) (2329,[17,137]) (.node (.node (.node .empty (7948,[2,2,1987]) .empty) (2330,[2,5,233]) .empty) (2331,[3,3,7,37]) (.node .empty (5140,[2,2,5,257]) .empty))) (0,[]) (.node (.node (.node (.node .empty (0,[]) .empty) (2333,[2333]) .empty) (5142,[2,3,857]) (.node (.node .empty (10761,[3,17,211]) .empty) (2334,[2,3,389]) .empty)) (5144,[2,2,2,643]) (.node (.node (.node .empty (2335,[5,467]) .empty) (2336,[2,2,2,2,2,73]) .empty) (7954,[2,41,97]) (.node .empty (2337,[3,19,41]) .empty)))) (5146,[2,31,83]) (.node (.node (.node (.node (.node .empty (5147,[5147]) .empty) (2338,[2,7,167]) .empty) (2339,[2339]) (.node (.node .empty (5148,[2,2,3,3,11,13]) .empty) (10767,[3,37,97]) .empty)) (2340,[2,2,3,3,5,13]) (.node (.node (.node .empty (2341,[2341]) .empty) (5150,[2,5,5,103]) .empty) (2342,[2,1171]) (.node .empty (7960,[2,2,2,5,199]) .empty))) (2343,[3,11,71]) (.node (.node (.node (.node .empty (5152,[2,2,2,2,2,7,23]) .empty) (2344,[2,2,2,293]) .empty) (7962,[2,3,1327]) (.node (.node .empty (2345,[5,7,67]) .empty) (5154,[2,3,859]) .empty)) (2346,[2,3,17,23]) (.node (.node (.node .empty (5155,[5,1031]) .empty) (2347,[2347]) .empty) (13583,[17,17,47]) (.node .empty (2348,[2,2,587]) .empty)))))
theorem part0081_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4654 4697 part0081 := by
  change part0081.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 4654 4697 = true
  decide +kernel

def part0082 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (5158,[2,2579]) .empty) (2349,[3,3,3,3,29]) .empty) (5159,[7,11,67]) (.node (.node .empty (2350,[2,5,5,47]) .empty) (2351,[2351]) .empty)) (10778,[2,17,317]) (.node (.node (.node .empty (5161,[13,397]) .empty) (2352,[2,2,2,2,3,7,7]) .empty) (2353,[13,181]) (.node .empty (5162,[2,29,89]) .empty))) (7972,[2,2,1993]) (.node (.node (.node (.node .empty (2354,[2,11,107]) .empty) (2355,[3,5,157]) .empty) (10782,[2,3,3,599]) (.node (.node .empty (13592,[2,2,2,1699]) .empty) (2356,[2,2,19,31]) .empty)) (2357,[2357]) (.node (.node (.node .empty (16402,[2,59,139]) .empty) (5167,[5167]) .empty) (2358,[2,3,3,131]) (.node .empty (10786,[2,5393]) .empty)))) (2359,[7,337]) (.node (.node (.node (.node (.node .empty (7978,[2,3989]) .empty) (2360,[2,2,2,5,59]) .empty) (5170,[2,5,11,47]) (.node (.node .empty (2361,[3,787]) .empty) (2362,[2,1181]) .empty)) (7980,[2,2,3,5,7,19]) (.node (.node (.node .empty (27644,[2,2,6911]) .empty) (2363,[17,139]) .empty) (7982,[2,13,307]) (.node .empty (2364,[2,2,3,197]) .empty))) (2365,[5,11,43]) (.node (.node (.node (.node .empty (7983,[3,3,887]) .empty) (2366,[2,7,13,13]) .empty) (10793,[43,251]) (.node (.node .empty (5176,[2,2,2,647]) .empty) (2367,[3,3,263]) .empty)) (2368,[2,2,2,2,2,2,37]) (.node (.node (.node .empty (5177,[31,167]) .empty) (10796,[2,2,2699]) .empty) (2369,[23,103]) (.node .empty (2370,[2,3,5,79]) .empty)))))
theorem part0082_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4698 4741 part0082 := by
  change part0082.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 4698 4741 = true
  decide +kernel

def part0083 : CertificateTree FactoredPoint := .node part0081 (5157,[3,3,3,191]) part0082
theorem part0083_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4654 4741 part0083 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 4654 4741
    part0081 part0082 (5157,[3,3,3,191]) (by decide +kernel) part0081_valid
    (by decide +kernel) part0082_valid

def part0084 : CertificateTree FactoredPoint := .node part0080 (5135,[5,13,79]) part0083
theorem part0084_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4566 4741 part0084 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 4566 4741
    part0080 part0083 (5135,[5,13,79]) (by decide +kernel) part0080_valid
    (by decide +kernel) part0083_valid

def part0085 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (2371,[2371]) .empty) (7989,[3,2663]) .empty) (2372,[2,2,593]) (.node (.node .empty (13608,[2,2,2,3,3,3,3,3,7]) .empty) (2373,[3,7,113]) .empty)) (7991,[61,131]) (.node (.node (.node .empty (2374,[2,1187]) .empty) (5183,[71,73]) .empty) (5184,[2,2,2,2,2,2,3,3,3,3]) (.node .empty (2375,[5,5,5,19]) .empty))) (5185,[5,17,61]) (.node (.node (.node (.node .empty (2376,[2,2,2,3,3,3,11]) .empty) (2377,[2377]) .empty) (10804,[2,2,37,73]) (.node (.node .empty (5187,[3,7,13,19]) .empty) (2378,[2,29,41]) .empty)) (5188,[2,2,1297]) (.node (.node (.node .empty (2379,[3,13,61]) .empty) (2380,[2,2,5,7,17]) .empty) (10807,[101,107]) (.node .empty (2381,[2381]) .empty)))) (7999,[19,421]) (.node (.node (.node (.node (.node .empty (8000,[2,2,2,2,2,2,5,5,5]) .empty) (2382,[2,3,397]) .empty) (2383,[2383]) (.node (.node .empty (5192,[2,2,2,11,59]) .empty) (2384,[2,2,2,2,149]) .empty)) (5193,[3,3,577]) (.node (.node (.node .empty (0,[]) .empty) (0,[]) .empty) (2386,[2,1193]) (.node .empty (5195,[5,1039]) .empty))) (2387,[7,11,31]) (.node (.node (.node (.node .empty (5196,[2,2,3,433]) .empty) (5197,[5197]) .empty) (2388,[2,2,3,199]) (.node (.node .empty (2389,[2389]) .empty) (5198,[2,23,113]) .empty)) (16435,[5,19,173]) (.node (.node (.node .empty (2390,[2,5,239]) .empty) (5200,[2,2,2,2,5,5,13]) .empty) (2391,[3,797]) (.node .empty (2392,[2,2,2,13,23]) .empty)))))
theorem part0085_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4742 4785 part0085 := by
  change part0085.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 4742 4785 = true
  decide +kernel

def part0086 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (2393,[2393]) .empty) (5202,[2,3,3,17,17]) .empty) (2394,[2,3,3,7,19]) (.node (.node .empty (5203,[11,11,43]) .empty) (5204,[2,2,1301]) .empty)) (2395,[5,479]) (.node (.node (.node .empty (2396,[2,2,599]) .empty) (10823,[79,137]) .empty) (2397,[3,17,47]) (.node .empty (5206,[2,19,137]) .empty))) (16443,[3,3,3,3,7,29]) (.node (.node (.node (.node .empty (2398,[2,11,109]) .empty) (2399,[2399]) .empty) (22062,[2,3,3677]) (.node (.node .empty (5209,[5209]) .empty) (2400,[2,2,2,2,2,3,5,5]) .empty)) (2401,[7,7,7,7]) (.node (.node (.node .empty (5210,[2,5,521]) .empty) (2402,[2,1201]) .empty) (5211,[3,3,3,193]) (.node .empty (5212,[2,2,1303]) .empty)))) (2403,[3,3,3,89]) (.node (.node (.node (.node (.node .empty (2404,[2,2,601]) .empty) (16449,[3,5483]) .empty) (5214,[2,3,11,79]) (.node (.node .empty (2405,[5,13,37]) .empty) (5215,[5,7,149]) .empty)) (2406,[2,3,401]) (.node (.node (.node .empty (5216,[2,2,2,2,2,163]) .empty) (2407,[29,83]) .empty) (5217,[3,37,47]) (.node .empty (2408,[2,2,2,7,43]) .empty))) (2409,[3,11,73]) (.node (.node (.node (.node .empty (8027,[23,349]) .empty) (10837,[10837]) .empty) (2410,[2,5,241]) (.node (.node .empty (2411,[2411]) .empty) (13647,[3,4549]) .empty)) (8030,[2,5,11,73]) (.node (.node (.node .empty (2412,[2,2,3,3,67]) .empty) (13649,[13649]) .empty) (2413,[19,127]) (.node .empty (8032,[2,2,2,2,2,251]) .empty)))))
theorem part0086_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4786 4829 part0086 := by
  change part0086.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 4786 4829 = true
  decide +kernel

def part0087 : CertificateTree FactoredPoint := .node part0085 (5201,[7,743]) part0086
theorem part0087_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4742 4829 part0087 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 4742 4829
    part0085 part0086 (5201,[7,743]) (by decide +kernel) part0085_valid
    (by decide +kernel) part0086_valid

def part0088 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (5224,[2,2,2,653]) .empty) (2415,[3,5,7,23]) .empty) (2416,[2,2,2,2,151]) (.node (.node .empty (8034,[2,3,13,103]) .empty) (2417,[2417]) .empty)) (5226,[2,3,13,67]) (.node (.node (.node .empty (5227,[5227]) .empty) (2418,[2,3,13,31]) .empty) (5228,[2,2,1307]) (.node .empty (2419,[41,59]) .empty))) (5229,[3,3,7,83]) (.node (.node (.node (.node .empty (2420,[2,2,5,11,11]) .empty) (8039,[8039]) .empty) (2421,[3,3,269]) (.node (.node .empty (5231,[5231]) .empty) (2422,[2,7,173]) .empty)) (2423,[2423]) (.node (.node (.node .empty (5232,[2,2,2,2,3,109]) .empty) (5233,[5233]) .empty) (2424,[2,2,2,3,101]) (.node .empty (5234,[2,2617]) .empty)))) (2425,[5,5,97]) (.node (.node (.node (.node (.node .empty (2426,[2,1213]) .empty) (16471,[7,13,181]) .empty) (5236,[2,2,7,11,17]) (.node (.node .empty (2427,[3,809]) .empty) (2428,[2,2,607]) .empty)) (8046,[2,3,3,3,149]) (.node (.node (.node .empty (8047,[13,619]) .empty) (2429,[7,347]) .empty) (5239,[13,13,31]) (.node .empty (2430,[2,3,3,3,3,3,5]) .empty))) (22094,[2,11047]) (.node (.node (.node (.node .empty (2431,[11,13,17]) .empty) (2432,[2,2,2,2,2,2,2,19]) .empty) (5241,[3,1747]) (.node (.node .empty (5242,[2,2621]) .empty) (2433,[3,811]) .empty)) (2434,[2,1217]) (.node (.node (.node .empty (5243,[7,7,107]) .empty) (5244,[2,2,3,19,23]) .empty) (2435,[5,487]) (.node .empty (2436,[2,2,3,7,29]) .empty)))))
theorem part0088_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4830 4873 part0088 := by
  change part0088.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 4830 4873 = true
  decide +kernel

def part0089 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (2437,[2437]) .empty) (5246,[2,43,61]) .empty) (0,[]) (.node (.node .empty (0,[]) .empty) (5248,[2,2,2,2,2,2,2,41]) .empty)) (2439,[3,3,271]) (.node (.node (.node .empty (8058,[2,3,17,79]) .empty) (2440,[2,2,2,5,61]) .empty) (2441,[2441]) (.node .empty (10868,[2,2,11,13,19]) .empty))) (2442,[2,3,11,37]) (.node (.node (.node (.node .empty (5251,[59,89]) .empty) (5252,[2,2,13,101]) .empty) (2443,[7,349]) (.node (.node .empty (2444,[2,2,13,47]) .empty) (8062,[2,29,139]) .empty)) (2445,[3,5,163]) (.node (.node (.node .empty (5254,[2,37,71]) .empty) (2446,[2,1223]) .empty) (5255,[5,1051]) (.node .empty (2447,[2447]) .empty)))) (5256,[2,2,2,3,3,73]) (.node (.node (.node (.node (.node .empty (10875,[3,5,5,5,29]) .empty) (2448,[2,2,2,2,3,3,17]) .empty) (10876,[2,2,2719]) (.node (.node .empty (2449,[31,79]) .empty) (8068,[2,2,2017]) .empty)) (2450,[2,5,5,7,7]) (.node (.node (.node .empty (2451,[3,19,43]) .empty) (5260,[2,2,5,263]) .empty) (2452,[2,2,613]) (.node .empty (13688,[2,2,2,29,59]) .empty))) (13689,[3,3,3,3,13,13]) (.node (.node (.node (.node .empty (2453,[11,223]) .empty) (8072,[2,2,2,1009]) .empty) (2454,[2,3,409]) (.node .empty (10882,[2,5441]) .empty)) (2455,[5,491]) (.node (.node (.node .empty (2456,[2,2,2,307]) .empty) (5265,[3,3,3,3,5,13]) .empty) (5266,[2,2633]) (.node .empty (2457,[3,3,3,7,13]) .empty)))))
theorem part0089_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4874 4916 part0089 := by
  change part0089.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 4874 4916 = true
  decide +kernel

def part0090 : CertificateTree FactoredPoint := .node part0088 (5245,[5,1049]) part0089
theorem part0090_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4830 4916 part0090 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 4830 4916
    part0088 part0089 (5245,[5,1049]) (by decide +kernel) part0088_valid
    (by decide +kernel) part0089_valid

def part0091 : CertificateTree FactoredPoint := .node part0087 (2414,[2,17,71]) part0090
theorem part0091_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4742 4916 part0091 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 4742 4916
    part0087 part0090 (2414,[2,17,71]) (by decide +kernel) part0087_valid
    (by decide +kernel) part0090_valid

def part0092 : CertificateTree FactoredPoint := .node part0084 (19224,[2,2,2,3,3,3,89]) part0091
theorem part0092_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4566 4916 part0092 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 4566 4916
    part0084 part0091 (19224,[2,2,2,3,3,3,89]) (by decide +kernel) part0084_valid
    (by decide +kernel) part0091_valid

def part0093 : CertificateTree FactoredPoint := .node part0077 (2282,[2,7,163]) part0092
theorem part0093_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4215 4916 part0093 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 4215 4916
    part0077 part0092 (2282,[2,7,163]) (by decide +kernel) part0077_valid
    (by decide +kernel) part0092_valid

def part0094 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (5267,[23,229]) .empty) (2459,[2459]) .empty) (5268,[2,2,3,439]) (.node (.node .empty (2460,[2,2,3,5,41]) .empty) (5269,[11,479]) .empty)) (5270,[2,5,17,31]) (.node (.node (.node .empty (2461,[23,107]) .empty) (2462,[2,1231]) .empty) (8080,[2,2,2,2,5,101]) (.node .empty (5272,[2,2,2,659]) .empty))) (2463,[3,821]) (.node (.node (.node (.node .empty (5273,[5273]) .empty) (2464,[2,2,2,2,2,7,11]) .empty) (2465,[5,17,29]) (.node (.node .empty (5274,[2,3,3,293]) .empty) (16511,[11,19,79]) .empty)) (2466,[2,3,3,137]) (.node (.node (.node .empty (2467,[2467]) .empty) (8085,[3,5,7,7,11]) .empty) (2468,[2,2,617]) (.node .empty (5277,[3,1759]) .empty)))) (8087,[8087]) (.node (.node (.node (.node (.node .empty (2469,[3,823]) .empty) (5279,[5279]) .empty) (2470,[2,5,13,19]) (.node (.node .empty (5280,[2,2,2,2,2,3,5,11]) .empty) (2471,[7,353]) .empty)) (5281,[5281]) (.node (.node (.node .empty (2472,[2,2,2,3,103]) .empty) (2473,[2473]) .empty) (5282,[2,19,139]) (.node .empty (2474,[2,1237]) .empty))) (5283,[3,3,587]) (.node (.node (.node (.node .empty (2475,[3,3,5,5,11]) .empty) (24947,[13,19,101]) .empty) (2476,[2,2,619]) (.node (.node .empty (16521,[3,5507]) .empty) (2477,[2477]) .empty)) (5286,[2,3,881]) (.node (.node (.node .empty (2478,[2,3,7,59]) .empty) (5287,[17,311]) .empty) (5288,[2,2,2,661]) (.node .empty (2479,[37,67]) .empty)))))
theorem part0094_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4917 4960 part0094 := by
  change part0094.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 4917 4960 = true
  decide +kernel

def part0095 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (2480,[2,2,2,2,5,31]) .empty) (13717,[11,29,43]) .empty) (2481,[3,827]) (.node (.node .empty (10909,[10909]) .empty) (2482,[2,17,73]) .empty)) (2483,[13,191]) (.node (.node (.node .empty (5292,[2,2,3,3,3,7,7]) .empty) (8102,[2,4051]) .empty) (2484,[2,2,3,3,3,23]) (.node .empty (2485,[5,7,71]) .empty))) (10912,[2,2,2,2,2,11,31]) (.node (.node (.node (.node .empty (5295,[3,5,353]) .empty) (2486,[2,11,113]) .empty) (5296,[2,2,2,2,331]) (.node (.node .empty (2487,[3,829]) .empty) (2488,[2,2,2,311]) .empty)) (13724,[2,2,47,73]) (.node (.node (.node .empty (10916,[2,2,2729]) .empty) (2489,[19,131]) .empty) (2490,[2,3,5,83]) (.node .empty (5299,[7,757]) .empty)))) (0,[]) (.node (.node (.node (.node (.node .empty (0,[]) .empty) (5301,[3,3,19,31]) .empty) (2492,[2,2,7,89]) (.node (.node .empty (8111,[8111]) .empty) (2493,[3,3,277]) .empty)) (5303,[5303]) (.node (.node (.node .empty (2494,[2,29,43]) .empty) (8113,[7,19,61]) .empty) (2495,[5,499]) (.node .empty (2496,[2,2,2,2,2,2,3,13]) .empty))) (5305,[5,1061]) (.node (.node (.node (.node .empty (8115,[3,5,541]) .empty) (2497,[11,227]) .empty) (2498,[2,1249]) (.node (.node .empty (16543,[71,233]) .empty) (2499,[3,7,7,17]) .empty)) (10926,[2,3,3,607]) (.node (.node (.node .empty (2500,[2,2,5,5,5,5]) .empty) (10927,[7,7,223]) .empty) (5310,[2,3,3,5,59]) (.node .empty (2501,[41,61]) .empty)))))
theorem part0095_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4961 5004 part0095 := by
  change part0095.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 4961 5004 = true
  decide +kernel

def part0096 : CertificateTree FactoredPoint := .node part0094 (5289,[3,41,43]) part0095
theorem part0096_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4917 5004 part0096 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 4917 5004
    part0094 part0095 (5289,[3,41,43]) (by decide +kernel) part0094_valid
    (by decide +kernel) part0095_valid

def part0097 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (2502,[2,3,3,139]) .empty) (2503,[2503]) .empty) (8121,[3,2707]) (.node (.node .empty (2504,[2,2,2,313]) .empty) (5313,[3,7,11,23]) .empty)) (2505,[3,5,167]) (.node (.node (.node .empty (10932,[2,2,3,911]) .empty) (10933,[13,29,29]) .empty) (2506,[2,7,179]) (.node .empty (8125,[5,5,5,5,13]) .empty))) (2507,[23,109]) (.node (.node (.node (.node .empty (2508,[2,2,3,11,19]) .empty) (8126,[2,17,239]) .empty) (2509,[13,193]) (.node (.node .empty (13745,[5,2749]) .empty) (8128,[2,2,2,2,2,2,127]) .empty)) (2510,[2,5,251]) (.node (.node (.node .empty (5320,[2,2,2,5,7,19]) .empty) (2511,[3,3,3,3,31]) .empty) (2512,[2,2,2,2,157]) (.node .empty (5321,[17,313]) .empty)))) (22176,[2,2,2,2,2,3,3,7,11]) (.node (.node (.node (.node (.node .empty (2513,[7,359]) .empty) (5323,[5323]) .empty) (2514,[2,3,419]) (.node (.node .empty (5324,[2,2,11,11,11]) .empty) (2515,[5,503]) .empty)) (5325,[3,5,5,71]) (.node (.node (.node .empty (2516,[2,2,17,37]) .empty) (5326,[2,2663]) .empty) (2517,[3,839]) (.node .empty (2518,[2,1259]) .empty))) (5327,[7,761]) (.node (.node (.node (.node .empty (10946,[2,13,421]) .empty) (2519,[11,229]) .empty) (2520,[2,2,2,3,3,5,7]) (.node (.node .empty (13756,[2,2,19,181]) .empty) (2521,[2521]) .empty)) (5330,[2,5,13,41]) (.node (.node (.node .empty (2522,[2,13,97]) .empty) (5331,[3,1777]) .empty) (10950,[2,3,5,5,73]) (.node .empty (2523,[3,29,29]) .empty)))))
theorem part0097_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 5005 5048 part0097 := by
  change part0097.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 5005 5048 = true
  decide +kernel

def part0098 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (10951,[47,233]) .empty) (5334,[2,3,7,127]) .empty) (2525,[5,5,101]) (.node (.node .empty (5335,[5,11,97]) .empty) (2526,[2,3,421]) .empty)) (8145,[3,3,5,181]) (.node (.node (.node .empty (2527,[7,19,19]) .empty) (2528,[2,2,2,2,2,79]) .empty) (5337,[3,3,593]) (.node .empty (8147,[8147]) .empty))) (2529,[3,3,281]) (.node (.node (.node (.node .empty (2530,[2,5,11,23]) .empty) (5339,[19,281]) .empty) (2531,[2531]) (.node (.node .empty (8149,[29,281]) .empty) (13768,[2,2,2,1721]) .empty)) (2532,[2,2,3,211]) (.node (.node (.node .empty (5342,[2,2671]) .empty) (2533,[17,149]) .empty) (8152,[2,2,2,1019]) (.node .empty (2534,[2,7,181]) .empty)))) (5344,[2,2,2,2,2,167]) (.node (.node (.node (.node (.node .empty (2535,[3,5,13,13]) .empty) (2536,[2,2,2,317]) .empty) (5345,[5,1069]) (.node (.node .empty (8155,[5,7,233]) .empty) (2537,[43,59]) .empty)) (5347,[5347]) (.node (.node (.node .empty (2538,[2,3,3,3,47]) .empty) (2539,[2539]) .empty) (5348,[2,2,7,191]) (.node .empty (8158,[2,4079]) .empty))) (2540,[2,2,5,127]) (.node (.node (.node (.node .empty (2541,[3,7,11,11]) .empty) (5350,[2,5,5,107]) .empty) (5351,[5351]) (.node (.node .empty (2542,[2,31,41]) .empty) (2543,[2543]) .empty)) (5352,[2,2,2,3,223]) (.node (.node (.node .empty (0,[]) .empty) (0,[]) .empty) (5354,[2,2677]) (.node .empty (2545,[5,509]) .empty)))))
theorem part0098_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 5049 5092 part0098 := by
  change part0098.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 5049 5092 = true
  decide +kernel

def part0099 : CertificateTree FactoredPoint := .node part0097 (2524,[2,2,631]) part0098
theorem part0099_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 5005 5092 part0099 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 5005 5092
    part0097 part0098 (2524,[2,2,631]) (by decide +kernel) part0097_valid
    (by decide +kernel) part0098_valid

def part0100 : CertificateTree FactoredPoint := .node part0096 (8120,[2,2,2,5,7,29]) part0099
theorem part0100_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4917 5092 part0100 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 4917 5092
    part0096 part0099 (8120,[2,2,2,5,7,29]) (by decide +kernel) part0096_valid
    (by decide +kernel) part0099_valid

def part0101 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (2546,[2,19,67]) .empty) (5356,[2,2,13,103]) .empty) (2547,[3,3,283]) (.node (.node .empty (2548,[2,2,7,7,13]) .empty) (5357,[11,487]) .empty)) (2549,[2549]) (.node (.node (.node .empty (22212,[2,2,3,3,617]) .empty) (2550,[2,3,5,5,17]) .empty) (5359,[23,233]) (.node .empty (2551,[2551]) .empty))) (5360,[2,2,2,2,5,67]) (.node (.node (.node (.node .empty (8170,[2,5,19,43]) .empty) (2552,[2,2,2,11,29]) .empty) (2553,[3,23,37]) (.node (.node .empty (5362,[2,7,383]) .empty) (2554,[2,1277]) .empty)) (5363,[31,173]) (.node (.node (.node .empty (2555,[5,7,73]) .empty) (5364,[2,2,3,3,149]) .empty) (5365,[5,29,37]) (.node .empty (2556,[2,2,3,3,71]) .empty)))) (2557,[2557]) (.node (.node (.node (.node (.node .empty (16602,[2,3,2767]) .empty) (2558,[2,1279]) .empty) (5367,[3,1789]) (.node (.node .empty (13795,[5,31,89]) .empty) (2559,[3,853]) .empty)) (2560,[2,2,2,2,2,2,2,2,2,5]) (.node (.node (.node .empty (5369,[7,13,59]) .empty) (2561,[13,197]) .empty) (10988,[2,2,41,67]) (.node .empty (2562,[2,3,7,61]) .empty))) (5371,[41,131]) (.node (.node (.node (.node .empty (10990,[2,5,7,157]) .empty) (2563,[11,233]) .empty) (2564,[2,2,641]) (.node (.node .empty (5373,[3,3,3,199]) .empty) (2565,[3,3,3,5,19]) .empty)) (8183,[7,7,167]) (.node (.node (.node .empty (2566,[2,1283]) .empty) (5375,[5,5,5,43]) .empty) (13803,[3,43,107]) (.node .empty (2567,[17,151]) .empty)))))
theorem part0101_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 5093 5136 part0101 := by
  change part0101.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 5093 5136 = true
  decide +kernel

def part0102 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (2568,[2,2,2,3,107]) .empty) (5378,[2,2689]) .empty) (2569,[7,367]) (.node (.node .empty (5379,[3,11,163]) .empty) (2570,[2,5,257]) .empty)) (13807,[13807]) (.node (.node (.node .empty (2571,[3,857]) .empty) (2572,[2,2,643]) .empty) (10999,[17,647]) (.node .empty (8191,[8191]) .empty))) (2573,[31,83]) (.node (.node (.node (.node .empty (11001,[3,19,193]) .empty) (2574,[2,3,3,11,13]) .empty) (5384,[2,2,2,673]) (.node (.node .empty (2575,[5,5,103]) .empty) (5385,[3,5,359]) .empty)) (2576,[2,2,2,2,7,23]) (.node (.node (.node .empty (5386,[2,2693]) .empty) (2577,[3,859]) .empty) (2578,[2,1289]) (.node .empty (8196,[2,2,3,683]) .empty)))) (2579,[2579]) (.node (.node (.node (.node (.node .empty (5388,[2,2,3,449]) .empty) (2580,[2,2,3,5,43]) .empty) (5389,[17,317]) (.node (.node .empty (5390,[2,5,7,7,11]) .empty) (2581,[29,89]) .empty)) (2582,[2,1291]) (.node (.node (.node .empty (5391,[3,3,599]) .empty) (2583,[3,3,7,41]) .empty) (8201,[59,139]) (.node .empty (5393,[5393]) .empty))) (2584,[2,2,2,17,19]) (.node (.node (.node (.node .empty (2585,[5,11,47]) .empty) (16630,[2,5,1663]) .empty) (13822,[2,6911]) (.node (.node .empty (2586,[2,3,431]) .empty) (2587,[13,199]) .empty)) (5396,[2,2,19,71]) (.node (.node (.node .empty (2588,[2,2,647]) .empty) (8206,[2,11,373]) .empty) (5398,[2,2699]) (.node .empty (2589,[3,863]) .empty)))))
theorem part0102_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 5137 5180 part0102 := by
  change part0102.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 5137 5180 = true
  decide +kernel

def part0103 : CertificateTree FactoredPoint := .node part0101 (8186,[2,4093]) part0102
theorem part0103_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 5093 5180 part0103 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 5093 5180
    part0101 part0102 (8186,[2,4093]) (by decide +kernel) part0101_valid
    (by decide +kernel) part0102_valid

def part0104 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (8208,[2,2,2,2,3,3,3,19]) .empty) (2591,[2591]) .empty) (5400,[2,2,2,3,3,3,5,5]) (.node (.node .empty (2592,[2,2,2,2,2,3,3,3,3]) .empty) (5401,[11,491]) .empty)) (2593,[2593]) (.node (.node (.node .empty (5402,[2,37,73]) .empty) (2594,[2,1297]) .empty) (5403,[3,1801]) (.node .empty (2595,[3,5,173]) .empty))) (5404,[2,2,7,193]) (.node (.node (.node (.node .empty (5405,[5,23,47]) .empty) (2596,[2,2,11,59]) .empty) (0,[]) (.node (.node .empty (0,[]) .empty) (5407,[5407]) .empty)) (2598,[2,3,433]) (.node (.node (.node .empty (8217,[3,3,11,83]) .empty) (2599,[23,113]) .empty) (2600,[2,2,2,5,5,13]) (.node .empty (5409,[3,3,601]) .empty)))) (8219,[8219]) (.node (.node (.node (.node (.node .empty (2601,[3,3,17,17]) .empty) (2602,[2,1301]) .empty) (5411,[7,773]) (.node (.node .empty (5412,[2,2,3,11,41]) .empty) (2603,[19,137]) .empty)) (2604,[2,2,3,7,31]) (.node (.node (.node .empty (11031,[3,3677]) .empty) (5414,[2,2707]) .empty) (2605,[5,521]) (.node .empty (2606,[2,1303]) .empty))) (13842,[2,3,3,769]) (.node (.node (.node (.node .empty (2607,[3,11,79]) .empty) (11034,[2,3,3,613]) .empty) (2608,[2,2,2,2,163]) (.node (.node .empty (8226,[2,3,3,457]) .empty) (2609,[2609]) .empty)) (8227,[19,433]) (.node (.node (.node .empty (2610,[2,3,3,5,29]) .empty) (8228,[2,2,11,11,17]) .empty) (11038,[2,5519]) (.node .empty (2611,[7,373]) .empty)))))
theorem part0104_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 5181 5224 part0104 := by
  change part0104.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 5181 5224 = true
  decide +kernel

def part0105 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (5421,[3,13,139]) .empty) (5422,[2,2711]) .empty) (2613,[3,13,67]) (.node (.node .empty (2614,[2,1307]) .empty) (8232,[2,2,2,3,7,7,7]) .empty)) (8233,[8233]) (.node (.node (.node .empty (2615,[5,523]) .empty) (5425,[5,5,7,31]) .empty) (2616,[2,2,2,3,109]) (.node .empty (2617,[2617]) .empty))) (11044,[2,2,11,251]) (.node (.node (.node (.node .empty (2618,[2,7,11,17]) .empty) (5427,[3,3,3,3,67]) .empty) (8237,[8237]) (.node (.node .empty (2619,[3,3,3,97]) .empty) (11047,[11047]) .empty)) (2620,[2,2,5,131]) (.node (.node (.node .empty (2621,[2621]) .empty) (22284,[2,2,3,3,619]) .empty) (2622,[2,3,19,23]) (.node .empty (8240,[2,2,2,2,5,103]) .empty)))) (8241,[3,41,67]) (.node (.node (.node (.node (.node .empty (2623,[43,61]) .empty) (2624,[2,2,2,2,2,2,41]) .empty) (5433,[3,1811]) (.node (.node .empty (2625,[3,5,5,5,7]) .empty) (5434,[2,11,13,19]) .empty)) (2626,[2,13,101]) (.node (.node (.node .empty (5435,[5,1087]) .empty) (8245,[5,17,97]) .empty) (2627,[37,71]) (.node .empty (5437,[5437]) .empty))) (2628,[2,2,3,3,73]) (.node (.node (.node (.node .empty (5438,[2,2719]) .empty) (2629,[11,239]) .empty) (5439,[3,7,7,37]) (.node .empty (2630,[2,5,263]) .empty)) (11058,[2,3,19,97]) (.node (.node (.node .empty (2631,[3,877]) .empty) (5441,[5441]) .empty) (2632,[2,2,2,7,47]) (.node .empty (2633,[2633]) .empty)))))
theorem part0105_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 5225 5267 part0105 := by
  change part0105.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 5225 5267 = true
  decide +kernel

def part0106 : CertificateTree FactoredPoint := .node part0104 (2612,[2,2,653]) part0105
theorem part0106_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 5181 5267 part0106 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 5181 5267
    part0104 part0105 (2612,[2,2,653]) (by decide +kernel) part0104_valid
    (by decide +kernel) part0105_valid

def part0107 : CertificateTree FactoredPoint := .node part0103 (2590,[2,5,7,37]) part0106
theorem part0107_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 5093 5267 part0107 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 5093 5267
    part0103 part0106 (2590,[2,5,7,37]) (by decide +kernel) part0103_valid
    (by decide +kernel) part0106_valid

def part0108 : CertificateTree FactoredPoint := .node part0100 (8164,[2,2,13,157]) part0107
theorem part0108_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4917 5267 part0108 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 4917 5267
    part0100 part0107 (8164,[2,2,13,157]) (by decide +kernel) part0100_valid
    (by decide +kernel) part0107_valid

def part0109 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (5443,[5443]) .empty) (2634,[2,3,439]) .empty) (2635,[5,17,31]) (.node (.node .empty (13871,[11,13,97]) .empty) (2636,[2,2,659]) .empty)) (11063,[13,23,37]) (.node (.node (.node .empty (13873,[13873]) .empty) (2637,[3,3,293]) .empty) (2638,[2,1319]) (.node .empty (8256,[2,2,2,2,2,2,3,43]) .empty))) (13875,[3,5,5,5,37]) (.node (.node (.node (.node .empty (2639,[7,13,29]) .empty) (2640,[2,2,2,2,3,5,11]) .empty) (11067,[3,7,17,31]) (.node (.node .empty (11068,[2,2,2767]) .empty) (2641,[19,139]) .empty)) (2642,[2,1321]) (.node (.node (.node .empty (13878,[2,3,3,3,257]) .empty) (11070,[2,3,3,3,5,41]) .empty) (2643,[3,881]) (.node .empty (2644,[2,2,661]) .empty)))) (8262,[2,3,3,3,3,3,17]) (.node (.node (.node (.node (.node .empty (8263,[8263]) .empty) (2645,[5,23,23]) .empty) (8264,[2,2,2,1033]) (.node (.node .empty (2646,[2,3,3,3,7,7]) .empty) (2647,[2647]) .empty)) (5456,[2,2,2,2,11,31]) (.node (.node (.node .empty (2648,[2,2,2,331]) .empty) (11075,[5,5,443]) .empty) (5458,[2,2729]) (.node .empty (2649,[3,883]) .empty))) (0,[]) (.node (.node (.node (.node .empty (0,[]) .empty) (5460,[2,2,3,5,7,13]) .empty) (2651,[11,241]) (.node (.node .empty (36360,[2,2,2,3,3,5,101]) .empty) (2652,[2,2,3,13,17]) .empty)) (5462,[2,2731]) (.node (.node (.node .empty (2653,[7,379]) .empty) (2654,[2,1327]) .empty) (5463,[3,3,607]) (.node .empty (2655,[3,3,5,59]) .empty)))))
theorem part0109_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 5268 5311 part0109 := by
  change part0109.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 5268 5311 = true
  decide +kernel

def part0110 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (2656,[2,2,2,2,2,83]) .empty) (5465,[5,1093]) .empty) (2657,[2657]) (.node (.node .empty (5466,[2,3,911]) .empty) (5467,[7,11,71]) .empty)) (2658,[2,3,443]) (.node (.node (.node .empty (2659,[2659]) .empty) (11086,[2,23,241]) .empty) (2660,[2,2,5,7,19]) (.node .empty (5469,[3,1823]) .empty))) (11088,[2,2,2,2,3,3,7,11]) (.node (.node (.node (.node .empty (2661,[3,887]) .empty) (2662,[2,11,11,11]) .empty) (16707,[3,5569]) (.node (.node .empty (2663,[2663]) .empty) (5472,[2,2,2,2,2,3,3,19]) .empty)) (5473,[13,421]) (.node (.node (.node .empty (2664,[2,2,2,3,3,37]) .empty) (5474,[2,7,17,23]) .empty) (2665,[5,13,41]) (.node .empty (5475,[3,5,5,73]) .empty)))) (2666,[2,31,43]) (.node (.node (.node (.node (.node .empty (2667,[3,7,127]) .empty) (8285,[5,1657]) .empty) (5477,[5477]) (.node (.node .empty (2668,[2,2,23,29]) .empty) (5478,[2,3,11,83]) .empty)) (2669,[17,157]) (.node (.node (.node .empty (2670,[2,3,5,89]) .empty) (8288,[2,2,2,2,2,7,37]) .empty) (2671,[2671]) (.node .empty (5480,[2,2,2,5,137]) .empty))) (2672,[2,2,2,2,167]) (.node (.node (.node (.node .empty (8290,[2,5,829]) .empty) (5482,[2,2741]) .empty) (2673,[3,3,3,3,3,11]) (.node (.node .empty (5483,[5483]) .empty) (2674,[2,7,191]) .empty)) (8293,[8293]) (.node (.node (.node .empty (2675,[5,5,107]) .empty) (25148,[2,2,6287]) .empty) (2676,[2,2,3,223]) (.node .empty (2677,[2677]) .empty)))))
theorem part0110_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 5312 5355 part0110 := by
  change part0110.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 5312 5355 = true
  decide +kernel

def part0111 : CertificateTree FactoredPoint := .node part0109 (11082,[2,3,1847]) part0110
theorem part0111_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 5268 5355 part0111 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 5268 5355
    part0109 part0110 (11082,[2,3,1847]) (by decide +kernel) part0109_valid
    (by decide +kernel) part0110_valid

def part0112 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (2678,[2,13,103]) .empty) (8296,[2,2,2,17,61]) .empty) (2679,[3,19,47]) (.node (.node .empty (11106,[2,3,3,617]) .empty) (16725,[3,5,5,223]) .empty)) (2680,[2,2,2,5,67]) (.node (.node (.node .empty (5490,[2,3,3,5,61]) .empty) (2681,[7,383]) .empty) (11109,[3,7,23,23]) (.node .empty (2682,[2,3,3,149]) .empty))) (2683,[2683]) (.node (.node (.node (.node .empty (8301,[3,2767]) .empty) (13920,[2,2,2,2,2,3,5,29]) .empty) (2684,[2,2,11,61]) (.node (.node .empty (2685,[3,5,179]) .empty) (5494,[2,41,67]) .empty)) (5495,[5,7,157]) (.node (.node (.node .empty (2686,[2,17,79]) .empty) (2687,[2687]) .empty) (5496,[2,2,2,3,229]) (.node .empty (8306,[2,4153]) .empty)))) (2688,[2,2,2,2,2,2,2,3,7]) (.node (.node (.node (.node (.node .empty (2689,[2689]) .empty) (8307,[3,3,13,71]) .empty) (11117,[11117]) (.node (.node .empty (2690,[2,5,269]) .empty) (11118,[2,3,17,109]) .empty)) (2691,[3,3,13,23]) (.node (.node (.node .empty (2692,[2,2,673]) .empty) (19546,[2,29,337]) .empty) (2693,[2693]) (.node .empty (11120,[2,2,2,2,5,139]) .empty))) (5503,[5503]) (.node (.node (.node (.node .empty (2694,[2,3,449]) .empty) (2695,[5,7,7,11]) .empty) (11122,[2,67,83]) (.node (.node .empty (2696,[2,2,2,337]) .empty) (11123,[7,7,227]) .empty)) (2697,[3,29,31]) (.node (.node (.node .empty (8315,[5,1663]) .empty) (5507,[5507]) .empty) (2698,[2,19,71]) (.node .empty (2699,[2699]) .empty)))))
theorem part0112_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 5356 5399 part0112 := by
  change part0112.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 5356 5399 = true
  decide +kernel

def part0113 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (8318,[2,4159]) .empty) (2700,[2,2,3,3,3,5,5]) .empty) (5510,[2,5,19,29]) (.node (.node .empty (2701,[37,73]) .empty) (5511,[3,11,167]) .empty)) (2702,[2,7,193]) (.node (.node (.node .empty (0,[]) .empty) (0,[]) .empty) (8322,[2,3,19,73]) (.node .empty (2704,[2,2,2,2,13,13]) .empty))) (8323,[7,29,41]) (.node (.node (.node (.node .empty (2705,[5,541]) .empty) (2706,[2,3,11,41]) .empty) (5515,[5,1103]) (.node (.node .empty (2707,[2707]) .empty) (5516,[2,2,7,197]) .empty)) (2708,[2,2,677]) (.node (.node (.node .empty (5517,[3,3,613]) .empty) (2709,[3,3,7,43]) .empty) (5518,[2,31,89]) (.node .empty (5519,[5519]) .empty)))) (2710,[2,5,271]) (.node (.node (.node (.node (.node .empty (2711,[2711]) .empty) (13947,[3,4649]) .empty) (5521,[5521]) (.node (.node .empty (2712,[2,2,2,3,113]) .empty) (2713,[2713]) .empty)) (5522,[2,11,251]) (.node (.node (.node .empty (5523,[3,7,263]) .empty) (2714,[2,23,59]) .empty) (2715,[3,5,181]) (.node .empty (11142,[2,3,3,619]) .empty))) (13952,[2,2,2,2,2,2,2,109]) (.node (.node (.node (.node .empty (2716,[2,2,7,97]) .empty) (19571,[19571]) .empty) (2717,[11,13,19]) (.node (.node .empty (5527,[5527]) .empty) (2718,[2,3,3,151]) .empty)) (2719,[2719]) (.node (.node (.node .empty (13955,[5,2791]) .empty) (5529,[3,19,97]) .empty) (2720,[2,2,2,2,2,5,17]) (.node .empty (5530,[2,5,7,79]) .empty)))))
theorem part0113_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 5400 5443 part0113 := by
  change part0113.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 5400 5443 = true
  decide +kernel

def part0114 : CertificateTree FactoredPoint := .node part0112 (5508,[2,2,3,3,3,3,17]) part0113
theorem part0114_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 5356 5443 part0114 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 5356 5443
    part0112 part0113 (5508,[2,2,3,3,3,3,17]) (by decide +kernel) part0112_valid
    (by decide +kernel) part0113_valid

def part0115 : CertificateTree FactoredPoint := .node part0111 (8295,[3,5,7,79]) part0114
theorem part0115_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 5268 5443 part0115 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 5268 5443
    part0111 part0114 (8295,[3,5,7,79]) (by decide +kernel) part0111_valid
    (by decide +kernel) part0114_valid

def part0116 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (2722,[2,1361]) .empty) (13958,[2,7,997]) .empty) (13959,[3,3,3,11,47]) (.node (.node .empty (2723,[7,389]) .empty) (11151,[3,3,3,7,59]) .empty)) (2724,[2,2,3,227]) (.node (.node (.node .empty (5534,[2,2767]) .empty) (2725,[5,5,109]) .empty) (5535,[3,3,3,5,41]) (.node .empty (2726,[2,29,47]) .empty))) (5536,[2,2,2,2,2,173]) (.node (.node (.node (.node .empty (2727,[3,3,3,101]) .empty) (11155,[5,23,97]) .empty) (2728,[2,2,2,11,31]) (.node (.node .empty (2729,[2729]) .empty) (5538,[2,3,13,71]) .empty)) (2730,[2,3,5,7,13]) (.node (.node (.node .empty (5539,[29,191]) .empty) (2731,[2731]) .empty) (5540,[2,2,5,277]) (.node .empty (2732,[2,2,683]) .empty)))) (5541,[3,1847]) (.node (.node (.node (.node (.node .empty (11160,[2,2,2,3,3,5,31]) .empty) (2733,[3,911]) .empty) (2734,[2,1367]) (.node (.node .empty (5543,[23,241]) .empty) (5544,[2,2,2,3,3,7,11]) .empty)) (2735,[5,547]) (.node (.node (.node .empty (8354,[2,4177]) .empty) (2736,[2,2,2,2,3,3,19]) .empty) (2737,[7,17,23]) (.node .empty (5546,[2,47,59]) .empty))) (2738,[2,37,37]) (.node (.node (.node (.node .empty (5547,[3,43,43]) .empty) (2739,[3,11,83]) .empty) (5548,[2,2,19,73]) (.node (.node .empty (8358,[2,3,7,199]) .empty) (2740,[2,2,5,137]) .empty)) (2741,[2741]) (.node (.node (.node .empty (13977,[3,3,1553]) .empty) (8360,[2,2,2,5,11,19]) .empty) (2742,[2,3,457]) (.node .empty (2743,[13,211]) .empty)))))
theorem part0116_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 5444 5487 part0116 := by
  change part0116.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 5444 5487 = true
  decide +kernel

def part0117 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (2744,[2,2,2,7,7,7]) .empty) (5553,[3,3,617]) .empty) (2745,[3,3,5,61]) (.node (.node .empty (25217,[151,167]) .empty) (2746,[2,1373]) .empty)) (19600,[2,2,2,2,5,5,7,7]) (.node (.node (.node .empty (8365,[5,7,239]) .empty) (2747,[41,67]) .empty) (5557,[5557]) (.node .empty (2748,[2,2,3,229]) .empty))) (2749,[2749]) (.node (.node (.node (.node .empty (5558,[2,7,397]) .empty) (5559,[3,17,109]) .empty) (2750,[2,5,5,5,11]) (.node (.node .empty (2751,[3,7,131]) .empty) (5560,[2,2,2,5,139]) .empty)) (2752,[2,2,2,2,2,2,43]) (.node (.node (.node .empty (5561,[67,83]) .empty) (2753,[2753]) .empty) (5562,[2,3,3,3,103]) (.node .empty (5563,[5563]) .empty)))) (2754,[2,3,3,3,3,17]) (.node (.node (.node (.node (.node .empty (2755,[5,19,29]) .empty) (8373,[3,2791]) .empty) (0,[]) (.node (.node .empty (0,[]) .empty) (22420,[2,2,5,19,59]) .empty)) (2757,[3,919]) (.node (.node (.node .empty (13994,[2,6997]) .empty) (2758,[2,7,197]) .empty) (8377,[8377]) (.node .empty (2759,[31,89]) .empty))) (2760,[2,2,2,3,5,23]) (.node (.node (.node (.node .empty (8378,[2,59,71]) .empty) (8379,[3,3,7,7,19]) .empty) (2761,[11,251]) (.node (.node .empty (2762,[2,1381]) .empty) (5571,[3,3,619]) .empty)) (11190,[2,3,5,373]) (.node (.node (.node .empty (2763,[3,3,307]) .empty) (2764,[2,2,691]) .empty) (11191,[19,19,31]) (.node .empty (2765,[5,7,79]) .empty)))))
theorem part0117_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 5488 5531 part0117 := by
  change part0117.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 5488 5531 = true
  decide +kernel

def part0118 : CertificateTree FactoredPoint := .node part0116 (8361,[3,3,929]) part0117
theorem part0118_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 5444 5531 part0118 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 5444 5531
    part0116 part0117 (8361,[3,3,929]) (by decide +kernel) part0116_valid
    (by decide +kernel) part0117_valid

def part0119 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (8384,[2,2,2,2,2,2,131]) .empty) (2766,[2,3,461]) .empty) (2767,[2767]) (.node (.node .empty (5576,[2,2,2,17,41]) .empty) (2768,[2,2,2,2,173]) .empty)) (5577,[3,11,13,13]) (.node (.node (.node .empty (5578,[2,2789]) .empty) (2769,[3,13,71]) .empty) (11197,[11197]) (.node .empty (2770,[2,5,277]) .empty))) (5580,[2,2,3,3,5,31]) (.node (.node (.node (.node .empty (2771,[17,163]) .empty) (2772,[2,2,3,3,7,11]) .empty) (8390,[2,5,839]) (.node (.node .empty (5582,[2,2791]) .empty) (2773,[47,59]) .empty)) (8392,[2,2,2,1049]) (.node (.node (.node .empty (2774,[2,19,73]) .empty) (2775,[3,5,5,37]) .empty) (11202,[2,3,1867]) (.node .empty (2776,[2,2,2,347]) .empty)))) (5585,[5,1117]) (.node (.node (.node (.node (.node .empty (2777,[2777]) .empty) (14013,[3,3,3,3,173]) .empty) (8396,[2,2,2099]) (.node (.node .empty (2778,[2,3,463]) .empty) (11206,[2,13,431]) .empty)) (2779,[7,397]) (.node (.node (.node .empty (19634,[2,9817]) .empty) (2780,[2,2,5,139]) .empty) (19635,[3,5,7,11,17]) (.node .empty (2781,[3,3,3,103]) .empty))) (2782,[2,13,107]) (.node (.node (.node (.node .empty (11209,[11,1019]) .empty) (11210,[2,5,19,59]) .empty) (2783,[11,11,23]) (.node (.node .empty (5593,[7,17,47]) .empty) (2784,[2,2,2,2,2,3,29]) .empty)) (5594,[2,2797]) (.node (.node (.node .empty (2785,[5,557]) .empty) (5595,[3,5,373]) .empty) (2786,[2,7,199]) (.node .empty (5596,[2,2,1399]) .empty)))))
theorem part0119_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 5532 5575 part0119 := by
  change part0119.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 5532 5575 = true
  decide +kernel

def part0120 : CertificateTree FactoredPoint := (.node (.node (.node (.node (.node (.node .empty (14024,[2,2,2,1753]) .empty) (2788,[2,2,17,41]) .empty) (2789,[2789]) (.node (.node .empty (5598,[2,3,3,311]) .empty) (2790,[2,3,3,5,31]) .empty)) (5599,[11,509]) (.node (.node (.node .empty (2791,[2791]) .empty) (5600,[2,2,2,2,2,5,5,7]) .empty) (2792,[2,2,2,349]) (.node .empty (5601,[3,1867]) .empty))) (2793,[3,7,7,19]) (.node (.node (.node (.node .empty (11220,[2,2,3,5,11,17]) .empty) (5603,[13,431]) .empty) (2794,[2,11,127]) (.node (.node .empty (22458,[2,3,19,197]) .empty) (2795,[5,13,43]) .empty)) (5605,[5,19,59]) (.node (.node (.node .empty (2796,[2,2,3,233]) .empty) (2797,[2797]) .empty) (8415,[3,3,5,11,17]) (.node .empty (2798,[2,1399]) .empty)))) (11225,[5,5,449]) (.node (.node (.node (.node (.node .empty (5608,[2,2,2,701]) .empty) (2799,[3,3,311]) .empty) (8418,[2,3,23,61]) (.node (.node .empty (2800,[2,2,2,2,5,5,7]) .empty) (2801,[2801]) .empty)) (5610,[2,3,5,11,17]) (.node (.node (.node .empty (11229,[3,19,197]) .empty) (2802,[2,3,467]) .empty) (2803,[2803]) (.node .empty (5612,[2,2,23,61]) .empty))) (2804,[2,2,701]) (.node (.node (.node (.node .empty (5613,[3,1871]) .empty) (8423,[8423]) .empty) (2805,[3,5,11,17]) (.node .empty (8424,[2,2,2,3,3,3,3,13]) .empty)) (2806,[2,23,61]) (.node (.node (.node .empty (5616,[2,2,2,2,3,3,3,13]) .empty) (2807,[7,401]) .empty) (2808,[2,2,2,3,3,3,13]) (.node .empty (5617,[41,137]) .empty)))))
theorem part0120_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 5576 5618 part0120 := by
  change part0120.checkRange (checkOddEntry sharedPrimes 53 26 [2,13]) 5576 5618 = true
  decide +kernel

def part0121 : CertificateTree FactoredPoint := .node part0119 (2787,[3,929]) part0120
theorem part0121_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 5532 5618 part0121 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 5532 5618
    part0119 part0120 (2787,[3,929]) (by decide +kernel) part0119_valid
    (by decide +kernel) part0120_valid

def part0122 : CertificateTree FactoredPoint := .node part0118 (5574,[2,3,929]) part0121
theorem part0122_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 5444 5618 part0122 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 5444 5618
    part0118 part0121 (5574,[2,3,929]) (by decide +kernel) part0118_valid
    (by decide +kernel) part0121_valid

def part0123 : CertificateTree FactoredPoint := .node part0115 (2721,[3,907]) part0122
theorem part0123_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 5268 5618 part0123 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 5268 5618
    part0115 part0122 (2721,[3,907]) (by decide +kernel) part0115_valid
    (by decide +kernel) part0122_valid

def part0124 : CertificateTree FactoredPoint := .node part0108 (5442,[2,3,907]) part0123
theorem part0124_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4917 5618 part0124 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 4917 5618
    part0108 part0123 (5442,[2,3,907]) (by decide +kernel) part0108_valid
    (by decide +kernel) part0123_valid

def part0125 : CertificateTree FactoredPoint := .node part0093 (2458,[2,1229]) part0124
theorem part0125_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 4215 5618 part0125 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 4215 5618
    part0093 part0124 (2458,[2,1229]) (by decide +kernel) part0093_valid
    (by decide +kernel) part0124_valid

def part0126 : CertificateTree FactoredPoint := .node part0062 (4916,[2,2,1229]) part0125
theorem part0126_valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2810 5618 part0126 := by
  exact CertificateTree.range_certified_node (checkOddEntry sharedPrimes 53 26 [2,13]) 2810 5618
    part0062 part0125 (4916,[2,2,1229]) (by decide +kernel) part0062_valid
    (by decide +kernel) part0125_valid

def data : CertificateTree FactoredPoint := part0126
theorem valid : CertificateTree.RangeCertified (checkOddEntry sharedPrimes 53 26 [2,13]) 2810 5618 data := by
  exact part0126_valid

end GeneralizedGoldbach.LargeCertificates.Odd53.B0001
