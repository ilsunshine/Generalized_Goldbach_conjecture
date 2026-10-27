module

public import GeneralizedGoldbach.LargeCertificates.CSV11.B0000
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0001
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0002
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0003
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0004
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0005
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0006
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0007
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0008
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0009
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0010
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0011
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0012
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0013
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0014
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0015
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0016
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0017
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0018
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0019
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0020
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0021
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0022
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0023
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0024
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0025
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0026
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0027
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0028
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0029
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0030
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0031
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0032
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0033
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0034
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0035
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0036
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0037
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0038
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0039
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0040
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0041
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0042
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0043
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0044
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0045
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0046
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0047
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0048
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0049
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0050
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0051
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0052
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0053
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0054
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0055
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0056
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0057
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0058
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0059
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0060
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0061
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0062
public import GeneralizedGoldbach.LargeCertificates.CSV11.B0063

/-! 全量有限证书：外部生成数据，内核检查覆盖及各项条件。 -/
@[expose] public section
namespace GeneralizedGoldbach.LargeCertificates.CSV11
open FullCertificate
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
def join0000 : CertificateTree NatFiniteRow := .node B0000.data ((2,[2],[2,2,2,17,2503]),(6,[2,3],[2,2,3,19,1493]),(7,[7],[7,7,6947])) B0001.data
theorem join0000_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 953 5532 join0000 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 953 5532
    B0000.data B0001.data ((2,[2],[2,2,2,17,2503]),(6,[2,3],[2,2,3,19,1493]),(7,[7],[7,7,6947])) (by decide +kernel) B0000.valid
    (by decide +kernel) B0001.valid

def join0001 : CertificateTree NatFiniteRow := .node B0002.data ((3,[3],[3,23,11903]),(10,[2,5],[2,2,5,5,43,191]),(2,[2],[2,2,205327])) B0003.data
theorem join0001_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 5533 10112 join0001 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 5533 10112
    B0002.data B0003.data ((3,[3],[3,23,11903]),(10,[2,5],[2,2,5,5,43,191]),(2,[2],[2,2,205327])) (by decide +kernel) B0002.valid
    (by decide +kernel) B0003.valid

def join0002 : CertificateTree NatFiniteRow := .node join0000 ((4,[2,2],[2,2,2,17,4271]),(6,[2,3],[2,3,131,739]),(2,[2],[2,290429])) join0001
theorem join0002_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 953 10112 join0002 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 953 10112
    join0000 join0001 ((4,[2,2],[2,2,2,17,4271]),(6,[2,3],[2,3,131,739]),(2,[2],[2,290429])) (by decide +kernel) join0000_valid
    (by decide +kernel) join0001_valid

def join0003 : CertificateTree NatFiniteRow := .node B0004.data ((3,[3],[3,163,2663]),(10,[2,5],[2,2,2,5,5,17,383]),(2,[2],[2,2,2,2,2,2,20347])) B0005.data
theorem join0003_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 10113 14692 join0003 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 10113 14692
    B0004.data B0005.data ((3,[3],[3,163,2663]),(10,[2,5],[2,2,2,5,5,17,383]),(2,[2],[2,2,2,2,2,2,20347])) (by decide +kernel) B0004.valid
    (by decide +kernel) B0005.valid

def join0004 : CertificateTree NatFiniteRow := .node B0006.data ((2,[2],[2,2,223,1999]),(1,[],[79,22571]),(3,[3],[3,3,3,66041])) B0007.data
theorem join0004_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 14693 19272 join0004 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 14693 19272
    B0006.data B0007.data ((2,[2],[2,2,223,1999]),(1,[],[79,22571]),(3,[3],[3,3,3,66041])) (by decide +kernel) B0006.valid
    (by decide +kernel) B0007.valid

def join0005 : CertificateTree NatFiniteRow := .node join0003 ((2,[2],[2,13,59333]),(1,[],[821,1879]),(3,[3],[3,514219])) join0004
theorem join0005_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 10113 19272 join0005 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 10113 19272
    join0003 join0004 ((2,[2],[2,13,59333]),(1,[],[821,1879]),(3,[3],[3,514219])) (by decide +kernel) join0003_valid
    (by decide +kernel) join0004_valid

