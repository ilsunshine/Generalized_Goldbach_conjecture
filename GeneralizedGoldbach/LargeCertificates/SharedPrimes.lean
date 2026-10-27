module

public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0000
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0001
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0002
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0003
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0004
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0005
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0006
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0007
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0008
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0009
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0010
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0011
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0012
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0013
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0014
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0015
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0016
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0017
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0018
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0019
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0020
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0021
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0022
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0023
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0024
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0025
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0026
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0027
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0028
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0029
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0030
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0031
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0032
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0033
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0034
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0035
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0036
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0037
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0038
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0039
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0040
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0041
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0042
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0043
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0044
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0045
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0046
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0047
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0048
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0049
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0050
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0051
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0052
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0053
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0054
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0055
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0056
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0057
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0058
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0059
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0060
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0061
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0062
public import GeneralizedGoldbach.LargeCertificates.PrimeBlocks.B0063

@[expose] public section
namespace GeneralizedGoldbach.LargeCertificates
open FullCertificate
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def primeJoin0000 : PrimeTree := .node PrimeBlocks.B0000.data (160981,(.pock 160981 [(2,1,(.small 2)),(2,0,(.small 3)),(2,0,(.small 5)),(2,0,(.small 2683))])) PrimeBlocks.B0001.data
theorem primeJoin0000_valid : PrimeTreeCertified primeJoin0000 := by
  exact prime_node_valid PrimeBlocks.B0000.data PrimeBlocks.B0001.data (160981,(.pock 160981 [(2,1,(.small 2)),(2,0,(.small 3)),(2,0,(.small 5)),(2,0,(.small 2683))])) PrimeBlocks.B0000.valid (by decide +kernel) PrimeBlocks.B0001.valid

def primeJoin0001 : PrimeTree := .node PrimeBlocks.B0002.data (288733,(.pock 288733 [(2,1,(.small 2)),(2,0,(.small 3)),(2,0,(.small 24061))])) PrimeBlocks.B0003.data
theorem primeJoin0001_valid : PrimeTreeCertified primeJoin0001 := by
  exact prime_node_valid PrimeBlocks.B0002.data PrimeBlocks.B0003.data (288733,(.pock 288733 [(2,1,(.small 2)),(2,0,(.small 3)),(2,0,(.small 24061))])) PrimeBlocks.B0002.valid (by decide +kernel) PrimeBlocks.B0003.valid

def primeJoin0002 : PrimeTree := .node primeJoin0000 (224047,(.pock 224047 [(3,0,(.small 2)),(3,4,(.small 3)),(2,0,(.small 461))])) primeJoin0001
theorem primeJoin0002_valid : PrimeTreeCertified primeJoin0002 := by
  exact prime_node_valid primeJoin0000 primeJoin0001 (224047,(.pock 224047 [(3,0,(.small 2)),(3,4,(.small 3)),(2,0,(.small 461))])) primeJoin0000_valid (by decide +kernel) primeJoin0001_valid

def primeJoin0003 : PrimeTree := .node PrimeBlocks.B0004.data (421163,(.pock 421163 [(2,0,(.small 2)),(2,0,(.small 7)),(2,0,(.small 67)),(2,0,(.small 449))])) PrimeBlocks.B0005.data
theorem primeJoin0003_valid : PrimeTreeCertified primeJoin0003 := by
  exact prime_node_valid PrimeBlocks.B0004.data PrimeBlocks.B0005.data (421163,(.pock 421163 [(2,0,(.small 2)),(2,0,(.small 7)),(2,0,(.small 67)),(2,0,(.small 449))])) PrimeBlocks.B0004.valid (by decide +kernel) PrimeBlocks.B0005.valid

def primeJoin0004 : PrimeTree := .node PrimeBlocks.B0006.data (557927,(.pock 557927 [(5,0,(.small 2)),(3,0,(.small 83)),(2,0,(.small 3361))])) PrimeBlocks.B0007.data
theorem primeJoin0004_valid : PrimeTreeCertified primeJoin0004 := by
  exact prime_node_valid PrimeBlocks.B0006.data PrimeBlocks.B0007.data (557927,(.pock 557927 [(5,0,(.small 2)),(3,0,(.small 83)),(2,0,(.small 3361))])) PrimeBlocks.B0006.valid (by decide +kernel) PrimeBlocks.B0007.valid

def primeJoin0005 : PrimeTree := .node primeJoin0003 (488921,(.pock 488921 [(3,2,(.small 2)),(2,0,(.small 5)),(2,0,(.small 17)),(2,0,(.small 719))])) primeJoin0004
theorem primeJoin0005_valid : PrimeTreeCertified primeJoin0005 := by
  exact prime_node_valid primeJoin0003 primeJoin0004 (488921,(.pock 488921 [(3,2,(.small 2)),(2,0,(.small 5)),(2,0,(.small 17)),(2,0,(.small 719))])) primeJoin0003_valid (by decide +kernel) primeJoin0004_valid

def primeJoin0006 : PrimeTree := .node primeJoin0002 (354023,(.pock 354023 [(5,0,(.small 2)),(2,0,(.pock 177011 [(2,0,(.small 2)),(2,0,(.small 5)),(2,0,(.small 31)),(2,0,(.small 571))]))])) primeJoin0005
theorem primeJoin0006_valid : PrimeTreeCertified primeJoin0006 := by
  exact prime_node_valid primeJoin0002 primeJoin0005 (354023,(.pock 354023 [(5,0,(.small 2)),(2,0,(.pock 177011 [(2,0,(.small 2)),(2,0,(.small 5)),(2,0,(.small 31)),(2,0,(.small 571))]))])) primeJoin0002_valid (by decide +kernel) primeJoin0005_valid

