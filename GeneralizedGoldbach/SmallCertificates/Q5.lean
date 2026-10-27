module

public import GeneralizedGoldbach.CertifiedCheckers
public import GeneralizedGoldbach.Certificates

/-!
论文命题 5.1 [prop:q3-q5]；
论文引理 C.4 [lem:numeric-chain]；
论文第 C 节 [app:certificates]。
q=5 的链与奇见证数据；链点经完整因子表认证，有限类与两个符号的覆盖由精确计算建立。
-/
@[expose] public section
namespace GeneralizedGoldbach.SmallCertificates.Q5

def primeCert2 : Hex.Nat.PrimeCert := .small 2

def primeCert3 : Hex.Nat.PrimeCert := .small 3

def primeCert7 : Hex.Nat.PrimeCert := .small 7

def primeCert11 : Hex.Nat.PrimeCert := .small 11

def primeCert13 : Hex.Nat.PrimeCert := .small 13

def primeCert17 : Hex.Nat.PrimeCert := .small 17

def primeCert19 : Hex.Nat.PrimeCert := .small 19

def primeCert23 : Hex.Nat.PrimeCert := .small 23

def primeCert29 : Hex.Nat.PrimeCert := .small 29

def primeCert31 : Hex.Nat.PrimeCert := .small 31

def primeCert37 : Hex.Nat.PrimeCert := .small 37

def primeCert41 : Hex.Nat.PrimeCert := .small 41

def primeCert43 : Hex.Nat.PrimeCert := .small 43

def primeCert47 : Hex.Nat.PrimeCert := .small 47

def primeCert53 : Hex.Nat.PrimeCert := .small 53

def primeCert59 : Hex.Nat.PrimeCert := .small 59

def primeCert61 : Hex.Nat.PrimeCert := .small 61

def primeCert67 : Hex.Nat.PrimeCert := .small 67

def primeCert71 : Hex.Nat.PrimeCert := .small 71

def primeCert73 : Hex.Nat.PrimeCert := .small 73

def primeCert89 : Hex.Nat.PrimeCert := .small 89

def primeCert101 : Hex.Nat.PrimeCert := .small 101

def primeCert103 : Hex.Nat.PrimeCert := .small 103

def primeCert107 : Hex.Nat.PrimeCert := .small 107

def primeCert109 : Hex.Nat.PrimeCert := .small 109

def primeCert113 : Hex.Nat.PrimeCert := .small 113

def primeCert127 : Hex.Nat.PrimeCert := .small 127

def primeCert131 : Hex.Nat.PrimeCert := .small 131

def primeCert139 : Hex.Nat.PrimeCert := .small 139

def primeCert149 : Hex.Nat.PrimeCert := .small 149

def primeCert151 : Hex.Nat.PrimeCert := .small 151

def primeCert163 : Hex.Nat.PrimeCert := .small 163

def primeCert167 : Hex.Nat.PrimeCert := .small 167

def primeCert173 : Hex.Nat.PrimeCert := .small 173

def primeCert181 : Hex.Nat.PrimeCert := .small 181

def primeCert191 : Hex.Nat.PrimeCert := .small 191

def primeCert193 : Hex.Nat.PrimeCert := .small 193

def primeCert197 : Hex.Nat.PrimeCert := .small 197

def primeCert199 : Hex.Nat.PrimeCert := .small 199

def primeCert211 : Hex.Nat.PrimeCert := .small 211

def primeCert223 : Hex.Nat.PrimeCert := .small 223

def primeCert227 : Hex.Nat.PrimeCert := .small 227

def primeCert229 : Hex.Nat.PrimeCert := .small 229

def primeCert239 : Hex.Nat.PrimeCert := .small 239

def primeCert251 : Hex.Nat.PrimeCert := .small 251

def primeCert269 : Hex.Nat.PrimeCert := .small 269

def primeCert271 : Hex.Nat.PrimeCert := .small 271

def primeCert293 : Hex.Nat.PrimeCert := .small 293

def primeCert313 : Hex.Nat.PrimeCert := .small 313

def primeCert317 : Hex.Nat.PrimeCert := .small 317

def primeCert337 : Hex.Nat.PrimeCert := .small 337

def primeCert347 : Hex.Nat.PrimeCert := .small 347

def primeCert367 : Hex.Nat.PrimeCert := .small 367

def primeCert373 : Hex.Nat.PrimeCert := .small 373

def primeCert401 : Hex.Nat.PrimeCert := .small 401

def primeCert431 : Hex.Nat.PrimeCert := .small 431

def primeCert443 : Hex.Nat.PrimeCert := .small 443