def join0006 : CertificateTree NatFiniteRow := .node join0002 ((2,[2],[2,19,27941]),(6,[2,3],[2,3,311,569]),(3,[3],[3,3,117973])) join0005
theorem join0006_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 953 19272 join0006 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 953 19272
    join0002 join0005 ((2,[2],[2,19,27941]),(6,[2,3],[2,3,311,569]),(3,[3],[3,3,117973])) (by decide +kernel) join0002_valid
    (by decide +kernel) join0005_valid

def join0007 : CertificateTree NatFiniteRow := .node B0008.data ((3,[3],[3,59,12791]),(12,[2,2,3],[2,3,11,34303]),(2,[2],[2,2,2,283001])) B0009.data
theorem join0007_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 19273 23852 join0007 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 19273 23852
    B0008.data B0009.data ((3,[3],[3,59,12791]),(12,[2,2,3],[2,3,11,34303]),(2,[2],[2,2,2,283001])) (by decide +kernel) B0008.valid
    (by decide +kernel) B0009.valid

def join0008 : CertificateTree NatFiniteRow := .node B0010.data ((2,[2],[2,2,29,23663]),(1,[],[41,66949]),(3,[3],[3,11,223,373])) B0011.data
theorem join0008_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 23853 28432 join0008 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 23853 28432
    B0010.data B0011.data ((2,[2],[2,2,29,23663]),(1,[],[41,66949]),(3,[3],[3,11,223,373])) (by decide +kernel) B0010.valid
    (by decide +kernel) B0011.valid

def join0009 : CertificateTree NatFiniteRow := .node join0007 ((3,[3],[3,3,17,16369]),(1,[],[31,80789]),(2,[2],[2,11,11,79,131])) join0008
theorem join0009_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 19273 28432 join0009 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 19273 28432
    join0007 join0008 ((3,[3],[3,3,17,16369]),(1,[],[31,80789]),(2,[2],[2,11,11,79,131])) (by decide +kernel) join0007_valid
    (by decide +kernel) join0008_valid

def join0010 : CertificateTree NatFiniteRow := .node B0012.data ((2,[2],[2,2,2,2,37,5449]),(1,[],[683,4723]),(3,[3],[3,3,13,79,349])) B0013.data
theorem join0010_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 28433 33012 join0010 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 28433 33012
    B0012.data B0013.data ((2,[2],[2,2,2,2,37,5449]),(1,[],[683,4723]),(3,[3],[3,3,13,79,349])) (by decide +kernel) B0012.valid
    (by decide +kernel) B0013.valid

def join0011 : CertificateTree NatFiniteRow := .node B0014.data ((2,[2],[2,2,67,13831]),(1,[],[1657,2237]),(3,[3],[3,1235569])) B0015.data
theorem join0011_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 33013 37591 join0011 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 33013 37591
    B0014.data B0015.data ((2,[2],[2,2,67,13831]),(1,[],[1657,2237]),(3,[3],[3,1235569])) (by decide +kernel) B0014.valid
    (by decide +kernel) B0015.valid

def join0012 : CertificateTree NatFiniteRow := .node join0010 ((5,[5],[5,13,53327]),(10,[2,5],[2,5,5,5,5,47,59]),(2,[2],[2,1733129])) join0011
theorem join0012_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 28433 37591 join0012 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 28433 37591
    join0010 join0011 ((5,[5],[5,13,53327]),(10,[2,5],[2,5,5,5,5,47,59]),(2,[2],[2,1733129])) (by decide +kernel) join0010_valid
    (by decide +kernel) join0011_valid

def join0013 : CertificateTree NatFiniteRow := .node join0009 ((2,[2],[2,101,14779]),(6,[2,3],[2,3,3,23,7211]),(3,[3],[3,995119])) join0012
theorem join0013_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 19273 37591 join0013 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 19273 37591
    join0009 join0012 ((2,[2],[2,101,14779]),(6,[2,3],[2,3,3,23,7211]),(3,[3],[3,995119])) (by decide +kernel) join0009_valid
    (by decide +kernel) join0012_valid