def primeJoin0007 : PrimeTree := .node PrimeBlocks.B0008.data (699449,(.pock 699449 [(3,2,(.small 2)),(2,0,(.small 17)),(3,0,(.small 37)),(2,0,(.small 139))])) PrimeBlocks.B0009.data
theorem primeJoin0007_valid : PrimeTreeCertified primeJoin0007 := by
  exact prime_node_valid PrimeBlocks.B0008.data PrimeBlocks.B0009.data (699449,(.pock 699449 [(3,2,(.small 2)),(2,0,(.small 17)),(3,0,(.small 37)),(2,0,(.small 139))])) PrimeBlocks.B0008.valid (by decide +kernel) PrimeBlocks.B0009.valid

def primeJoin0008 : PrimeTree := .node PrimeBlocks.B0010.data (847507,(.pock 847507 [(2,0,(.small 2)),(2,0,(.small 3)),(2,0,(.small 11)),(2,0,(.small 12841))])) PrimeBlocks.B0011.data
theorem primeJoin0008_valid : PrimeTreeCertified primeJoin0008 := by
  exact prime_node_valid PrimeBlocks.B0010.data PrimeBlocks.B0011.data (847507,(.pock 847507 [(2,0,(.small 2)),(2,0,(.small 3)),(2,0,(.small 11)),(2,0,(.small 12841))])) PrimeBlocks.B0010.valid (by decide +kernel) PrimeBlocks.B0011.valid

def primeJoin0009 : PrimeTree := .node primeJoin0007 (772313,(.pock 772313 [(3,2,(.small 2)),(2,0,(.small 19)),(2,0,(.small 5081))])) primeJoin0008
theorem primeJoin0009_valid : PrimeTreeCertified primeJoin0009 := by
  exact prime_node_valid primeJoin0007 primeJoin0008 (772313,(.pock 772313 [(3,2,(.small 2)),(2,0,(.small 19)),(2,0,(.small 5081))])) primeJoin0007_valid (by decide +kernel) primeJoin0008_valid

def primeJoin0010 : PrimeTree := .node PrimeBlocks.B0012.data (1005133,(.pock 1005133 [(2,1,(.small 2)),(3,0,(.small 3)),(2,0,(.small 83761))])) PrimeBlocks.B0013.data
theorem primeJoin0010_valid : PrimeTreeCertified primeJoin0010 := by
  exact prime_node_valid PrimeBlocks.B0012.data PrimeBlocks.B0013.data (1005133,(.pock 1005133 [(2,1,(.small 2)),(3,0,(.small 3)),(2,0,(.small 83761))])) PrimeBlocks.B0012.valid (by decide +kernel) PrimeBlocks.B0013.valid

def primeJoin0011 : PrimeTree := .node PrimeBlocks.B0014.data (1168987,(.pock 1168987 [(2,0,(.small 2)),(3,0,(.small 3)),(2,0,(.small 7)),(2,0,(.small 13)),(2,0,(.small 2141))])) PrimeBlocks.B0015.data
theorem primeJoin0011_valid : PrimeTreeCertified primeJoin0011 := by
  exact prime_node_valid PrimeBlocks.B0014.data PrimeBlocks.B0015.data (1168987,(.pock 1168987 [(2,0,(.small 2)),(3,0,(.small 3)),(2,0,(.small 7)),(2,0,(.small 13)),(2,0,(.small 2141))])) PrimeBlocks.B0014.valid (by decide +kernel) PrimeBlocks.B0015.valid

def primeJoin0012 : PrimeTree := .node primeJoin0010 (1085989,(.pock 1085989 [(2,1,(.small 2)),(5,0,(.small 3)),(2,0,(.small 90499))])) primeJoin0011
theorem primeJoin0012_valid : PrimeTreeCertified primeJoin0012 := by
  exact prime_node_valid primeJoin0010 primeJoin0011 (1085989,(.pock 1085989 [(2,1,(.small 2)),(5,0,(.small 3)),(2,0,(.small 90499))])) primeJoin0010_valid (by decide +kernel) primeJoin0011_valid

def primeJoin0013 : PrimeTree := .node primeJoin0009 (924697,(.pock 924697 [(5,2,(.small 2)),(2,3,(.small 3)),(2,0,(.small 1427))])) primeJoin0012
theorem primeJoin0013_valid : PrimeTreeCertified primeJoin0013 := by
  exact prime_node_valid primeJoin0009 primeJoin0012 (924697,(.pock 924697 [(5,2,(.small 2)),(2,3,(.small 3)),(2,0,(.small 1427))])) primeJoin0009_valid (by decide +kernel) primeJoin0012_valid

def primeJoin0014 : PrimeTree := .node primeJoin0006 (627859,(.pock 627859 [(2,0,(.small 2)),(2,2,(.small 3)),(2,0,(.small 7)),(3,0,(.small 11)),(2,0,(.small 151))])) primeJoin0013
theorem primeJoin0014_valid : PrimeTreeCertified primeJoin0014 := by
  exact prime_node_valid primeJoin0006 primeJoin0013 (627859,(.pock 627859 [(2,0,(.small 2)),(2,2,(.small 3)),(2,0,(.small 7)),(3,0,(.small 11)),(2,0,(.small 151))])) primeJoin0006_valid (by decide +kernel) primeJoin0013_valid

def primeJoin0015 : PrimeTree := .node PrimeBlocks.B0016.data (1343893,(.pock 1343893 [(2,1,(.small 2)),(7,0,(.small 3)),(2,0,(.small 11)),(2,0,(.small 10181))])) PrimeBlocks.B0017.data
theorem primeJoin0015_valid : PrimeTreeCertified primeJoin0015 := by
  exact prime_node_valid PrimeBlocks.B0016.data PrimeBlocks.B0017.data (1343893,(.pock 1343893 [(2,1,(.small 2)),(7,0,(.small 3)),(2,0,(.small 11)),(2,0,(.small 10181))])) PrimeBlocks.B0016.valid (by decide +kernel) PrimeBlocks.B0017.valid