def primeCert449 : Hex.Nat.PrimeCert := .small 449

def primeCert457 : Hex.Nat.PrimeCert := .small 457

def primeCert461 : Hex.Nat.PrimeCert := .small 461

def primeCert467 : Hex.Nat.PrimeCert := .small 467

def primeCert479 : Hex.Nat.PrimeCert := .small 479

def primeCert569 : Hex.Nat.PrimeCert := .small 569

def primeCert587 : Hex.Nat.PrimeCert := .small 587

def primeCert593 : Hex.Nat.PrimeCert := .small 593

def primeCert617 : Hex.Nat.PrimeCert := .small 617

def primeCert641 : Hex.Nat.PrimeCert := .small 641

def primeCert647 : Hex.Nat.PrimeCert := .small 647

def primeCert677 : Hex.Nat.PrimeCert := .small 677

def primeCert709 : Hex.Nat.PrimeCert := .small 709

def primeCert719 : Hex.Nat.PrimeCert := .small 719

def primeCert727 : Hex.Nat.PrimeCert := .small 727

def primeCert743 : Hex.Nat.PrimeCert := .small 743

def primeCert839 : Hex.Nat.PrimeCert := .small 839

def primeCert883 : Hex.Nat.PrimeCert := .small 883

def primeCert887 : Hex.Nat.PrimeCert := .small 887

def primeCert907 : Hex.Nat.PrimeCert := .small 907

def primeCert911 : Hex.Nat.PrimeCert := .small 911

def primeCert929 : Hex.Nat.PrimeCert := .small 929

def primeCert1039 : Hex.Nat.PrimeCert := .small 1039

def primeCert1097 : Hex.Nat.PrimeCert := .small 1097

def primeCert1103 : Hex.Nat.PrimeCert := .small 1103

def primeCert1117 : Hex.Nat.PrimeCert := .small 1117

def primeCert1301 : Hex.Nat.PrimeCert := .small 1301

def primeCert1367 : Hex.Nat.PrimeCert := .small 1367

def primeCert1381 : Hex.Nat.PrimeCert := .small 1381

def primeCert1613 : Hex.Nat.PrimeCert := .small 1613

def primeCert1697 : Hex.Nat.PrimeCert := .small 1697

def primeCert1721 : Hex.Nat.PrimeCert := .small 1721

def primeCert1723 : Hex.Nat.PrimeCert := .small 1723

def primeCert2027 : Hex.Nat.PrimeCert := .small 2027

def primeCert2069 : Hex.Nat.PrimeCert := .small 2069

def primeCert2081 : Hex.Nat.PrimeCert := .small 2081

def primeCert2083 : Hex.Nat.PrimeCert := .small 2083

def primeCert2131 : Hex.Nat.PrimeCert := .small 2131

def primeCert2141 : Hex.Nat.PrimeCert := .small 2141

def primeCert2153 : Hex.Nat.PrimeCert := .small 2153

def primeCert2503 : Hex.Nat.PrimeCert := .small 2503

def primeCert2579 : Hex.Nat.PrimeCert := .small 2579

def primeCert2593 : Hex.Nat.PrimeCert := .small 2593

def primeCert2617 : Hex.Nat.PrimeCert := .small 2617

def primeCert2647 : Hex.Nat.PrimeCert := .small 2647

def primeCert2659 : Hex.Nat.PrimeCert := .small 2659

def primeCert2683 : Hex.Nat.PrimeCert := .small 2683

def primeCert3137 : Hex.Nat.PrimeCert := .small 3137

def primeCert3203 : Hex.Nat.PrimeCert := .small 3203

def primeCert3209 : Hex.Nat.PrimeCert := .small 3209

def primeCert3251 : Hex.Nat.PrimeCert := .small 3251

def primeCert3307 : Hex.Nat.PrimeCert := .small 3307

def primeCert3319 : Hex.Nat.PrimeCert := .small 3319

def primeCert3343 : Hex.Nat.PrimeCert := .small 3343

def primeCert3917 : Hex.Nat.PrimeCert := .small 3917

def primeCert3989 : Hex.Nat.PrimeCert := .small 3989

def primeCert4003 : Hex.Nat.PrimeCert := .small 4003

def primeCert4051 : Hex.Nat.PrimeCert := .small 4051

def primeCert4129 : Hex.Nat.PrimeCert := .small 4129

def primeCert4153 : Hex.Nat.PrimeCert := .small 4153

def primeCert4157 : Hex.Nat.PrimeCert := .small 4157

def primeCert4159 : Hex.Nat.PrimeCert := .small 4159