def join0014 : CertificateTree NatFiniteRow := .node join0006 ((0,[],[]),(0,[],[]),(0,[],[])) join0013
theorem join0014_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 953 37591 join0014 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 953 37591
    join0006 join0013 ((0,[],[]),(0,[],[]),(0,[],[])) (by decide +kernel) join0006_valid
    (by decide +kernel) join0013_valid

def join0015 : CertificateTree NatFiniteRow := .node B0016.data ((2,[2],[4187503]),(10,[2,5],[5,13,23,2801]),(3,[3],[2,3,3,11,21149])) B0017.data
theorem join0015_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 37592 42171 join0015 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 37592 42171
    B0016.data B0017.data ((2,[2],[4187503]),(10,[2,5],[5,13,23,2801]),(3,[3],[2,3,3,11,21149])) (by decide +kernel) B0016.valid
    (by decide +kernel) B0017.valid

def join0016 : CertificateTree NatFiniteRow := .node B0018.data ((7,[7],[2,7,333457]),(1,[],[2,2,13,17,5281]),(2,[2],[641,7283])) B0019.data
theorem join0016_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 42172 46751 join0016 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 42172 46751
    B0018.data B0019.data ((7,[7],[2,7,333457]),(1,[],[2,2,13,17,5281]),(2,[2],[641,7283])) (by decide +kernel) B0018.valid
    (by decide +kernel) B0019.valid

def join0017 : CertificateTree NatFiniteRow := .node join0015 ((2,[2],[97,191,239]),(1,[],[2,2213977]),(3,[3],[2,2,2,2,3,29,3181])) join0016
theorem join0017_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 37592 46751 join0017 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 37592 46751
    join0015 join0016 ((2,[2],[97,191,239]),(1,[],[2,2213977]),(3,[3],[2,2,2,2,3,29,3181])) (by decide +kernel) join0015_valid
    (by decide +kernel) join0016_valid

def join0018 : CertificateTree NatFiniteRow := .node B0020.data ((2,[2],[5149303]),(10,[2,5],[5,1029859]),(8,[2,2,2],[113,45569])) B0021.data
theorem join0018_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 46752 51331 join0018 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 46752 51331
    B0020.data B0021.data ((2,[2],[5149303]),(10,[2,5],[5,1029859]),(8,[2,2,2],[113,45569])) (by decide +kernel) B0020.valid
    (by decide +kernel) B0021.valid

def join0019 : CertificateTree NatFiniteRow := .node B0022.data ((2,[2],[5630203]),(1,[],[2,2,1407551]),(3,[3],[2,3,3,3,41,2543])) B0023.data
theorem join0019_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 51332 55910 join0019 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 51332 55910
    B0022.data B0023.data ((2,[2],[5630203]),(1,[],[2,2,1407551]),(3,[3],[2,3,3,3,41,2543])) (by decide +kernel) B0022.valid
    (by decide +kernel) B0023.valid

def join0020 : CertificateTree NatFiniteRow := .node join0018 ((2,[2],[31,37,37,127]),(1,[],[2,2694877]),(3,[3],[2,2,2,3,71,3163])) join0019
theorem join0020_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 46752 55910 join0020 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 46752 55910
    join0018 join0019 ((2,[2],[31,37,37,127]),(1,[],[2,2694877]),(3,[3],[2,2,2,3,71,3163])) (by decide +kernel) join0018_valid
    (by decide +kernel) join0019_valid

def join0021 : CertificateTree NatFiniteRow := .node join0017 ((3,[3],[2,2,3,3,13,17,617]),(10,[2,5],[5,981769]),(2,[2],[61,80473])) join0020
theorem join0021_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 37592 55910 join0021 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 37592 55910
    join0017 join0020 ((3,[3],[2,2,3,3,13,17,617]),(10,[2,5],[5,981769]),(2,[2],[61,80473])) (by decide +kernel) join0017_valid
    (by decide +kernel) join0020_valid

def join0022 : CertificateTree NatFiniteRow := .node B0024.data ((2,[2],[2,599,5101]),(1,[],[31,31,6359]),(4,[2,2],[2,2,29,139,379])) B0025.data
theorem join0022_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 55911 60490 join0022 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 55911 60490
    B0024.data B0025.data ((2,[2],[2,599,5101]),(1,[],[31,31,6359]),(4,[2,2],[2,2,29,139,379])) (by decide +kernel) B0024.valid
    (by decide +kernel) B0025.valid