def primeJoin0016 : PrimeTree := .node PrimeBlocks.B0018.data (1529393,(.pock 1529393 [(3,3,(.small 2)),(2,0,(.small 61)),(2,0,(.small 1567))])) PrimeBlocks.B0019.data
theorem primeJoin0016_valid : PrimeTreeCertified primeJoin0016 := by
  exact prime_node_valid PrimeBlocks.B0018.data PrimeBlocks.B0019.data (1529393,(.pock 1529393 [(3,3,(.small 2)),(2,0,(.small 61)),(2,0,(.small 1567))])) PrimeBlocks.B0018.valid (by decide +kernel) PrimeBlocks.B0019.valid

def primeJoin0017 : PrimeTree := .node primeJoin0015 (1435237,(.pock 1435237 [(2,1,(.small 2)),(2,0,(.small 3)),(2,0,(.small 11)),(2,0,(.small 83)),(2,0,(.small 131))])) primeJoin0016
theorem primeJoin0017_valid : PrimeTreeCertified primeJoin0017 := by
  exact prime_node_valid primeJoin0015 primeJoin0016 (1435237,(.pock 1435237 [(2,1,(.small 2)),(2,0,(.small 3)),(2,0,(.small 11)),(2,0,(.small 83)),(2,0,(.small 131))])) primeJoin0015_valid (by decide +kernel) primeJoin0016_valid

def primeJoin0018 : PrimeTree := .node PrimeBlocks.B0020.data (1731221,(.pock 1731221 [(2,1,(.small 2)),(2,0,(.small 5)),(2,0,(.small 86561))])) PrimeBlocks.B0021.data
theorem primeJoin0018_valid : PrimeTreeCertified primeJoin0018 := by
  exact prime_node_valid PrimeBlocks.B0020.data PrimeBlocks.B0021.data (1731221,(.pock 1731221 [(2,1,(.small 2)),(2,0,(.small 5)),(2,0,(.small 86561))])) PrimeBlocks.B0020.valid (by decide +kernel) PrimeBlocks.B0021.valid

def primeJoin0019 : PrimeTree := .node PrimeBlocks.B0022.data (1954573,(.pock 1954573 [(2,1,(.small 2)),(2,0,(.small 3)),(2,0,(.pock 162881 [(3,5,(.small 2)),(2,0,(.small 5)),(2,0,(.small 509))]))])) PrimeBlocks.B0023.data
theorem primeJoin0019_valid : PrimeTreeCertified primeJoin0019 := by
  exact prime_node_valid PrimeBlocks.B0022.data PrimeBlocks.B0023.data (1954573,(.pock 1954573 [(2,1,(.small 2)),(2,0,(.small 3)),(2,0,(.pock 162881 [(3,5,(.small 2)),(2,0,(.small 5)),(2,0,(.small 509))]))])) PrimeBlocks.B0022.valid (by decide +kernel) PrimeBlocks.B0023.valid

def primeJoin0020 : PrimeTree := .node primeJoin0018 (1839347,(.pock 1839347 [(2,0,(.small 2)),(2,0,(.small 337)),(2,0,(.small 2729))])) primeJoin0019
theorem primeJoin0020_valid : PrimeTreeCertified primeJoin0020 := by
  exact prime_node_valid primeJoin0018 primeJoin0019 (1839347,(.pock 1839347 [(2,0,(.small 2)),(2,0,(.small 337)),(2,0,(.small 2729))])) primeJoin0018_valid (by decide +kernel) primeJoin0019_valid

def primeJoin0021 : PrimeTree := .node primeJoin0017 (1626881,(.pock 1626881 [(3,7,(.small 2)),(3,0,(.small 5)),(2,0,(.small 31)),(2,0,(.small 41))])) primeJoin0020
theorem primeJoin0021_valid : PrimeTreeCertified primeJoin0021 := by
  exact prime_node_valid primeJoin0017 primeJoin0020 (1626881,(.pock 1626881 [(3,7,(.small 2)),(3,0,(.small 5)),(2,0,(.small 31)),(2,0,(.small 41))])) primeJoin0017_valid (by decide +kernel) primeJoin0020_valid

def primeJoin0022 : PrimeTree := .node PrimeBlocks.B0024.data (2189249,(.pock 2189249 [(3,5,(.small 2)),(2,0,(.small 79)),(2,0,(.small 433))])) PrimeBlocks.B0025.data
theorem primeJoin0022_valid : PrimeTreeCertified primeJoin0022 := by
  exact prime_node_valid PrimeBlocks.B0024.data PrimeBlocks.B0025.data (2189249,(.pock 2189249 [(3,5,(.small 2)),(2,0,(.small 79)),(2,0,(.small 433))])) PrimeBlocks.B0024.valid (by decide +kernel) PrimeBlocks.B0025.valid

def primeJoin0023 : PrimeTree := .node PrimeBlocks.B0026.data (2437741,(.pock 2437741 [(2,1,(.small 2)),(2,1,(.small 3)),(3,0,(.small 5)),(2,0,(.small 29)),(2,0,(.small 467))])) PrimeBlocks.B0027.data
theorem primeJoin0023_valid : PrimeTreeCertified primeJoin0023 := by
  exact prime_node_valid PrimeBlocks.B0026.data PrimeBlocks.B0027.data (2437741,(.pock 2437741 [(2,1,(.small 2)),(2,1,(.small 3)),(3,0,(.small 5)),(2,0,(.small 29)),(2,0,(.small 467))])) PrimeBlocks.B0026.valid (by decide +kernel) PrimeBlocks.B0027.valid