def primeCert4969 : Hex.Nat.PrimeCert := .small 4969

def primeCert5003 : Hex.Nat.PrimeCert := .small 5003

def primeCert5051 : Hex.Nat.PrimeCert := .small 5051

def primeCert5153 : Hex.Nat.PrimeCert := .small 5153

def primeCert5167 : Hex.Nat.PrimeCert := .small 5167

def primeCert5179 : Hex.Nat.PrimeCert := .small 5179

def primeCert6199 : Hex.Nat.PrimeCert := .small 6199

def primeCert6311 : Hex.Nat.PrimeCert := .small 6311

def primeCert6397 : Hex.Nat.PrimeCert := .small 6397

def primeCert6427 : Hex.Nat.PrimeCert := .small 6427

def primeCert6449 : Hex.Nat.PrimeCert := .small 6449

def primeCert8059 : Hex.Nat.PrimeCert := .small 8059

def primeCert9811 : Hex.Nat.PrimeCert := .small 9811

def primeCert10039 : Hex.Nat.PrimeCert := .small 10039

def primeCert12251 : Hex.Nat.PrimeCert := .small 12251

def primeCert12401 : Hex.Nat.PrimeCert := .small 12401

def primeCert12413 : Hex.Nat.PrimeCert := .small 12413

def primeCert12437 : Hex.Nat.PrimeCert := .small 12437

def evenRow0 : ChainRow := ⟨2, -1, [24882, 31002, 38562, 47682, 59562, 74322]⟩

def evenRow0Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (11, primeCert11), (13, primeCert13), (29, primeCert29)], [(2, primeCert2), (3, primeCert3), (5167, primeCert5167)], [(2, primeCert2), (3, primeCert3), (6427, primeCert6427)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (883, primeCert883)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (1103, primeCert1103)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (4129, primeCert4129)]]

theorem evenRow0_valid : NumericChainValid 5 40 100000 300000 3 evenRow0 := by
  exact Certified.numericChainValid_of_certificate 5 40 100000 300000 3
    evenRow0 evenRow0Factors (by decide +kernel)

def evenRow1 : ChainRow := ⟨2, 1, [24522, 30282, 37362, 46482, 58002, 72402]⟩

def evenRow1Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (61, primeCert61), (67, primeCert67)], [(2, primeCert2), (3, primeCert3), (7, primeCert7), (7, primeCert7), (103, primeCert103)], [(2, primeCert2), (3, primeCert3), (13, primeCert13), (479, primeCert479)], [(2, primeCert2), (3, primeCert3), (61, primeCert61), (127, primeCert127)], [(2, primeCert2), (3, primeCert3), (7, primeCert7), (1381, primeCert1381)], [(2, primeCert2), (3, primeCert3), (11, primeCert11), (1097, primeCert1097)]]

theorem evenRow1_valid : NumericChainValid 5 40 100000 300000 3 evenRow1 := by
  exact Certified.numericChainValid_of_certificate 5 40 100000 300000 3
    evenRow1 evenRow1Factors (by decide +kernel)

def evenRow2 : ChainRow := ⟨4, -1, [24324, 30204, 37644, 47004, 58644, 73164]⟩

def evenRow2Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (3, primeCert3), (2027, primeCert2027)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (839, primeCert839)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3137, primeCert3137)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3917, primeCert3917)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (181, primeCert181)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (7, primeCert7), (13, primeCert13), (67, primeCert67)]]

theorem evenRow2_valid : NumericChainValid 5 40 100000 300000 3 evenRow2 := by
  exact Certified.numericChainValid_of_certificate 5 40 100000 300000 3
    evenRow2 evenRow2Factors (by decide +kernel)

def evenRow3 : ChainRow := ⟨4, 1, [24924, 31044, 38724, 48204, 60204]⟩

def evenRow3Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (3, primeCert3), (31, primeCert31), (67, primeCert67)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (13, primeCert13), (199, primeCert199)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (7, primeCert7), (461, primeCert461)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (13, primeCert13), (103, primeCert103)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (29, primeCert29), (173, primeCert173)]]

theorem evenRow3_valid : NumericChainValid 5 40 100000 300000 3 evenRow3 := by
  exact Certified.numericChainValid_of_certificate 5 40 100000 300000 3
    evenRow3 evenRow3Factors (by decide +kernel)

def evenRow4 : ChainRow := ⟨6, -1, [24606, 30726, 38286, 47646, 59526, 74406]⟩

def evenRow4Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (3, primeCert3), (1367, primeCert1367)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (569, primeCert569)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (709, primeCert709)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (2647, primeCert2647)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3307, primeCert3307)], [(2, primeCert2), (3, primeCert3), (12401, primeCert12401)]]