def join0023 : CertificateTree NatFiniteRow := .node B0026.data ((4,[2,2],[2,2,2,743,1109]),(14,[2,7],[2,7,17,27697]),(2,[2],[2,19,41,4231])) B0027.data
theorem join0023_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 60491 65070 join0023 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 60491 65070
    B0026.data B0027.data ((4,[2,2],[2,2,2,743,1109]),(14,[2,7],[2,7,17,27697]),(2,[2],[2,19,41,4231])) (by decide +kernel) B0026.valid
    (by decide +kernel) B0027.valid

def join0024 : CertificateTree NatFiniteRow := .node join0022 ((3,[3],[3,71,29819]),(1,[],[13,488573]),(2,[2],[2,2,2,793931])) join0023
theorem join0024_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 55911 65070 join0024 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 55911 65070
    join0022 join0023 ((3,[3],[3,71,29819]),(1,[],[13,488573]),(2,[2],[2,2,2,793931])) (by decide +kernel) join0022_valid
    (by decide +kernel) join0023_valid

def join0025 : CertificateTree NatFiniteRow := .node B0028.data ((2,[2],[2,389,9091]),(6,[2,3],[2,3,3,613,641]),(4,[2,2],[2,2,1768199])) B0029.data
theorem join0025_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 65071 69650 join0025 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 65071 69650
    B0028.data B0029.data ((2,[2],[2,389,9091]),(6,[2,3],[2,3,3,613,641]),(4,[2,2],[2,2,1768199])) (by decide +kernel) B0028.valid
    (by decide +kernel) B0029.valid

def join0026 : CertificateTree NatFiniteRow := .node B0030.data ((0,[],[]),(0,[],[]),(0,[],[])) B0031.data
theorem join0026_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 69651 74229 join0026 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 69651 74229
    B0030.data B0031.data ((0,[],[]),(0,[],[]),(0,[],[])) (by decide +kernel) B0030.valid
    (by decide +kernel) B0031.valid

def join0027 : CertificateTree NatFiniteRow := .node join0025 ((4,[2,2],[2,109,33547]),(1,[],[29,252181]),(2,[2],[2,2,2,2,2,228539])) join0026
theorem join0027_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 65071 74229 join0027 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 65071 74229
    join0025 join0026 ((4,[2,2],[2,109,33547]),(1,[],[29,252181]),(2,[2],[2,2,2,2,2,228539])) (by decide +kernel) join0025_valid
    (by decide +kernel) join0026_valid

def join0028 : CertificateTree NatFiniteRow := .node join0024 ((3,[3],[3,101,22549]),(14,[2,7],[2,2,2,2,7,53,1151]),(2,[2],[2,2,1708087])) join0027
theorem join0028_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 55911 74229 join0028 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 55911 74229
    join0024 join0027 ((3,[3],[3,101,22549]),(14,[2,7],[2,2,2,2,7,53,1151]),(2,[2],[2,2,1708087])) (by decide +kernel) join0024_valid
    (by decide +kernel) join0027_valid

def join0029 : CertificateTree NatFiniteRow := .node join0021 ((2,[2],[2,2,293,5009]),(21,[3,7],[3,3,3,7,89,349]),(3,[3],[3,3,652283])) join0028
theorem join0029_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 37592 74229 join0029 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 37592 74229
    join0021 join0028 ((2,[2],[2,2,293,5009]),(21,[3,7],[3,3,3,7,89,349]),(3,[3],[3,3,652283])) (by decide +kernel) join0021_valid
    (by decide +kernel) join0028_valid

def join0030 : CertificateTree NatFiniteRow := .node join0014 ((2,[2],[11,23,15601]),(1,[],[2,1973527]),(8,[2,2,2],[13,303619])) join0029
theorem join0030_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 953 74229 join0030 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 953 74229
    join0014 join0029 ((2,[2],[11,23,15601]),(1,[],[2,1973527]),(8,[2,2,2],[13,303619])) (by decide +kernel) join0014_valid
    (by decide +kernel) join0029_valid