def primeJoin0024 : PrimeTree := .node primeJoin0022 (2309347,(.pock 2309347 [(2,0,(.small 2)),(2,1,(.small 3)),(2,0,(.small 13)),(2,0,(.small 71)),(2,0,(.small 139))])) primeJoin0023
theorem primeJoin0024_valid : PrimeTreeCertified primeJoin0024 := by
  exact prime_node_valid primeJoin0022 primeJoin0023 (2309347,(.pock 2309347 [(2,0,(.small 2)),(2,1,(.small 3)),(2,0,(.small 13)),(2,0,(.small 71)),(2,0,(.small 139))])) primeJoin0022_valid (by decide +kernel) primeJoin0023_valid

def primeJoin0025 : PrimeTree := .node PrimeBlocks.B0028.data (2710759,(.pock 2710759 [(3,0,(.small 2)),(11,0,(.small 3)),(2,0,(.pock 451793 [(3,3,(.small 2)),(2,0,(.small 11)),(2,0,(.small 17)),(2,0,(.small 151))]))])) PrimeBlocks.B0029.data
theorem primeJoin0025_valid : PrimeTreeCertified primeJoin0025 := by
  exact prime_node_valid PrimeBlocks.B0028.data PrimeBlocks.B0029.data (2710759,(.pock 2710759 [(3,0,(.small 2)),(11,0,(.small 3)),(2,0,(.pock 451793 [(3,3,(.small 2)),(2,0,(.small 11)),(2,0,(.small 17)),(2,0,(.small 151))]))])) PrimeBlocks.B0028.valid (by decide +kernel) PrimeBlocks.B0029.valid

def primeJoin0026 : PrimeTree := .node PrimeBlocks.B0030.data (3002743,(.pock 3002743 [(3,0,(.small 2)),(3,1,(.small 3)),(2,0,(.small 23)),(2,0,(.small 7253))])) PrimeBlocks.B0031.data
theorem primeJoin0026_valid : PrimeTreeCertified primeJoin0026 := by
  exact prime_node_valid PrimeBlocks.B0030.data PrimeBlocks.B0031.data (3002743,(.pock 3002743 [(3,0,(.small 2)),(3,1,(.small 3)),(2,0,(.small 23)),(2,0,(.small 7253))])) PrimeBlocks.B0030.valid (by decide +kernel) PrimeBlocks.B0031.valid

def primeJoin0027 : PrimeTree := .node primeJoin0025 (2857319,(.pock 2857319 [(11,0,(.small 2)),(2,0,(.small 47)),(2,0,(.small 113)),(2,0,(.small 269))])) primeJoin0026
theorem primeJoin0027_valid : PrimeTreeCertified primeJoin0027 := by
  exact prime_node_valid primeJoin0025 primeJoin0026 (2857319,(.pock 2857319 [(11,0,(.small 2)),(2,0,(.small 47)),(2,0,(.small 113)),(2,0,(.small 269))])) primeJoin0025_valid (by decide +kernel) primeJoin0026_valid

def primeJoin0028 : PrimeTree := .node primeJoin0024 (2568191,(.pock 2568191 [(13,0,(.small 2)),(2,0,(.small 5)),(3,0,(.small 17)),(2,0,(.small 15107))])) primeJoin0027
theorem primeJoin0028_valid : PrimeTreeCertified primeJoin0028 := by
  exact prime_node_valid primeJoin0024 primeJoin0027 (2568191,(.pock 2568191 [(13,0,(.small 2)),(2,0,(.small 5)),(3,0,(.small 17)),(2,0,(.small 15107))])) primeJoin0024_valid (by decide +kernel) primeJoin0027_valid

def primeJoin0029 : PrimeTree := .node primeJoin0021 (2070283,(.pock 2070283 [(2,0,(.small 2)),(2,0,(.small 3)),(2,0,(.pock 345047 [(5,0,(.small 2)),(2,0,(.small 13)),(2,0,(.small 23)),(2,0,(.small 577))]))])) primeJoin0028
theorem primeJoin0029_valid : PrimeTreeCertified primeJoin0029 := by
  exact prime_node_valid primeJoin0021 primeJoin0028 (2070283,(.pock 2070283 [(2,0,(.small 2)),(2,0,(.small 3)),(2,0,(.pock 345047 [(5,0,(.small 2)),(2,0,(.small 13)),(2,0,(.small 23)),(2,0,(.small 577))]))])) primeJoin0021_valid (by decide +kernel) primeJoin0028_valid

def primeJoin0030 : PrimeTree := .node primeJoin0014 (1256243,(.pock 1256243 [(2,0,(.small 2)),(2,0,(.small 13)),(2,0,(.small 19)),(2,0,(.small 2543))])) primeJoin0029
theorem primeJoin0030_valid : PrimeTreeCertified primeJoin0030 := by
  exact prime_node_valid primeJoin0014 primeJoin0029 (1256243,(.pock 1256243 [(2,0,(.small 2)),(2,0,(.small 13)),(2,0,(.small 19)),(2,0,(.small 2543))])) primeJoin0014_valid (by decide +kernel) primeJoin0029_valid

def primeJoin0031 : PrimeTree := .node PrimeBlocks.B0032.data (3309661,(.pock 3309661 [(2,1,(.small 2)),(2,5,(.small 3)),(2,0,(.small 5)),(2,0,(.small 227))])) PrimeBlocks.B0033.data
theorem primeJoin0031_valid : PrimeTreeCertified primeJoin0031 := by
  exact prime_node_valid PrimeBlocks.B0032.data PrimeBlocks.B0033.data (3309661,(.pock 3309661 [(2,1,(.small 2)),(2,5,(.small 3)),(2,0,(.small 5)),(2,0,(.small 227))])) PrimeBlocks.B0032.valid (by decide +kernel) PrimeBlocks.B0033.valid