theorem evenRow4_valid : NumericChainValid 5 40 100000 300000 3 evenRow4 := by
  exact Certified.numericChainValid_of_certificate 5 40 100000 300000 3
    evenRow4 evenRow4Factors (by decide +kernel)

def evenRow5 : ChainRow := ⟨6, 1, [24966, 31206, 39006, 48126, 60126]⟩

def evenRow5Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (3, primeCert3), (19, primeCert19), (73, primeCert73)], [(2, primeCert2), (3, primeCert3), (7, primeCert7), (743, primeCert743)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (11, primeCert11), (197, primeCert197)], [(2, primeCert2), (3, primeCert3), (13, primeCert13), (617, primeCert617)], [(2, primeCert2), (3, primeCert3), (11, primeCert11), (911, primeCert911)]]

theorem evenRow5_valid : NumericChainValid 5 40 100000 300000 3 evenRow5 := by
  exact Certified.numericChainValid_of_certificate 5 40 100000 300000 3
    evenRow5 evenRow5Factors (by decide +kernel)

def evenRow6 : ChainRow := ⟨8, -1, [24768, 30768, 38448, 48048, 60048]⟩

def evenRow6Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (43, primeCert43)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (641, primeCert641)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (89, primeCert89)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (7, primeCert7), (11, primeCert11), (13, primeCert13)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (139, primeCert139)]]

theorem evenRow6_valid : NumericChainValid 5 40 100000 300000 3 evenRow6 := by
  exact Certified.numericChainValid_of_certificate 5 40 100000 300000 3
    evenRow6 evenRow6Factors (by decide +kernel)

def evenRow7 : ChainRow := ⟨8, 1, [24888, 31008, 38688, 47328, 58968, 73248]⟩

def evenRow7Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (17, primeCert17), (61, primeCert61)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (17, primeCert17), (19, primeCert19)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (13, primeCert13), (31, primeCert31)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (17, primeCert17), (29, primeCert29)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (7, primeCert7), (13, primeCert13)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (7, primeCert7), (109, primeCert109)]]

theorem evenRow7_valid : NumericChainValid 5 40 100000 300000 3 evenRow7 := by
  exact Certified.numericChainValid_of_certificate 5 40 100000 300000 3
    evenRow7 evenRow7Factors (by decide +kernel)

def evenRow8 : ChainRow := ⟨12, -1, [24972, 31212, 39012, 48612, 60612]⟩

def evenRow8Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (3, primeCert3), (2081, primeCert2081)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (17, primeCert17), (17, primeCert17)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3251, primeCert3251)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (4051, primeCert4051)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5051, primeCert5051)]]

theorem evenRow8_valid : NumericChainValid 5 40 100000 300000 3 evenRow8 := by
  exact Certified.numericChainValid_of_certificate 5 40 100000 300000 3
    evenRow8 evenRow8Factors (by decide +kernel)

def evenRow9 : ChainRow := ⟨12, 1, [24852, 30972, 38532, 48132, 59772, 74412]⟩

def evenRow9Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (3, primeCert3), (19, primeCert19), (109, primeCert109)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (29, primeCert29), (89, primeCert89)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (13, primeCert13), (13, primeCert13), (19, primeCert19)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (7, primeCert7), (191, primeCert191)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (17, primeCert17), (293, primeCert293)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (13, primeCert13), (53, primeCert53)]]

theorem evenRow9_valid : NumericChainValid 5 40 100000 300000 3 evenRow9 := by
  exact Certified.numericChainValid_of_certificate 5 40 100000 300000 3
    evenRow9 evenRow9Factors (by decide +kernel)

def evenRow10 : ChainRow := ⟨14, -1, [24894, 31014, 38694, 48294, 60174]⟩

def evenRow10Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (461, primeCert461)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (1723, primeCert1723)], [(2, primeCert2), (3, primeCert3), (6449, primeCert6449)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (2683, primeCert2683)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3343, primeCert3343)]]

theorem evenRow10_valid : NumericChainValid 5 40 100000 300000 3 evenRow10 := by
  exact Certified.numericChainValid_of_certificate 5 40 100000 300000 3
    evenRow10 evenRow10Factors (by decide +kernel)

def evenRow11 : ChainRow := ⟨14, 1, [24654, 30774, 38214, 47454, 59214, 73854]⟩