def join0031 : CertificateTree NatFiniteRow := .node B0032.data ((3,[3],[2,2,3,19,131,269]),(10,[2,5],[5,1606897]),(2,[2],[61,131713])) B0033.data
theorem join0031_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 74230 78809 join0031 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 74230 78809
    B0032.data B0033.data ((3,[3],[2,2,3,19,131,269]),(10,[2,5],[5,1606897]),(2,[2],[61,131713])) (by decide +kernel) B0032.valid
    (by decide +kernel) B0033.valid

def join0032 : CertificateTree NatFiniteRow := .node B0034.data ((3,[3],[2,2,2,2,2,2,3,44351]),(1,[],[2,4257697]),(2,[2],[131,65003])) B0035.data
theorem join0032_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 78810 83389 join0032 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 78810 83389
    B0034.data B0035.data ((3,[3],[2,2,2,2,2,2,3,44351]),(1,[],[2,4257697]),(2,[2],[131,65003])) (by decide +kernel) B0034.valid
    (by decide +kernel) B0035.valid

def join0033 : CertificateTree NatFiniteRow := .node join0031 ((4,[2,2],[8274941]),(1,[],[2,2,2,2,2,2,2,2,2,2,8081]),(2,[2],[53,156131])) join0032
theorem join0033_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 74230 83389 join0033 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 74230 83389
    join0031 join0032 ((4,[2,2],[8274941]),(1,[],[2,2,2,2,2,2,2,2,2,2,8081]),(2,[2],[53,156131])) (by decide +kernel) join0031_valid
    (by decide +kernel) join0032_valid

def join0034 : CertificateTree NatFiniteRow := .node B0036.data ((0,[],[]),(0,[],[]),(0,[],[])) B0037.data
theorem join0034_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 83390 87969 join0034 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 83390 87969
    B0036.data B0037.data ((0,[],[]),(0,[],[]),(0,[],[])) (by decide +kernel) B0036.valid
    (by decide +kernel) B0037.valid

def join0035 : CertificateTree NatFiniteRow := .node B0038.data ((4,[2,2],[41,97,2383]),(12,[2,2,3],[3,3159061]),(2,[2],[11,861563])) B0039.data
theorem join0035_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 87970 92548 join0035 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 87970 92548
    B0038.data B0039.data ((4,[2,2],[41,97,2383]),(12,[2,2,3],[3,3159061]),(2,[2],[11,861563])) (by decide +kernel) B0038.valid
    (by decide +kernel) B0039.valid

def join0036 : CertificateTree NatFiniteRow := .node join0034 ((4,[2,2],[9236741]),(1,[],[2,2,2,11,43,2441]),(2,[2],[1511,6113])) join0035
theorem join0036_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 83390 92548 join0036 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 83390 92548
    join0034 join0035 ((4,[2,2],[9236741]),(1,[],[2,2,2,11,43,2441]),(2,[2],[1511,6113])) (by decide +kernel) join0034_valid
    (by decide +kernel) join0035_valid

def join0037 : CertificateTree NatFiniteRow := .node join0033 ((4,[2,2],[8755841]),(10,[2,5],[5,11,397,401]),(2,[2],[419,20897])) join0036
theorem join0037_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 74230 92548 join0037 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 74230 92548
    join0033 join0036 ((4,[2,2],[8755841]),(10,[2,5],[5,11,397,401]),(2,[2],[419,20897])) (by decide +kernel) join0033_valid
    (by decide +kernel) join0036_valid

def join0038 : CertificateTree NatFiniteRow := .node B0040.data ((3,[3],[3,3,13,13,6547]),(6,[2,3],[2,2,2,2,2,3,47,2207]),(2,[2],[2,2,17,23,6367])) B0041.data
theorem join0038_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 92549 97128 join0038 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 92549 97128
    B0040.data B0041.data ((3,[3],[3,3,13,13,6547]),(6,[2,3],[2,2,2,2,2,3,47,2207]),(2,[2],[2,2,17,23,6367])) (by decide +kernel) B0040.valid
    (by decide +kernel) B0041.valid