def primeJoin0032 : PrimeTree := .node PrimeBlocks.B0034.data (3661271,(.pock 3661271 [(11,0,(.small 2)),(2,0,(.small 5)),(2,0,(.pock 366127 [(3,0,(.small 2)),(2,0,(.small 3)),(2,0,(.small 139)),(2,0,(.small 439))]))])) PrimeBlocks.B0035.data
theorem primeJoin0032_valid : PrimeTreeCertified primeJoin0032 := by
  exact prime_node_valid PrimeBlocks.B0034.data PrimeBlocks.B0035.data (3661271,(.pock 3661271 [(11,0,(.small 2)),(2,0,(.small 5)),(2,0,(.pock 366127 [(3,0,(.small 2)),(2,0,(.small 3)),(2,0,(.small 139)),(2,0,(.small 439))]))])) PrimeBlocks.B0034.valid (by decide +kernel) PrimeBlocks.B0035.valid

def primeJoin0033 : PrimeTree := .node primeJoin0031 (3481321,(.pock 3481321 [(11,2,(.small 2)),(3,0,(.small 3)),(2,0,(.small 5)),(2,0,(.small 67)),(2,0,(.small 433))])) primeJoin0032
theorem primeJoin0033_valid : PrimeTreeCertified primeJoin0033 := by
  exact prime_node_valid primeJoin0031 primeJoin0032 (3481321,(.pock 3481321 [(11,2,(.small 2)),(3,0,(.small 3)),(2,0,(.small 5)),(2,0,(.small 67)),(2,0,(.small 433))])) primeJoin0031_valid (by decide +kernel) primeJoin0032_valid

def primeJoin0034 : PrimeTree := .node PrimeBlocks.B0036.data (4064881,(.pock 4064881 [(11,3,(.small 2)),(2,0,(.small 3)),(2,0,(.small 5)),(2,0,(.small 16937))])) PrimeBlocks.B0037.data
theorem primeJoin0034_valid : PrimeTreeCertified primeJoin0034 := by
  exact prime_node_valid PrimeBlocks.B0036.data PrimeBlocks.B0037.data (4064881,(.pock 4064881 [(11,3,(.small 2)),(2,0,(.small 3)),(2,0,(.small 5)),(2,0,(.small 16937))])) PrimeBlocks.B0036.valid (by decide +kernel) PrimeBlocks.B0037.valid

def primeJoin0035 : PrimeTree := .node PrimeBlocks.B0038.data (4498223,(.pock 4498223 [(5,0,(.small 2)),(2,0,(.small 443)),(2,0,(.small 5077))])) PrimeBlocks.B0039.data
theorem primeJoin0035_valid : PrimeTreeCertified primeJoin0035 := by
  exact prime_node_valid PrimeBlocks.B0038.data PrimeBlocks.B0039.data (4498223,(.pock 4498223 [(5,0,(.small 2)),(2,0,(.small 443)),(2,0,(.small 5077))])) PrimeBlocks.B0038.valid (by decide +kernel) PrimeBlocks.B0039.valid

def primeJoin0036 : PrimeTree := .node primeJoin0034 (4284809,(.pock 4284809 [(3,2,(.small 2)),(2,0,(.small 11)),(2,0,(.small 23)),(2,0,(.small 29)),(2,0,(.small 73))])) primeJoin0035
theorem primeJoin0036_valid : PrimeTreeCertified primeJoin0036 := by
  exact prime_node_valid primeJoin0034 primeJoin0035 (4284809,(.pock 4284809 [(3,2,(.small 2)),(2,0,(.small 11)),(2,0,(.small 23)),(2,0,(.small 29)),(2,0,(.small 73))])) primeJoin0034_valid (by decide +kernel) primeJoin0035_valid

def primeJoin0037 : PrimeTree := .node primeJoin0033 (3854681,(.pock 3854681 [(3,2,(.small 2)),(2,0,(.small 5)),(2,0,(.small 29)),(2,0,(.small 3323))])) primeJoin0036
theorem primeJoin0037_valid : PrimeTreeCertified primeJoin0037 := by
  exact prime_node_valid primeJoin0033 primeJoin0036 (3854681,(.pock 3854681 [(3,2,(.small 2)),(2,0,(.small 5)),(2,0,(.small 29)),(2,0,(.small 3323))])) primeJoin0033_valid (by decide +kernel) primeJoin0036_valid

def primeJoin0038 : PrimeTree := .node PrimeBlocks.B0040.data (4936909,(.pock 4936909 [(2,1,(.small 2)),(3,0,(.small 3)),(2,0,(.pock 411409 [(7,3,(.small 2)),(5,1,(.small 3)),(2,0,(.small 2857))]))])) PrimeBlocks.B0041.data
theorem primeJoin0038_valid : PrimeTreeCertified primeJoin0038 := by
  exact prime_node_valid PrimeBlocks.B0040.data PrimeBlocks.B0041.data (4936909,(.pock 4936909 [(2,1,(.small 2)),(3,0,(.small 3)),(2,0,(.pock 411409 [(7,3,(.small 2)),(5,1,(.small 3)),(2,0,(.small 2857))]))])) PrimeBlocks.B0040.valid (by decide +kernel) PrimeBlocks.B0041.valid

def primeJoin0039 : PrimeTree := .node PrimeBlocks.B0042.data (5460907,(.pock 5460907 [(2,0,(.small 2)),(2,0,(.small 3)),(2,0,(.small 11)),(2,0,(.small 97)),(2,0,(.small 853))])) PrimeBlocks.B0043.data
theorem primeJoin0039_valid : PrimeTreeCertified primeJoin0039 := by
  exact prime_node_valid PrimeBlocks.B0042.data PrimeBlocks.B0043.data (5460907,(.pock 5460907 [(2,0,(.small 2)),(2,0,(.small 3)),(2,0,(.small 11)),(2,0,(.small 97)),(2,0,(.small 853))])) PrimeBlocks.B0042.valid (by decide +kernel) PrimeBlocks.B0043.valid