def evenRow11Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (7, primeCert7), (587, primeCert587)], [(2, primeCert2), (3, primeCert3), (23, primeCert23), (223, primeCert223)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (11, primeCert11), (193, primeCert193)], [(2, primeCert2), (3, primeCert3), (11, primeCert11), (719, primeCert719)], [(2, primeCert2), (3, primeCert3), (71, primeCert71), (139, primeCert139)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (11, primeCert11), (373, primeCert373)]]

theorem evenRow11_valid : NumericChainValid 5 40 100000 300000 3 evenRow11 := by
  exact Certified.numericChainValid_of_certificate 5 40 100000 300000 3
    evenRow11 evenRow11Factors (by decide +kernel)

def evenRow12 : ChainRow := ⟨16, -1, [24936, 31056, 38736, 48096, 60096]⟩

def evenRow12Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (1039, primeCert1039)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (647, primeCert647)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (269, primeCert269)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (167, primeCert167)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (313, primeCert313)]]

theorem evenRow12_valid : NumericChainValid 5 40 100000 300000 3 evenRow12 := by
  exact Certified.numericChainValid_of_certificate 5 40 100000 300000 3
    evenRow12 evenRow12Factors (by decide +kernel)

def evenRow13 : ChainRow := ⟨16, 1, [24816, 30576, 38136, 47376, 59136, 73776]⟩

def evenRow13Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (11, primeCert11), (47, primeCert47)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (7, primeCert7), (7, primeCert7), (13, primeCert13)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (7, primeCert7), (227, primeCert227)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (7, primeCert7), (47, primeCert47)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (7, primeCert7), (11, primeCert11)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (29, primeCert29), (53, primeCert53)]]

theorem evenRow13_valid : NumericChainValid 5 40 100000 300000 3 evenRow13 := by
  exact Certified.numericChainValid_of_certificate 5 40 100000 300000 3
    evenRow13 evenRow13Factors (by decide +kernel)

def evenRow14 : ChainRow := ⟨18, -1, [24858, 30978, 38538, 47898, 59778, 74298]⟩

def evenRow14Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (3, primeCert3), (1381, primeCert1381)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (1721, primeCert1721)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (2141, primeCert2141)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (887, primeCert887)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (41, primeCert41)], [(2, primeCert2), (3, primeCert3), (7, primeCert7), (29, primeCert29), (61, primeCert61)]]

theorem evenRow14_valid : NumericChainValid 5 40 100000 300000 3 evenRow14 := by
  exact Certified.numericChainValid_of_certificate 5 40 100000 300000 3
    evenRow14 evenRow14Factors (by decide +kernel)

def evenRow15 : ChainRow := ⟨18, 1, [24978, 31218, 39018, 48618, 60738]⟩

def evenRow15Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (23, primeCert23), (181, primeCert181)], [(2, primeCert2), (3, primeCert3), (11, primeCert11), (11, primeCert11), (43, primeCert43)], [(2, primeCert2), (3, primeCert3), (7, primeCert7), (929, primeCert929)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (37, primeCert37), (73, primeCert73)], [(2, primeCert2), (3, primeCert3), (53, primeCert53), (191, primeCert191)]]

theorem evenRow15_valid : NumericChainValid 5 40 100000 300000 3 evenRow15 := by
  exact Certified.numericChainValid_of_certificate 5 40 100000 300000 3
    evenRow15 evenRow15Factors (by decide +kernel)

def evenRow16 : ChainRow := ⟨22, -1, [24942, 30942, 38382, 47862, 59742, 74622]⟩

def evenRow16Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (4157, primeCert4157)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (191, primeCert191)], [(2, primeCert2), (3, primeCert3), (6397, primeCert6397)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (2659, primeCert2659)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3319, primeCert3319)], [(2, primeCert2), (3, primeCert3), (12437, primeCert12437)]]

theorem evenRow16_valid : NumericChainValid 5 40 100000 300000 3 evenRow16 := by
  exact Certified.numericChainValid_of_certificate 5 40 100000 300000 3
    evenRow16 evenRow16Factors (by decide +kernel)

def evenRow17 : ChainRow := ⟨22, 1, [24822, 30822, 38502, 47982, 59862, 74022]⟩

def evenRow17Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (3, primeCert3), (7, primeCert7), (197, primeCert197)], [(2, primeCert2), (3, primeCert3), (11, primeCert11), (467, primeCert467)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (23, primeCert23), (31, primeCert31)], [(2, primeCert2), (3, primeCert3), (11, primeCert11), (727, primeCert727)], [(2, primeCert2), (3, primeCert3), (11, primeCert11), (907, primeCert907)], [(2, primeCert2), (3, primeCert3), (13, primeCert13), (13, primeCert13), (73, primeCert73)]]