def join0039 : CertificateTree NatFiniteRow := .node B0042.data ((0,[],[]),(0,[],[]),(0,[],[])) B0043.data
theorem join0039_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 97129 101708 join0039 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 97129 101708
    B0042.data B0043.data ((0,[],[]),(0,[],[]),(0,[],[])) (by decide +kernel) B0042.valid
    (by decide +kernel) B0043.valid

def join0040 : CertificateTree NatFiniteRow := .node join0038 ((3,[3],[3,1723,1973]),(1,[],[43,237173]),(2,[2],[2,5099219])) join0039
theorem join0040_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 92549 101708 join0040 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 92549 101708
    join0038 join0039 ((3,[3],[3,1723,1973]),(1,[],[43,237173]),(2,[2],[2,5099219])) (by decide +kernel) join0038_valid
    (by decide +kernel) join0039_valid

def join0041 : CertificateTree NatFiniteRow := .node B0044.data ((2,[2],[2,2,11,248177]),(10,[2,5],[2,2,5,17,32117]),(3,[3],[3,3639929])) B0045.data
theorem join0041_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 101709 106288 join0041 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 101709 106288
    B0044.data B0045.data ((2,[2],[2,2,11,248177]),(10,[2,5],[2,2,5,17,32117]),(3,[3],[3,3639929])) (by decide +kernel) B0044.valid
    (by decide +kernel) B0045.valid

def join0042 : CertificateTree NatFiniteRow := .node B0046.data ((5,[5],[5,347,6571]),(1,[],[179,63691]),(2,[2],[2,2,2,2,13,59,929])) B0047.data
theorem join0042_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 106289 110867 join0042 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 106289 110867
    B0046.data B0047.data ((5,[5],[5,347,6571]),(1,[],[179,63691]),(2,[2],[2,2,2,2,13,59,929])) (by decide +kernel) B0046.valid
    (by decide +kernel) B0047.valid

def join0043 : CertificateTree NatFiniteRow := .node join0041 ((2,[2],[2,97,57527]),(1,[],[19,587381]),(3,[3],[3,11,383,883])) join0042
theorem join0043_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 101709 110867 join0043 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 101709 110867
    join0041 join0042 ((2,[2],[2,97,57527]),(1,[],[19,587381]),(3,[3],[3,11,383,883])) (by decide +kernel) join0041_valid
    (by decide +kernel) join0042_valid

def join0044 : CertificateTree NatFiniteRow := .node join0040 ((4,[2,2],[2,2,2,101,13217]),(1,[],[11,11,88259]),(2,[2],[2,5339669])) join0043
theorem join0044_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 92549 110867 join0044 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 92549 110867
    join0040 join0043 ((4,[2,2],[2,2,2,101,13217]),(1,[],[11,11,88259]),(2,[2],[2,5339669])) (by decide +kernel) join0040_valid
    (by decide +kernel) join0043_valid

def join0045 : CertificateTree NatFiniteRow := .node join0037 ((2,[2],[2,829,5861]),(12,[2,2,3],[2,2,2,3,181,2237]),(11,[11],[1607,6047])) join0044
theorem join0045_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 74230 110867 join0045 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 74230 110867
    join0037 join0044 ((2,[2],[2,829,5861]),(12,[2,2,3],[2,2,2,3,181,2237]),(11,[11],[1607,6047])) (by decide +kernel) join0037_valid
    (by decide +kernel) join0044_valid

def join0046 : CertificateTree NatFiniteRow := .node B0048.data ((0,[],[]),(0,[],[]),(0,[],[])) B0049.data
theorem join0046_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 110868 115447 join0046 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 110868 115447
    B0048.data B0049.data ((0,[],[]),(0,[],[]),(0,[],[])) (by decide +kernel) B0048.valid
    (by decide +kernel) B0049.valid

def join0047 : CertificateTree NatFiniteRow := .node B0050.data ((2,[2],[11,17,66109]),(1,[],[2,2,2,2,772649]),(3,[3],[2,3,3,3,3,3,3,61,139])) B0051.data
theorem join0047_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 115448 120027 join0047 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 115448 120027
    B0050.data B0051.data ((2,[2],[11,17,66109]),(1,[],[2,2,2,2,772649]),(3,[3],[2,3,3,3,3,3,3,61,139])) (by decide +kernel) B0050.valid
    (by decide +kernel) B0051.valid