def primeJoin0040 : PrimeTree := .node primeJoin0038 (5177969,(.pock 5177969 [(3,3,(.small 2)),(2,0,(.pock 323623 [(3,0,(.small 2)),(3,2,(.small 3)),(2,0,(.small 13)),(2,0,(.small 461))]))])) primeJoin0039
theorem primeJoin0040_valid : PrimeTreeCertified primeJoin0040 := by
  exact prime_node_valid primeJoin0038 primeJoin0039 (5177969,(.pock 5177969 [(3,3,(.small 2)),(2,0,(.pock 323623 [(3,0,(.small 2)),(3,2,(.small 3)),(2,0,(.small 13)),(2,0,(.small 461))]))])) primeJoin0038_valid (by decide +kernel) primeJoin0039_valid

def primeJoin0041 : PrimeTree := .node PrimeBlocks.B0044.data (6051407,(.pock 6051407 [(5,0,(.small 2)),(2,0,(.pock 3025703 [(5,0,(.small 2)),(2,0,(.small 1223)),(2,0,(.small 1237))]))])) PrimeBlocks.B0045.data
theorem primeJoin0041_valid : PrimeTreeCertified primeJoin0041 := by
  exact prime_node_valid PrimeBlocks.B0044.data PrimeBlocks.B0045.data (6051407,(.pock 6051407 [(5,0,(.small 2)),(2,0,(.pock 3025703 [(5,0,(.small 2)),(2,0,(.small 1223)),(2,0,(.small 1237))]))])) PrimeBlocks.B0044.valid (by decide +kernel) PrimeBlocks.B0045.valid

def primeJoin0042 : PrimeTree := .node PrimeBlocks.B0046.data (6674219,(.pock 6674219 [(2,0,(.small 2)),(2,0,(.pock 3337109 [(2,1,(.small 2)),(2,0,(.pock 834277 [(2,1,(.small 2)),(3,0,(.small 3)),(2,0,(.small 37)),(2,0,(.small 1879))]))]))])) PrimeBlocks.B0047.data
theorem primeJoin0042_valid : PrimeTreeCertified primeJoin0042 := by
  exact prime_node_valid PrimeBlocks.B0046.data PrimeBlocks.B0047.data (6674219,(.pock 6674219 [(2,0,(.small 2)),(2,0,(.pock 3337109 [(2,1,(.small 2)),(2,0,(.pock 834277 [(2,1,(.small 2)),(3,0,(.small 3)),(2,0,(.small 37)),(2,0,(.small 1879))]))]))])) PrimeBlocks.B0046.valid (by decide +kernel) PrimeBlocks.B0047.valid

def primeJoin0043 : PrimeTree := .node primeJoin0041 (6341149,(.pock 6341149 [(2,1,(.small 2)),(3,1,(.small 3)),(2,0,(.small 11)),(2,0,(.small 67)),(2,0,(.small 239))])) primeJoin0042
theorem primeJoin0043_valid : PrimeTreeCertified primeJoin0043 := by
  exact prime_node_valid primeJoin0041 primeJoin0042 (6341149,(.pock 6341149 [(2,1,(.small 2)),(3,1,(.small 3)),(2,0,(.small 11)),(2,0,(.small 67)),(2,0,(.small 239))])) primeJoin0041_valid (by decide +kernel) primeJoin0042_valid

def primeJoin0044 : PrimeTree := .node primeJoin0040 (5749871,(.pock 5749871 [(7,0,(.small 2)),(2,0,(.small 5)),(2,0,(.small 7)),(2,0,(.small 82141))])) primeJoin0043
theorem primeJoin0044_valid : PrimeTreeCertified primeJoin0044 := by
  exact prime_node_valid primeJoin0040 primeJoin0043 (5749871,(.pock 5749871 [(7,0,(.small 2)),(2,0,(.small 5)),(2,0,(.small 7)),(2,0,(.small 82141))])) primeJoin0040_valid (by decide +kernel) primeJoin0043_valid

def primeJoin0045 : PrimeTree := .node primeJoin0037 (4711997,(.pock 4711997 [(2,1,(.small 2)),(2,0,(.small 179)),(2,0,(.small 6581))])) primeJoin0044
theorem primeJoin0045_valid : PrimeTreeCertified primeJoin0045 := by
  exact prime_node_valid primeJoin0037 primeJoin0044 (4711997,(.pock 4711997 [(2,1,(.small 2)),(2,0,(.small 179)),(2,0,(.small 6581))])) primeJoin0037_valid (by decide +kernel) primeJoin0044_valid

def primeJoin0046 : PrimeTree := .node PrimeBlocks.B0048.data (7375817,(.pock 7375817 [(3,2,(.small 2)),(2,0,(.small 7)),(2,0,(.pock 131711 [(13,0,(.small 2)),(2,0,(.small 5)),(2,0,(.small 13171))]))])) PrimeBlocks.B0049.data
theorem primeJoin0046_valid : PrimeTreeCertified primeJoin0046 := by
  exact prime_node_valid PrimeBlocks.B0048.data PrimeBlocks.B0049.data (7375817,(.pock 7375817 [(3,2,(.small 2)),(2,0,(.small 7)),(2,0,(.pock 131711 [(13,0,(.small 2)),(2,0,(.small 5)),(2,0,(.small 13171))]))])) PrimeBlocks.B0048.valid (by decide +kernel) PrimeBlocks.B0049.valid

def primeJoin0047 : PrimeTree := .node PrimeBlocks.B0050.data (8255411,(.pock 8255411 [(2,0,(.small 2)),(3,0,(.small 5)),(2,0,(.small 181)),(2,0,(.small 4561))])) PrimeBlocks.B0051.data
theorem primeJoin0047_valid : PrimeTreeCertified primeJoin0047 := by
  exact prime_node_valid PrimeBlocks.B0050.data PrimeBlocks.B0051.data (8255411,(.pock 8255411 [(2,0,(.small 2)),(3,0,(.small 5)),(2,0,(.small 181)),(2,0,(.small 4561))])) PrimeBlocks.B0050.valid (by decide +kernel) PrimeBlocks.B0051.valid