theorem evenRow17_valid : NumericChainValid 5 40 100000 300000 3 evenRow17 := by
  exact Certified.numericChainValid_of_certificate 5 40 100000 300000 3
    evenRow17 evenRow17Factors (by decide +kernel)

def evenRow18 : ChainRow := ⟨24, -1, [24984, 31224, 39024, 48744, 60864]⟩

def evenRow18Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (347, primeCert347)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (1301, primeCert1301)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (271, primeCert271)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (677, primeCert677)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (317, primeCert317)]]

theorem evenRow18_valid : NumericChainValid 5 40 100000 300000 3 evenRow18 := by
  exact Certified.numericChainValid_of_certificate 5 40 100000 300000 3
    evenRow18 evenRow18Factors (by decide +kernel)

def evenRow19 : ChainRow := ⟨24, 1, [24864, 30744, 38304, 47784, 59664, 74424]⟩

def evenRow19Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (7, primeCert7), (37, primeCert37)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (7, primeCert7), (61, primeCert61)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (7, primeCert7), (19, primeCert19)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (11, primeCert11), (181, primeCert181)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (11, primeCert11), (113, primeCert113)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (7, primeCert7), (443, primeCert443)]]

theorem evenRow19_valid : NumericChainValid 5 40 100000 300000 3 evenRow19 := by
  exact Certified.numericChainValid_of_certificate 5 40 100000 300000 3
    evenRow19 evenRow19Factors (by decide +kernel)

def evenRow20 : ChainRow := ⟨26, -1, [24786, 30546, 37866, 47106, 58866, 73506]⟩

def evenRow20Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (17, primeCert17)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (1697, primeCert1697)], [(2, primeCert2), (3, primeCert3), (6311, primeCert6311)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (2617, primeCert2617)], [(2, primeCert2), (3, primeCert3), (9811, primeCert9811)], [(2, primeCert2), (3, primeCert3), (12251, primeCert12251)]]

theorem evenRow20_valid : NumericChainValid 5 40 100000 300000 3 evenRow20 := by
  exact Certified.numericChainValid_of_certificate 5 40 100000 300000 3
    evenRow20 evenRow20Factors (by decide +kernel)

def evenRow21 : ChainRow := ⟨26, 1, [24906, 30906, 38586, 47946, 59826, 74586]⟩

def evenRow21Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (7, primeCert7), (593, primeCert593)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (17, primeCert17), (101, primeCert101)], [(2, primeCert2), (3, primeCert3), (59, primeCert59), (109, primeCert109)], [(2, primeCert2), (3, primeCert3), (61, primeCert61), (131, primeCert131)], [(2, primeCert2), (3, primeCert3), (13, primeCert13), (13, primeCert13), (59, primeCert59)], [(2, primeCert2), (3, primeCert3), (31, primeCert31), (401, primeCert401)]]

theorem evenRow21_valid : NumericChainValid 5 40 100000 300000 3 evenRow21 := by
  exact Certified.numericChainValid_of_certificate 5 40 100000 300000 3
    evenRow21 evenRow21Factors (by decide +kernel)

def evenRow22 : ChainRow := ⟨28, -1, [24828, 30948, 38508, 47868, 59628, 74388]⟩

def evenRow22Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (3, primeCert3), (2069, primeCert2069)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (2579, primeCert2579)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3209, primeCert3209)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3989, primeCert3989)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (4969, primeCert4969)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (6199, primeCert6199)]]

theorem evenRow22_valid : NumericChainValid 5 40 100000 300000 3 evenRow22 := by
  exact Certified.numericChainValid_of_certificate 5 40 100000 300000 3
    evenRow22 evenRow22Factors (by decide +kernel)

def evenRow23 : ChainRow := ⟨28, 1, [24948, 30828, 38388, 47748, 59508, 74148]⟩

def evenRow23Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (7, primeCert7), (11, primeCert11)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (7, primeCert7), (367, primeCert367)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (7, primeCert7), (457, primeCert457)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (23, primeCert23), (173, primeCert173)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (19, primeCert19), (29, primeCert29)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (37, primeCert37), (167, primeCert167)]]

theorem evenRow23_valid : NumericChainValid 5 40 100000 300000 3 evenRow23 := by
  exact Certified.numericChainValid_of_certificate 5 40 100000 300000 3
    evenRow23 evenRow23Factors (by decide +kernel)

def evenRow24 : ChainRow := ⟨32, -1, [24912, 31032, 38712, 48192, 60072]⟩

def evenRow24Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (173, primeCert173)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (431, primeCert431)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (1613, primeCert1613)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (251, primeCert251)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (2503, primeCert2503)]]