def join0048 : CertificateTree NatFiniteRow := .node join0046 ((4,[2,2],[12121931]),(6,[2,3],[3,3,1346881]),(2,[2],[263,46091])) join0047
theorem join0048_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 110868 120027 join0048 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 110868 120027
    join0046 join0047 ((4,[2,2],[12121931]),(6,[2,3],[3,3,1346881]),(2,[2],[263,46091])) (by decide +kernel) join0046_valid
    (by decide +kernel) join0047_valid

def join0049 : CertificateTree NatFiniteRow := .node B0052.data ((5,[5],[2,2,2,2,5,160541]),(1,[],[2,2,3210821]),(2,[2],[43,298681])) B0053.data
theorem join0049_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 120028 124607 join0049 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 120028 124607
    B0052.data B0053.data ((5,[5],[2,2,2,2,5,160541]),(1,[],[2,2,3210821]),(2,[2],[43,298681])) (by decide +kernel) B0052.valid
    (by decide +kernel) B0053.valid

def join0050 : CertificateTree NatFiniteRow := .node B0054.data ((3,[3],[2,3,2220697]),(1,[],[2,2,2,1665523]),(2,[2],[103,129361])) B0055.data
theorem join0050_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 124608 129186 join0050 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 124608 129186
    B0054.data B0055.data ((3,[3],[2,3,2220697]),(1,[],[2,2,2,1665523]),(2,[2],[103,129361])) (by decide +kernel) B0054.valid
    (by decide +kernel) B0055.valid

def join0051 : CertificateTree NatFiniteRow := .node join0049 ((3,[3],[2,2,3,3,363437]),(6,[2,3],[3,4361243]),(2,[2],[13,1006441])) join0050
theorem join0051_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 120028 129186 join0051 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 120028 129186
    join0049 join0050 ((3,[3],[2,2,3,3,363437]),(6,[2,3],[3,4361243]),(2,[2],[13,1006441])) (by decide +kernel) join0049_valid
    (by decide +kernel) join0050_valid

def join0052 : CertificateTree NatFiniteRow := .node join0048 ((2,[2],[19,31,21397]),(1,[],[2,67,163,577]),(3,[3],[2,2,2,2,3,11,23869])) join0051
theorem join0052_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 110868 129186 join0052 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 110868 129186
    join0048 join0051 ((2,[2],[19,31,21397]),(1,[],[2,67,163,577]),(3,[3],[2,2,2,2,3,11,23869])) (by decide +kernel) join0048_valid
    (by decide +kernel) join0051_valid

def join0053 : CertificateTree NatFiniteRow := .node B0056.data ((3,[3],[3,409,11251]),(1,[],[311,44389]),(2,[2],[2,11,43,14593])) B0057.data
theorem join0053_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 129187 133766 join0053 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 129187 133766
    B0056.data B0057.data ((3,[3],[3,409,11251]),(1,[],[311,44389]),(2,[2],[2,11,43,14593])) (by decide +kernel) B0056.valid
    (by decide +kernel) B0057.valid

def join0054 : CertificateTree NatFiniteRow := .node B0058.data ((3,[3],[3,83,57373]),(6,[2,3],[2,3,67,35537]),(2,[2],[2,7142939])) B0059.data
theorem join0054_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 133767 138346 join0054 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 133767 138346
    B0058.data B0059.data ((3,[3],[3,83,57373]),(6,[2,3],[2,3,67,35537]),(2,[2],[2,7142939])) (by decide +kernel) B0058.valid
    (by decide +kernel) B0059.valid

def join0055 : CertificateTree NatFiniteRow := .node join0053 ((2,[2],[2,2,431,8147]),(1,[],[631,22259]),(3,[3],[3,3,3,11,19,19,131])) join0054
theorem join0055_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 129187 138346 join0055 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 129187 138346
    join0053 join0054 ((2,[2],[2,2,431,8147]),(1,[],[631,22259]),(3,[3],[3,3,3,11,19,19,131])) (by decide +kernel) join0053_valid
    (by decide +kernel) join0054_valid