def primeJoin0048 : PrimeTree := .node primeJoin0046 (7782161,(.pock 7782161 [(3,3,(.small 2)),(2,0,(.small 5)),(2,0,(.small 89)),(2,0,(.small 1093))])) primeJoin0047
theorem primeJoin0048_valid : PrimeTreeCertified primeJoin0048 := by
  exact prime_node_valid primeJoin0046 primeJoin0047 (7782161,(.pock 7782161 [(3,3,(.small 2)),(2,0,(.small 5)),(2,0,(.small 89)),(2,0,(.small 1093))])) primeJoin0046_valid (by decide +kernel) primeJoin0047_valid

def primeJoin0049 : PrimeTree := .node PrimeBlocks.B0052.data (9199429,(.pock 9199429 [(2,1,(.small 2)),(2,0,(.small 3)),(2,0,(.small 7)),(2,0,(.pock 109517 [(2,1,(.small 2)),(2,0,(.small 11)),(2,0,(.small 19)),(2,0,(.small 131))]))])) PrimeBlocks.B0053.data
theorem primeJoin0049_valid : PrimeTreeCertified primeJoin0049 := by
  exact prime_node_valid PrimeBlocks.B0052.data PrimeBlocks.B0053.data (9199429,(.pock 9199429 [(2,1,(.small 2)),(2,0,(.small 3)),(2,0,(.small 7)),(2,0,(.pock 109517 [(2,1,(.small 2)),(2,0,(.small 11)),(2,0,(.small 19)),(2,0,(.small 131))]))])) PrimeBlocks.B0052.valid (by decide +kernel) PrimeBlocks.B0053.valid

def primeJoin0050 : PrimeTree := .node PrimeBlocks.B0054.data (10331011,(.pock 10331011 [(2,0,(.small 2)),(2,2,(.small 3)),(2,0,(.small 5)),(2,0,(.small 83)),(2,0,(.small 461))])) PrimeBlocks.B0055.data
theorem primeJoin0050_valid : PrimeTreeCertified primeJoin0050 := by
  exact prime_node_valid PrimeBlocks.B0054.data PrimeBlocks.B0055.data (10331011,(.pock 10331011 [(2,0,(.small 2)),(2,2,(.small 3)),(2,0,(.small 5)),(2,0,(.small 83)),(2,0,(.small 461))])) PrimeBlocks.B0054.valid (by decide +kernel) PrimeBlocks.B0055.valid

def primeJoin0051 : PrimeTree := .node primeJoin0049 (9719603,(.pock 9719603 [(2,0,(.small 2)),(2,0,(.small 19)),(2,0,(.small 137)),(2,0,(.small 1867))])) primeJoin0050
theorem primeJoin0051_valid : PrimeTreeCertified primeJoin0051 := by
  exact prime_node_valid primeJoin0049 primeJoin0050 (9719603,(.pock 9719603 [(2,0,(.small 2)),(2,0,(.small 19)),(2,0,(.small 137)),(2,0,(.small 1867))])) primeJoin0049_valid (by decide +kernel) primeJoin0050_valid

def primeJoin0052 : PrimeTree := .node primeJoin0048 (8727757,(.pock 8727757 [(2,1,(.small 2)),(2,0,(.small 3)),(2,0,(.pock 727313 [(3,3,(.small 2)),(2,0,(.small 131)),(2,0,(.small 347))]))])) primeJoin0051
theorem primeJoin0052_valid : PrimeTreeCertified primeJoin0052 := by
  exact prime_node_valid primeJoin0048 primeJoin0051 (8727757,(.pock 8727757 [(2,1,(.small 2)),(2,0,(.small 3)),(2,0,(.pock 727313 [(3,3,(.small 2)),(2,0,(.small 131)),(2,0,(.small 347))]))])) primeJoin0048_valid (by decide +kernel) primeJoin0051_valid

def primeJoin0053 : PrimeTree := .node PrimeBlocks.B0056.data (11704873,(.pock 11704873 [(5,2,(.small 2)),(3,0,(.small 3)),(2,0,(.pock 487703 [(5,0,(.small 2)),(2,0,(.pock 243851 [(2,0,(.small 2)),(2,1,(.small 5)),(2,0,(.small 4877))]))]))])) PrimeBlocks.B0057.data
theorem primeJoin0053_valid : PrimeTreeCertified primeJoin0053 := by
  exact prime_node_valid PrimeBlocks.B0056.data PrimeBlocks.B0057.data (11704873,(.pock 11704873 [(5,2,(.small 2)),(3,0,(.small 3)),(2,0,(.pock 487703 [(5,0,(.small 2)),(2,0,(.pock 243851 [(2,0,(.small 2)),(2,1,(.small 5)),(2,0,(.small 4877))]))]))])) PrimeBlocks.B0056.valid (by decide +kernel) PrimeBlocks.B0057.valid

def primeJoin0054 : PrimeTree := .node PrimeBlocks.B0058.data (13288799,(.pock 13288799 [(19,0,(.small 2)),(2,1,(.small 17)),(2,0,(.small 83)),(2,0,(.small 277))])) PrimeBlocks.B0059.data
theorem primeJoin0054_valid : PrimeTreeCertified primeJoin0054 := by
  exact prime_node_valid PrimeBlocks.B0058.data PrimeBlocks.B0059.data (13288799,(.pock 13288799 [(19,0,(.small 2)),(2,1,(.small 17)),(2,0,(.small 83)),(2,0,(.small 277))])) PrimeBlocks.B0058.valid (by decide +kernel) PrimeBlocks.B0059.valid