theorem evenRow24_valid : NumericChainValid 5 40 100000 300000 3 evenRow24 := by
  exact Certified.numericChainValid_of_certificate 5 40 100000 300000 3
    evenRow24 evenRow24Factors (by decide +kernel)

def evenRow25 : ChainRow := ⟨32, 1, [24552, 30552, 37752, 47112, 58872, 73392]⟩

def evenRow25Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (11, primeCert11), (31, primeCert31)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (19, primeCert19), (67, primeCert67)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (11, primeCert11), (11, primeCert11), (13, primeCert13)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (13, primeCert13), (151, primeCert151)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (11, primeCert11), (223, primeCert223)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (11, primeCert11), (139, primeCert139)]]

theorem evenRow25_valid : NumericChainValid 5 40 100000 300000 3 evenRow25 := by
  exact Certified.numericChainValid_of_certificate 5 40 100000 300000 3
    evenRow25 evenRow25Factors (by decide +kernel)

def evenRow26 : ChainRow := ⟨34, -1, [24954, 31074, 38754, 48354, 60234]⟩

def evenRow26Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (4159, primeCert4159)], [(2, primeCert2), (3, primeCert3), (5179, primeCert5179)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (2153, primeCert2153)], [(2, primeCert2), (3, primeCert3), (8059, primeCert8059)], [(2, primeCert2), (3, primeCert3), (10039, primeCert10039)]]

theorem evenRow26_valid : NumericChainValid 5 40 100000 300000 3 evenRow26 := by
  exact Certified.numericChainValid_of_certificate 5 40 100000 300000 3
    evenRow26 evenRow26Factors (by decide +kernel)

def evenRow27 : ChainRow := ⟨34, 1, [24354, 30114, 37554, 46914, 58194, 72594]⟩

def evenRow27Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (11, primeCert11), (41, primeCert41)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (7, primeCert7), (239, primeCert239)], [(2, primeCert2), (3, primeCert3), (11, primeCert11), (569, primeCert569)], [(2, primeCert2), (3, primeCert3), (7, primeCert7), (1117, primeCert1117)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (53, primeCert53), (61, primeCert61)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (37, primeCert37), (109, primeCert109)]]

theorem evenRow27_valid : NumericChainValid 5 40 100000 300000 3 evenRow27 := by
  exact Certified.numericChainValid_of_certificate 5 40 100000 300000 3
    evenRow27 evenRow27Factors (by decide +kernel)

def evenRow28 : ChainRow := ⟨36, -1, [24996, 31116, 38436, 48036, 60036]⟩

def evenRow28Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (3, primeCert3), (2083, primeCert2083)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (2593, primeCert2593)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3203, primeCert3203)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (4003, primeCert4003)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5003, primeCert5003)]]

theorem evenRow28_valid : NumericChainValid 5 40 100000 300000 3 evenRow28 := by
  exact Certified.numericChainValid_of_certificate 5 40 100000 300000 3
    evenRow28 evenRow28Factors (by decide +kernel)

def evenRow29 : ChainRow := ⟨36, 1, [24396, 30396, 37716, 46716, 58236, 72756]⟩

def evenRow29Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (3, primeCert3), (19, primeCert19), (107, primeCert107)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (17, primeCert17), (149, primeCert149)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (7, primeCert7), (449, primeCert449)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (17, primeCert17), (229, primeCert229)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (23, primeCert23), (211, primeCert211)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (43, primeCert43), (47, primeCert47)]]

theorem evenRow29_valid : NumericChainValid 5 40 100000 300000 3 evenRow29 := by
  exact Certified.numericChainValid_of_certificate 5 40 100000 300000 3
    evenRow29 evenRow29Factors (by decide +kernel)

def evenRow30 : ChainRow := ⟨38, -1, [24918, 30918, 38358, 47838, 59598, 74478]⟩

def evenRow30Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (4153, primeCert4153)], [(2, primeCert2), (3, primeCert3), (5153, primeCert5153)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (2131, primeCert2131)], [(2, primeCert2), (3, primeCert3), (7, primeCert7), (17, primeCert17), (67, primeCert67)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (7, primeCert7), (11, primeCert11), (43, primeCert43)], [(2, primeCert2), (3, primeCert3), (12413, primeCert12413)]]

theorem evenRow30_valid : NumericChainValid 5 40 100000 300000 3 evenRow30 := by
  exact Certified.numericChainValid_of_certificate 5 40 100000 300000 3
    evenRow30 evenRow30Factors (by decide +kernel)