def join0056 : CertificateTree NatFiniteRow := .node B0060.data ((4,[2,2],[2,2,2,887,2081]),(1,[],[83,177913]),(2,[2],[2,13,17,33409])) B0061.data
theorem join0056_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 138347 142926 join0056 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 138347 142926
    B0060.data B0061.data ((4,[2,2],[2,2,2,887,2081]),(1,[],[83,177913]),(2,[2],[2,13,17,33409])) (by decide +kernel) B0060.valid
    (by decide +kernel) B0061.valid

def join0057 : CertificateTree NatFiniteRow := .node B0062.data ((3,[3],[3,929,5471]),(14,[2,7],[2,7,23,47353]),(2,[2],[2,29,151,1741])) B0063.data
theorem join0057_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 142927 147505 join0057 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 142927 147505
    B0062.data B0063.data ((3,[3],[3,929,5471]),(14,[2,7],[2,7,23,47353]),(2,[2],[2,29,151,1741])) (by decide +kernel) B0062.valid
    (by decide +kernel) B0063.valid

def join0058 : CertificateTree NatFiniteRow := .node join0056 ((3,[3],[3,673,7433]),(10,[2,5],[2,2,5,61,12301]),(2,[2],[2,2,3751807])) join0057
theorem join0058_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 138347 147505 join0058 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 138347 147505
    join0056 join0057 ((3,[3],[3,673,7433]),(10,[2,5],[2,2,5,61,12301]),(2,[2],[2,2,3751807])) (by decide +kernel) join0056_valid
    (by decide +kernel) join0057_valid

def join0059 : CertificateTree NatFiniteRow := .node join0055 ((17,[17],[17,89,9601]),(10,[2,5],[2,2,2,2,5,107,1697]),(2,[2],[2,2,2,83,131,167])) join0058
theorem join0059_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 129187 147505 join0059 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 129187 147505
    join0055 join0058 ((17,[17],[17,89,9601]),(10,[2,5],[2,2,2,2,5,107,1697]),(2,[2],[2,2,2,83,131,167])) (by decide +kernel) join0055_valid
    (by decide +kernel) join0058_valid

def join0060 : CertificateTree NatFiniteRow := .node join0052 ((2,[2],[2,2,2,2,523,1621]),(6,[2,3],[2,2,3,83,13619]),(3,[3],[3,4521509])) join0059
theorem join0060_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 110868 147505 join0060 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 110868 147505
    join0052 join0059 ((2,[2],[2,2,2,2,523,1621]),(6,[2,3],[2,2,3,83,13619]),(3,[3],[3,4521509])) (by decide +kernel) join0052_valid
    (by decide +kernel) join0059_valid

def join0061 : CertificateTree NatFiniteRow := .node join0045 ((2,[2],[11641033]),(1,[],[2,19,113,2711]),(3,[3],[2,2,2,3,3,13,12437])) join0060
theorem join0061_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 74230 147505 join0061 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 74230 147505
    join0045 join0060 ((2,[2],[11641033]),(1,[],[2,19,113,2711]),(3,[3],[2,2,2,3,3,13,12437])) (by decide +kernel) join0045_valid
    (by decide +kernel) join0060_valid

def join0062 : CertificateTree NatFiniteRow := .node join0030 ((3,[3],[2,3,1299007]),(1,[],[2,2,1948511]),(2,[2],[67,116329])) join0061
theorem join0062_valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 953 147505 join0062 := by
  exact CertificateTree.range_certified_node (checkFiniteEntry sharedPrimes 11 105) 953 147505
    join0030 join0061 ((3,[3],[2,3,1299007]),(1,[],[2,2,1948511]),(2,[2],[67,116329])) (by decide +kernel) join0030_valid
    (by decide +kernel) join0061_valid

def data : CertificateTree NatFiniteRow := join0062
theorem valid : CertificateTree.RangeCertified (checkFiniteEntry sharedPrimes 11 105) 953 147505 data := by
  exact join0062_valid

end GeneralizedGoldbach.LargeCertificates.CSV11