def primeJoin0055 : PrimeTree := .node primeJoin0053 (12415031,(.pock 12415031 [(13,0,(.small 2)),(2,0,(.small 5)),(2,0,(.small 97)),(2,0,(.small 12799))])) primeJoin0054
theorem primeJoin0055_valid : PrimeTreeCertified primeJoin0055 := by
  exact prime_node_valid primeJoin0053 primeJoin0054 (12415031,(.pock 12415031 [(13,0,(.small 2)),(2,0,(.small 5)),(2,0,(.small 97)),(2,0,(.small 12799))])) primeJoin0053_valid (by decide +kernel) primeJoin0054_valid

def primeJoin0056 : PrimeTree := .node PrimeBlocks.B0060.data (15670769,(.pock 15670769 [(3,3,(.small 2)),(2,0,(.pock 979423 [(3,0,(.small 2)),(2,0,(.small 3)),(2,0,(.small 239)),(2,0,(.small 683))]))])) PrimeBlocks.B0061.data
theorem primeJoin0056_valid : PrimeTreeCertified primeJoin0056 := by
  exact prime_node_valid PrimeBlocks.B0060.data PrimeBlocks.B0061.data (15670769,(.pock 15670769 [(3,3,(.small 2)),(2,0,(.pock 979423 [(3,0,(.small 2)),(2,0,(.small 3)),(2,0,(.small 239)),(2,0,(.small 683))]))])) PrimeBlocks.B0060.valid (by decide +kernel) PrimeBlocks.B0061.valid

def primeJoin0057 : PrimeTree := .node PrimeBlocks.B0062.data (20884079,(.pock 20884079 [(13,0,(.small 2)),(2,0,(.small 19)),(2,0,(.small 463)),(2,0,(.small 1187))])) PrimeBlocks.B0063.data
theorem primeJoin0057_valid : PrimeTreeCertified primeJoin0057 := by
  exact prime_node_valid PrimeBlocks.B0062.data PrimeBlocks.B0063.data (20884079,(.pock 20884079 [(13,0,(.small 2)),(2,0,(.small 19)),(2,0,(.small 463)),(2,0,(.small 1187))])) PrimeBlocks.B0062.valid (by decide +kernel) PrimeBlocks.B0063.valid

def primeJoin0058 : PrimeTree := .node primeJoin0056 (17655569,(.pock 17655569 [(3,3,(.small 2)),(2,0,(.small 7)),(2,0,(.pock 157639 [(3,0,(.small 2)),(3,0,(.small 3)),(2,0,(.small 13)),(2,0,(.small 43)),(2,0,(.small 47))]))])) primeJoin0057
theorem primeJoin0058_valid : PrimeTreeCertified primeJoin0058 := by
  exact prime_node_valid primeJoin0056 primeJoin0057 (17655569,(.pock 17655569 [(3,3,(.small 2)),(2,0,(.small 7)),(2,0,(.pock 157639 [(3,0,(.small 2)),(3,0,(.small 3)),(2,0,(.small 13)),(2,0,(.small 43)),(2,0,(.small 47))]))])) primeJoin0056_valid (by decide +kernel) primeJoin0057_valid

def primeJoin0059 : PrimeTree := .node primeJoin0055 (14411297,(.pock 14411297 [(3,4,(.small 2)),(2,0,(.small 71)),(2,0,(.small 6343))])) primeJoin0058
theorem primeJoin0059_valid : PrimeTreeCertified primeJoin0059 := by
  exact prime_node_valid primeJoin0055 primeJoin0058 (14411297,(.pock 14411297 [(3,4,(.small 2)),(2,0,(.small 71)),(2,0,(.small 6343))])) primeJoin0055_valid (by decide +kernel) primeJoin0058_valid

def primeJoin0060 : PrimeTree := .node primeJoin0052 (11017451,(.pock 11017451 [(2,0,(.small 2)),(7,1,(.small 5)),(2,0,(.small 179)),(2,0,(.small 1231))])) primeJoin0059
theorem primeJoin0060_valid : PrimeTreeCertified primeJoin0060 := by
  exact prime_node_valid primeJoin0052 primeJoin0059 (11017451,(.pock 11017451 [(2,0,(.small 2)),(7,1,(.small 5)),(2,0,(.small 179)),(2,0,(.small 1231))])) primeJoin0052_valid (by decide +kernel) primeJoin0059_valid

def primeJoin0061 : PrimeTree := .node primeJoin0045 (7015417,(.pock 7015417 [(5,2,(.small 2)),(2,0,(.small 3)),(2,0,(.pock 292309 [(2,1,(.small 2)),(2,0,(.small 3)),(2,0,(.small 24359))]))])) primeJoin0060
theorem primeJoin0061_valid : PrimeTreeCertified primeJoin0061 := by
  exact prime_node_valid primeJoin0045 primeJoin0060 (7015417,(.pock 7015417 [(5,2,(.small 2)),(2,0,(.small 3)),(2,0,(.pock 292309 [(2,1,(.small 2)),(2,0,(.small 3)),(2,0,(.small 24359))]))])) primeJoin0045_valid (by decide +kernel) primeJoin0060_valid

def primeJoin0062 : PrimeTree := .node primeJoin0030 (3153223,(.pock 3153223 [(3,0,(.small 2)),(2,2,(.small 3)),(2,0,(.small 58393))])) primeJoin0061
theorem primeJoin0062_valid : PrimeTreeCertified primeJoin0062 := by
  exact prime_node_valid primeJoin0030 primeJoin0061 (3153223,(.pock 3153223 [(3,0,(.small 2)),(2,2,(.small 3)),(2,0,(.small 58393))])) primeJoin0030_valid (by decide +kernel) primeJoin0061_valid

def sharedPrimes : PrimeTree := primeJoin0062
theorem sharedPrimes_valid : PrimeTreeCertified sharedPrimes := by
  exact primeJoin0062_valid

end GeneralizedGoldbach.LargeCertificates