def evenRow31 : ChainRow := ⟨38, 1, [24318, 30318, 37878, 46998, 58638, 73278]⟩

def evenRow31Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (3, primeCert3), (7, primeCert7), (193, primeCert193)], [(2, primeCert2), (3, primeCert3), (31, primeCert31), (163, primeCert163)], [(2, primeCert2), (3, primeCert3), (59, primeCert59), (107, primeCert107)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (7, primeCert7), (373, primeCert373)], [(2, primeCert2), (3, primeCert3), (29, primeCert29), (337, primeCert337)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (23, primeCert23), (59, primeCert59)]]

theorem evenRow31_valid : NumericChainValid 5 40 100000 300000 3 evenRow31 := by
  exact Certified.numericChainValid_of_certificate 5 40 100000 300000 3
    evenRow31 evenRow31Factors (by decide +kernel)

def evenRows : List ChainRow := [evenRow0, evenRow1, evenRow2, evenRow3, evenRow4, evenRow5, evenRow6, evenRow7, evenRow8, evenRow9, evenRow10, evenRow11, evenRow12, evenRow13, evenRow14, evenRow15, evenRow16, evenRow17, evenRow18, evenRow19, evenRow20, evenRow21, evenRow22, evenRow23, evenRow24, evenRow25, evenRow26, evenRow27, evenRow28, evenRow29, evenRow30, evenRow31]

theorem even_valid : ∀ row ∈ evenRows, NumericChainValid 5 40 100000 300000 3 row := by
  intro row hrow
  simp only [evenRows, List.mem_cons, List.not_mem_nil, or_false] at hrow
  rcases hrow with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact evenRow0_valid
  · exact evenRow1_valid
  · exact evenRow2_valid
  · exact evenRow3_valid
  · exact evenRow4_valid
  · exact evenRow5_valid
  · exact evenRow6_valid
  · exact evenRow7_valid
  · exact evenRow8_valid
  · exact evenRow9_valid
  · exact evenRow10_valid
  · exact evenRow11_valid
  · exact evenRow12_valid
  · exact evenRow13_valid
  · exact evenRow14_valid
  · exact evenRow15_valid
  · exact evenRow16_valid
  · exact evenRow17_valid
  · exact evenRow18_valid
  · exact evenRow19_valid
  · exact evenRow20_valid
  · exact evenRow21_valid
  · exact evenRow22_valid
  · exact evenRow23_valid
  · exact evenRow24_valid
  · exact evenRow25_valid
  · exact evenRow26_valid
  · exact evenRow27_valid
  · exact evenRow28_valid
  · exact evenRow29_valid
  · exact evenRow30_valid
  · exact evenRow31_valid

theorem even_cover : ∀ r ∈ eligibleResidues 5 40 2,
    ∀ s ∈ ({-1, 1} : Finset ℤ), ∃ row ∈ evenRows, row.residue = r ∧ row.sign = s := by
  decide +kernel

theorem even_chains : ∀ r ∈ eligibleResidues 5 40 2, ∀ s : ℤ, IsSign s →
    ∃ C : IntervalChain 5 40 (100000 : ℝ) (300000 : ℝ) (r : ℤ) s,
      ∀ i : ℕ, i ≤ C.last → 3 ∣ C.point i := by
  exact intervalChains_of_table 5 40 100000 300000 3 _ evenRows even_valid even_cover

def oddValues : List ℕ := [126, 26, 2, 52, 78, 28, 4, 54, 156, 6, 32, 82, 8, 58, 84, 34, 186, 36, 312, 12, 138, 38, 64, 14, 16, 116, 42, 92, 168, 18, 294, 44, 246, 46, 222, 22, 198, 48, 174, 24]

theorem odd_cover : ∀ r : ℕ, r < 25 → ¬ 5 ∣ r → ∀ s ∈ ({-1, 1} : Finset ℤ),
    ∃ A ∈ oddValues, 0 < A ∧ A ≤ 312 ∧ 2 ∣ A ∧ Nat.ModEq 25 A r ∧ g A = s := by
  decide +kernel

theorem odd_witnesses : ∀ r : ℕ, r < 25 → ¬ 5 ∣ r → ∀ s : ℤ, IsSign s →
    ∃ A : ℕ, 0 < A ∧ A ≤ 312 ∧ 2 ∣ A ∧ Nat.ModEq 25 A r ∧ g A = s := by
  intro r hr hqr s hs
  obtain ⟨A, _, hA⟩ := odd_cover r hr hqr s (by simpa [IsSign, or_comm] using hs)
  exact ⟨A, hA⟩

end GeneralizedGoldbach.SmallCertificates.Q5
