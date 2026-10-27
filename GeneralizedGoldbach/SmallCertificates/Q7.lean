module

public import GeneralizedGoldbach.CertifiedCheckers
public import GeneralizedGoldbach.Certificates

/-!
论文命题 5.3 [prop:q7]；
论文引理 C.4 [lem:numeric-chain]；
论文第 C 节 [app:certificates]。
q=7 的两阶段链与奇见证数据；两个覆盖区间的衔接和用于无限伸缩的整除条件分别保留。
-/
@[expose] public section
namespace GeneralizedGoldbach.SmallCertificates.Q7

def primeCert2 : Hex.Nat.PrimeCert := .small 2

def primeCert3 : Hex.Nat.PrimeCert := .small 3

def primeCert5 : Hex.Nat.PrimeCert := .small 5

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

def primeCert79 : Hex.Nat.PrimeCert := .small 79

def primeCert83 : Hex.Nat.PrimeCert := .small 83

def primeCert89 : Hex.Nat.PrimeCert := .small 89

def primeCert97 : Hex.Nat.PrimeCert := .small 97

def primeCert101 : Hex.Nat.PrimeCert := .small 101

def primeCert103 : Hex.Nat.PrimeCert := .small 103

def primeCert107 : Hex.Nat.PrimeCert := .small 107

def primeCert109 : Hex.Nat.PrimeCert := .small 109

def primeCert113 : Hex.Nat.PrimeCert := .small 113

def primeCert127 : Hex.Nat.PrimeCert := .small 127

def primeCert131 : Hex.Nat.PrimeCert := .small 131

def primeCert137 : Hex.Nat.PrimeCert := .small 137

def primeCert139 : Hex.Nat.PrimeCert := .small 139

def primeCert149 : Hex.Nat.PrimeCert := .small 149

def primeCert151 : Hex.Nat.PrimeCert := .small 151

def primeCert157 : Hex.Nat.PrimeCert := .small 157

def primeCert163 : Hex.Nat.PrimeCert := .small 163

def primeCert167 : Hex.Nat.PrimeCert := .small 167

def primeCert173 : Hex.Nat.PrimeCert := .small 173

def primeCert179 : Hex.Nat.PrimeCert := .small 179

def primeCert181 : Hex.Nat.PrimeCert := .small 181

def primeCert191 : Hex.Nat.PrimeCert := .small 191

def primeCert193 : Hex.Nat.PrimeCert := .small 193

def primeCert197 : Hex.Nat.PrimeCert := .small 197

def primeCert199 : Hex.Nat.PrimeCert := .small 199

def primeCert211 : Hex.Nat.PrimeCert := .small 211

def primeCert223 : Hex.Nat.PrimeCert := .small 223

def primeCert227 : Hex.Nat.PrimeCert := .small 227

def primeCert229 : Hex.Nat.PrimeCert := .small 229

def primeCert233 : Hex.Nat.PrimeCert := .small 233

def primeCert239 : Hex.Nat.PrimeCert := .small 239

def primeCert241 : Hex.Nat.PrimeCert := .small 241

def primeCert251 : Hex.Nat.PrimeCert := .small 251

def primeCert257 : Hex.Nat.PrimeCert := .small 257

def primeCert263 : Hex.Nat.PrimeCert := .small 263

def primeCert269 : Hex.Nat.PrimeCert := .small 269

def primeCert271 : Hex.Nat.PrimeCert := .small 271

def primeCert277 : Hex.Nat.PrimeCert := .small 277

def primeCert281 : Hex.Nat.PrimeCert := .small 281

def primeCert283 : Hex.Nat.PrimeCert := .small 283

def primeCert293 : Hex.Nat.PrimeCert := .small 293

def primeCert307 : Hex.Nat.PrimeCert := .small 307

def primeCert311 : Hex.Nat.PrimeCert := .small 311

def primeCert313 : Hex.Nat.PrimeCert := .small 313

def primeCert317 : Hex.Nat.PrimeCert := .small 317

def primeCert331 : Hex.Nat.PrimeCert := .small 331

def primeCert337 : Hex.Nat.PrimeCert := .small 337

def primeCert347 : Hex.Nat.PrimeCert := .small 347

def primeCert349 : Hex.Nat.PrimeCert := .small 349

def primeCert353 : Hex.Nat.PrimeCert := .small 353

def primeCert359 : Hex.Nat.PrimeCert := .small 359

def primeCert367 : Hex.Nat.PrimeCert := .small 367

def primeCert373 : Hex.Nat.PrimeCert := .small 373

def primeCert379 : Hex.Nat.PrimeCert := .small 379

def primeCert383 : Hex.Nat.PrimeCert := .small 383

def primeCert389 : Hex.Nat.PrimeCert := .small 389

def primeCert397 : Hex.Nat.PrimeCert := .small 397

def primeCert401 : Hex.Nat.PrimeCert := .small 401

def primeCert409 : Hex.Nat.PrimeCert := .small 409

def primeCert419 : Hex.Nat.PrimeCert := .small 419

def primeCert421 : Hex.Nat.PrimeCert := .small 421

def primeCert431 : Hex.Nat.PrimeCert := .small 431

def primeCert433 : Hex.Nat.PrimeCert := .small 433

def primeCert439 : Hex.Nat.PrimeCert := .small 439

def primeCert443 : Hex.Nat.PrimeCert := .small 443

def primeCert449 : Hex.Nat.PrimeCert := .small 449

def primeCert457 : Hex.Nat.PrimeCert := .small 457

def primeCert461 : Hex.Nat.PrimeCert := .small 461

def primeCert463 : Hex.Nat.PrimeCert := .small 463

def primeCert479 : Hex.Nat.PrimeCert := .small 479

def primeCert487 : Hex.Nat.PrimeCert := .small 487

def primeCert491 : Hex.Nat.PrimeCert := .small 491

def primeCert499 : Hex.Nat.PrimeCert := .small 499

def primeCert503 : Hex.Nat.PrimeCert := .small 503

def primeCert509 : Hex.Nat.PrimeCert := .small 509

def primeCert521 : Hex.Nat.PrimeCert := .small 521

def primeCert523 : Hex.Nat.PrimeCert := .small 523

def primeCert541 : Hex.Nat.PrimeCert := .small 541

def primeCert547 : Hex.Nat.PrimeCert := .small 547

def primeCert557 : Hex.Nat.PrimeCert := .small 557

def primeCert563 : Hex.Nat.PrimeCert := .small 563

def primeCert569 : Hex.Nat.PrimeCert := .small 569

def primeCert571 : Hex.Nat.PrimeCert := .small 571

def primeCert577 : Hex.Nat.PrimeCert := .small 577

def primeCert587 : Hex.Nat.PrimeCert := .small 587

def primeCert593 : Hex.Nat.PrimeCert := .small 593

def primeCert599 : Hex.Nat.PrimeCert := .small 599

def primeCert601 : Hex.Nat.PrimeCert := .small 601

def primeCert607 : Hex.Nat.PrimeCert := .small 607

def primeCert613 : Hex.Nat.PrimeCert := .small 613

def primeCert617 : Hex.Nat.PrimeCert := .small 617

def primeCert619 : Hex.Nat.PrimeCert := .small 619

def primeCert631 : Hex.Nat.PrimeCert := .small 631

def primeCert641 : Hex.Nat.PrimeCert := .small 641

def primeCert643 : Hex.Nat.PrimeCert := .small 643

def primeCert647 : Hex.Nat.PrimeCert := .small 647

def primeCert659 : Hex.Nat.PrimeCert := .small 659

def primeCert661 : Hex.Nat.PrimeCert := .small 661

def primeCert673 : Hex.Nat.PrimeCert := .small 673

def primeCert677 : Hex.Nat.PrimeCert := .small 677

def primeCert683 : Hex.Nat.PrimeCert := .small 683

def primeCert691 : Hex.Nat.PrimeCert := .small 691

def primeCert701 : Hex.Nat.PrimeCert := .small 701

def primeCert709 : Hex.Nat.PrimeCert := .small 709

def primeCert719 : Hex.Nat.PrimeCert := .small 719

def primeCert727 : Hex.Nat.PrimeCert := .small 727

def primeCert733 : Hex.Nat.PrimeCert := .small 733

def primeCert739 : Hex.Nat.PrimeCert := .small 739

def primeCert743 : Hex.Nat.PrimeCert := .small 743

def primeCert751 : Hex.Nat.PrimeCert := .small 751

def primeCert757 : Hex.Nat.PrimeCert := .small 757

def primeCert761 : Hex.Nat.PrimeCert := .small 761

def primeCert769 : Hex.Nat.PrimeCert := .small 769

def primeCert773 : Hex.Nat.PrimeCert := .small 773

def primeCert787 : Hex.Nat.PrimeCert := .small 787

def primeCert797 : Hex.Nat.PrimeCert := .small 797

def primeCert809 : Hex.Nat.PrimeCert := .small 809

def primeCert811 : Hex.Nat.PrimeCert := .small 811

def primeCert823 : Hex.Nat.PrimeCert := .small 823

def primeCert827 : Hex.Nat.PrimeCert := .small 827

def primeCert853 : Hex.Nat.PrimeCert := .small 853

def primeCert857 : Hex.Nat.PrimeCert := .small 857

def primeCert859 : Hex.Nat.PrimeCert := .small 859

def primeCert863 : Hex.Nat.PrimeCert := .small 863

def primeCert883 : Hex.Nat.PrimeCert := .small 883

def primeCert887 : Hex.Nat.PrimeCert := .small 887

def primeCert907 : Hex.Nat.PrimeCert := .small 907

def primeCert911 : Hex.Nat.PrimeCert := .small 911

def primeCert919 : Hex.Nat.PrimeCert := .small 919

def primeCert929 : Hex.Nat.PrimeCert := .small 929

def primeCert937 : Hex.Nat.PrimeCert := .small 937

def primeCert941 : Hex.Nat.PrimeCert := .small 941

def primeCert967 : Hex.Nat.PrimeCert := .small 967

def primeCert971 : Hex.Nat.PrimeCert := .small 971

def primeCert977 : Hex.Nat.PrimeCert := .small 977

def primeCert997 : Hex.Nat.PrimeCert := .small 997

def primeCert1013 : Hex.Nat.PrimeCert := .small 1013

def primeCert1019 : Hex.Nat.PrimeCert := .small 1019

def primeCert1031 : Hex.Nat.PrimeCert := .small 1031

def primeCert1033 : Hex.Nat.PrimeCert := .small 1033

def primeCert1039 : Hex.Nat.PrimeCert := .small 1039

def primeCert1049 : Hex.Nat.PrimeCert := .small 1049

def primeCert1051 : Hex.Nat.PrimeCert := .small 1051

def primeCert1061 : Hex.Nat.PrimeCert := .small 1061

def primeCert1063 : Hex.Nat.PrimeCert := .small 1063

def primeCert1069 : Hex.Nat.PrimeCert := .small 1069

def primeCert1087 : Hex.Nat.PrimeCert := .small 1087

def primeCert1091 : Hex.Nat.PrimeCert := .small 1091

def primeCert1093 : Hex.Nat.PrimeCert := .small 1093

def primeCert1103 : Hex.Nat.PrimeCert := .small 1103

def primeCert1109 : Hex.Nat.PrimeCert := .small 1109

def primeCert1117 : Hex.Nat.PrimeCert := .small 1117

def primeCert1123 : Hex.Nat.PrimeCert := .small 1123

def primeCert1129 : Hex.Nat.PrimeCert := .small 1129

def primeCert1151 : Hex.Nat.PrimeCert := .small 1151

def primeCert1163 : Hex.Nat.PrimeCert := .small 1163

def primeCert1171 : Hex.Nat.PrimeCert := .small 1171

def primeCert1181 : Hex.Nat.PrimeCert := .small 1181

def primeCert1187 : Hex.Nat.PrimeCert := .small 1187

def primeCert1201 : Hex.Nat.PrimeCert := .small 1201

def primeCert1213 : Hex.Nat.PrimeCert := .small 1213

def primeCert1217 : Hex.Nat.PrimeCert := .small 1217

def primeCert1223 : Hex.Nat.PrimeCert := .small 1223

def primeCert1229 : Hex.Nat.PrimeCert := .small 1229

def primeCert1231 : Hex.Nat.PrimeCert := .small 1231

def primeCert1237 : Hex.Nat.PrimeCert := .small 1237

def primeCert1249 : Hex.Nat.PrimeCert := .small 1249

def primeCert1259 : Hex.Nat.PrimeCert := .small 1259

def primeCert1277 : Hex.Nat.PrimeCert := .small 1277

def primeCert1279 : Hex.Nat.PrimeCert := .small 1279

def primeCert1289 : Hex.Nat.PrimeCert := .small 1289

def primeCert1297 : Hex.Nat.PrimeCert := .small 1297

def primeCert1307 : Hex.Nat.PrimeCert := .small 1307

def primeCert1319 : Hex.Nat.PrimeCert := .small 1319

def primeCert1361 : Hex.Nat.PrimeCert := .small 1361

def primeCert1373 : Hex.Nat.PrimeCert := .small 1373

def primeCert1381 : Hex.Nat.PrimeCert := .small 1381

def primeCert1409 : Hex.Nat.PrimeCert := .small 1409

def primeCert1423 : Hex.Nat.PrimeCert := .small 1423

def primeCert1427 : Hex.Nat.PrimeCert := .small 1427

def primeCert1429 : Hex.Nat.PrimeCert := .small 1429

def primeCert1439 : Hex.Nat.PrimeCert := .small 1439

def primeCert1447 : Hex.Nat.PrimeCert := .small 1447

def primeCert1451 : Hex.Nat.PrimeCert := .small 1451

def primeCert1453 : Hex.Nat.PrimeCert := .small 1453

def primeCert1459 : Hex.Nat.PrimeCert := .small 1459

def primeCert1471 : Hex.Nat.PrimeCert := .small 1471

def primeCert1481 : Hex.Nat.PrimeCert := .small 1481

def primeCert1483 : Hex.Nat.PrimeCert := .small 1483

def primeCert1487 : Hex.Nat.PrimeCert := .small 1487

def primeCert1489 : Hex.Nat.PrimeCert := .small 1489

def primeCert1493 : Hex.Nat.PrimeCert := .small 1493

def primeCert1499 : Hex.Nat.PrimeCert := .small 1499

def primeCert1523 : Hex.Nat.PrimeCert := .small 1523

def primeCert1531 : Hex.Nat.PrimeCert := .small 1531

def primeCert1543 : Hex.Nat.PrimeCert := .small 1543

def primeCert1549 : Hex.Nat.PrimeCert := .small 1549

def primeCert1553 : Hex.Nat.PrimeCert := .small 1553

def primeCert1559 : Hex.Nat.PrimeCert := .small 1559

def primeCert1571 : Hex.Nat.PrimeCert := .small 1571

def primeCert1579 : Hex.Nat.PrimeCert := .small 1579

def primeCert1583 : Hex.Nat.PrimeCert := .small 1583

def primeCert1597 : Hex.Nat.PrimeCert := .small 1597

def primeCert1601 : Hex.Nat.PrimeCert := .small 1601

def primeCert1607 : Hex.Nat.PrimeCert := .small 1607

def primeCert1609 : Hex.Nat.PrimeCert := .small 1609

def primeCert1613 : Hex.Nat.PrimeCert := .small 1613

def primeCert1619 : Hex.Nat.PrimeCert := .small 1619

def primeCert1621 : Hex.Nat.PrimeCert := .small 1621

def primeCert1637 : Hex.Nat.PrimeCert := .small 1637

def primeCert1657 : Hex.Nat.PrimeCert := .small 1657

def primeCert1663 : Hex.Nat.PrimeCert := .small 1663

def primeCert1667 : Hex.Nat.PrimeCert := .small 1667

def primeCert1669 : Hex.Nat.PrimeCert := .small 1669

def primeCert1693 : Hex.Nat.PrimeCert := .small 1693

def primeCert1697 : Hex.Nat.PrimeCert := .small 1697

def primeCert1699 : Hex.Nat.PrimeCert := .small 1699

def primeCert1709 : Hex.Nat.PrimeCert := .small 1709

def primeCert1721 : Hex.Nat.PrimeCert := .small 1721

def primeCert1723 : Hex.Nat.PrimeCert := .small 1723

def primeCert1733 : Hex.Nat.PrimeCert := .small 1733

def primeCert1741 : Hex.Nat.PrimeCert := .small 1741

def primeCert1747 : Hex.Nat.PrimeCert := .small 1747

def primeCert1759 : Hex.Nat.PrimeCert := .small 1759

def primeCert1777 : Hex.Nat.PrimeCert := .small 1777

def primeCert1783 : Hex.Nat.PrimeCert := .small 1783

def primeCert1801 : Hex.Nat.PrimeCert := .small 1801

def primeCert1811 : Hex.Nat.PrimeCert := .small 1811

def primeCert1823 : Hex.Nat.PrimeCert := .small 1823

def primeCert1831 : Hex.Nat.PrimeCert := .small 1831

def primeCert1847 : Hex.Nat.PrimeCert := .small 1847

def primeCert1861 : Hex.Nat.PrimeCert := .small 1861

def primeCert1867 : Hex.Nat.PrimeCert := .small 1867

def primeCert1871 : Hex.Nat.PrimeCert := .small 1871

def primeCert1873 : Hex.Nat.PrimeCert := .small 1873

def primeCert1877 : Hex.Nat.PrimeCert := .small 1877

def primeCert1889 : Hex.Nat.PrimeCert := .small 1889

def primeCert1907 : Hex.Nat.PrimeCert := .small 1907

def primeCert1913 : Hex.Nat.PrimeCert := .small 1913

def primeCert1931 : Hex.Nat.PrimeCert := .small 1931

def primeCert1933 : Hex.Nat.PrimeCert := .small 1933

def primeCert1949 : Hex.Nat.PrimeCert := .small 1949

def primeCert1951 : Hex.Nat.PrimeCert := .small 1951

def primeCert1973 : Hex.Nat.PrimeCert := .small 1973

def primeCert1979 : Hex.Nat.PrimeCert := .small 1979

def primeCert1999 : Hex.Nat.PrimeCert := .small 1999

def primeCert2003 : Hex.Nat.PrimeCert := .small 2003

def primeCert2027 : Hex.Nat.PrimeCert := .small 2027

def primeCert2029 : Hex.Nat.PrimeCert := .small 2029

def primeCert2053 : Hex.Nat.PrimeCert := .small 2053

def primeCert2069 : Hex.Nat.PrimeCert := .small 2069

def primeCert2081 : Hex.Nat.PrimeCert := .small 2081

def primeCert2087 : Hex.Nat.PrimeCert := .small 2087

def primeCert2089 : Hex.Nat.PrimeCert := .small 2089

def primeCert2129 : Hex.Nat.PrimeCert := .small 2129

def primeCert2131 : Hex.Nat.PrimeCert := .small 2131

def primeCert2137 : Hex.Nat.PrimeCert := .small 2137

def primeCert2141 : Hex.Nat.PrimeCert := .small 2141

def primeCert2143 : Hex.Nat.PrimeCert := .small 2143

def primeCert2153 : Hex.Nat.PrimeCert := .small 2153

def primeCert2161 : Hex.Nat.PrimeCert := .small 2161

def primeCert2179 : Hex.Nat.PrimeCert := .small 2179

def primeCert2221 : Hex.Nat.PrimeCert := .small 2221

def primeCert2237 : Hex.Nat.PrimeCert := .small 2237

def primeCert2239 : Hex.Nat.PrimeCert := .small 2239

def primeCert2251 : Hex.Nat.PrimeCert := .small 2251

def primeCert2267 : Hex.Nat.PrimeCert := .small 2267

def primeCert2269 : Hex.Nat.PrimeCert := .small 2269

def primeCert2273 : Hex.Nat.PrimeCert := .small 2273

def primeCert2287 : Hex.Nat.PrimeCert := .small 2287

def primeCert2293 : Hex.Nat.PrimeCert := .small 2293

def primeCert2309 : Hex.Nat.PrimeCert := .small 2309

def primeCert2311 : Hex.Nat.PrimeCert := .small 2311

def primeCert2333 : Hex.Nat.PrimeCert := .small 2333

def primeCert2341 : Hex.Nat.PrimeCert := .small 2341

def primeCert2371 : Hex.Nat.PrimeCert := .small 2371

def primeCert2377 : Hex.Nat.PrimeCert := .small 2377

def primeCert2389 : Hex.Nat.PrimeCert := .small 2389

def primeCert2393 : Hex.Nat.PrimeCert := .small 2393

def primeCert2417 : Hex.Nat.PrimeCert := .small 2417

def primeCert2423 : Hex.Nat.PrimeCert := .small 2423

def primeCert2447 : Hex.Nat.PrimeCert := .small 2447

def primeCert2459 : Hex.Nat.PrimeCert := .small 2459

def primeCert2473 : Hex.Nat.PrimeCert := .small 2473

def primeCert2477 : Hex.Nat.PrimeCert := .small 2477

def primeCert2521 : Hex.Nat.PrimeCert := .small 2521

def primeCert2531 : Hex.Nat.PrimeCert := .small 2531

def primeCert2539 : Hex.Nat.PrimeCert := .small 2539

def primeCert2549 : Hex.Nat.PrimeCert := .small 2549

def primeCert2609 : Hex.Nat.PrimeCert := .small 2609

def primeCert2617 : Hex.Nat.PrimeCert := .small 2617

def primeCert2647 : Hex.Nat.PrimeCert := .small 2647

def primeCert2659 : Hex.Nat.PrimeCert := .small 2659

def primeCert2663 : Hex.Nat.PrimeCert := .small 2663

def primeCert2671 : Hex.Nat.PrimeCert := .small 2671

def primeCert2677 : Hex.Nat.PrimeCert := .small 2677

def primeCert2683 : Hex.Nat.PrimeCert := .small 2683

def primeCert2687 : Hex.Nat.PrimeCert := .small 2687

def primeCert2711 : Hex.Nat.PrimeCert := .small 2711

def primeCert2713 : Hex.Nat.PrimeCert := .small 2713

def primeCert2719 : Hex.Nat.PrimeCert := .small 2719

def primeCert2729 : Hex.Nat.PrimeCert := .small 2729

def primeCert2731 : Hex.Nat.PrimeCert := .small 2731

def primeCert2741 : Hex.Nat.PrimeCert := .small 2741

def primeCert2749 : Hex.Nat.PrimeCert := .small 2749

def primeCert2753 : Hex.Nat.PrimeCert := .small 2753

def primeCert2767 : Hex.Nat.PrimeCert := .small 2767

def primeCert2777 : Hex.Nat.PrimeCert := .small 2777

def primeCert2789 : Hex.Nat.PrimeCert := .small 2789

def primeCert2801 : Hex.Nat.PrimeCert := .small 2801

def primeCert2857 : Hex.Nat.PrimeCert := .small 2857

def primeCert2887 : Hex.Nat.PrimeCert := .small 2887

def primeCert2897 : Hex.Nat.PrimeCert := .small 2897

def primeCert2903 : Hex.Nat.PrimeCert := .small 2903

def primeCert2909 : Hex.Nat.PrimeCert := .small 2909

def primeCert2917 : Hex.Nat.PrimeCert := .small 2917

def primeCert2953 : Hex.Nat.PrimeCert := .small 2953

def primeCert2969 : Hex.Nat.PrimeCert := .small 2969

def primeCert3023 : Hex.Nat.PrimeCert := .small 3023

def primeCert3049 : Hex.Nat.PrimeCert := .small 3049

def primeCert3079 : Hex.Nat.PrimeCert := .small 3079

def primeCert3083 : Hex.Nat.PrimeCert := .small 3083

def primeCert3089 : Hex.Nat.PrimeCert := .small 3089

def primeCert3109 : Hex.Nat.PrimeCert := .small 3109

def primeCert3119 : Hex.Nat.PrimeCert := .small 3119

def primeCert3137 : Hex.Nat.PrimeCert := .small 3137

def primeCert3163 : Hex.Nat.PrimeCert := .small 3163

def primeCert3169 : Hex.Nat.PrimeCert := .small 3169

def primeCert3181 : Hex.Nat.PrimeCert := .small 3181

def primeCert3187 : Hex.Nat.PrimeCert := .small 3187

def primeCert3191 : Hex.Nat.PrimeCert := .small 3191

def primeCert3203 : Hex.Nat.PrimeCert := .small 3203

def primeCert3209 : Hex.Nat.PrimeCert := .small 3209

def primeCert3251 : Hex.Nat.PrimeCert := .small 3251

def primeCert3257 : Hex.Nat.PrimeCert := .small 3257

def primeCert3299 : Hex.Nat.PrimeCert := .small 3299

def primeCert3301 : Hex.Nat.PrimeCert := .small 3301

def primeCert3319 : Hex.Nat.PrimeCert := .small 3319

def primeCert3323 : Hex.Nat.PrimeCert := .small 3323

def primeCert3343 : Hex.Nat.PrimeCert := .small 3343

def primeCert3347 : Hex.Nat.PrimeCert := .small 3347

def primeCert3359 : Hex.Nat.PrimeCert := .small 3359

def primeCert3361 : Hex.Nat.PrimeCert := .small 3361

def primeCert3371 : Hex.Nat.PrimeCert := .small 3371

def primeCert3389 : Hex.Nat.PrimeCert := .small 3389

def primeCert3391 : Hex.Nat.PrimeCert := .small 3391

def primeCert3407 : Hex.Nat.PrimeCert := .small 3407

def primeCert3457 : Hex.Nat.PrimeCert := .small 3457

def primeCert3461 : Hex.Nat.PrimeCert := .small 3461

def primeCert3491 : Hex.Nat.PrimeCert := .small 3491

def primeCert3557 : Hex.Nat.PrimeCert := .small 3557

def primeCert3559 : Hex.Nat.PrimeCert := .small 3559

def primeCert3583 : Hex.Nat.PrimeCert := .small 3583

def primeCert3593 : Hex.Nat.PrimeCert := .small 3593

def primeCert3607 : Hex.Nat.PrimeCert := .small 3607

def primeCert3613 : Hex.Nat.PrimeCert := .small 3613

def primeCert3623 : Hex.Nat.PrimeCert := .small 3623

def primeCert3673 : Hex.Nat.PrimeCert := .small 3673

def primeCert3677 : Hex.Nat.PrimeCert := .small 3677

def primeCert3691 : Hex.Nat.PrimeCert := .small 3691

def primeCert3709 : Hex.Nat.PrimeCert := .small 3709

def primeCert3719 : Hex.Nat.PrimeCert := .small 3719

def primeCert3727 : Hex.Nat.PrimeCert := .small 3727

def primeCert3733 : Hex.Nat.PrimeCert := .small 3733

def primeCert3767 : Hex.Nat.PrimeCert := .small 3767

def primeCert3847 : Hex.Nat.PrimeCert := .small 3847

def primeCert3851 : Hex.Nat.PrimeCert := .small 3851

def primeCert3889 : Hex.Nat.PrimeCert := .small 3889

def primeCert3911 : Hex.Nat.PrimeCert := .small 3911

def primeCert3923 : Hex.Nat.PrimeCert := .small 3923

def primeCert3931 : Hex.Nat.PrimeCert := .small 3931

def primeCert3989 : Hex.Nat.PrimeCert := .small 3989

def primeCert4001 : Hex.Nat.PrimeCert := .small 4001

def primeCert4007 : Hex.Nat.PrimeCert := .small 4007

def primeCert4019 : Hex.Nat.PrimeCert := .small 4019

def primeCert4073 : Hex.Nat.PrimeCert := .small 4073

def primeCert4099 : Hex.Nat.PrimeCert := .small 4099

def primeCert4127 : Hex.Nat.PrimeCert := .small 4127

def primeCert4129 : Hex.Nat.PrimeCert := .small 4129

def primeCert4139 : Hex.Nat.PrimeCert := .small 4139

def primeCert4153 : Hex.Nat.PrimeCert := .small 4153

def primeCert4177 : Hex.Nat.PrimeCert := .small 4177

def primeCert4201 : Hex.Nat.PrimeCert := .small 4201

def primeCert4211 : Hex.Nat.PrimeCert := .small 4211

def primeCert4231 : Hex.Nat.PrimeCert := .small 4231

def primeCert4253 : Hex.Nat.PrimeCert := .small 4253

def primeCert4261 : Hex.Nat.PrimeCert := .small 4261

def primeCert4271 : Hex.Nat.PrimeCert := .small 4271

def primeCert4273 : Hex.Nat.PrimeCert := .small 4273

def primeCert4297 : Hex.Nat.PrimeCert := .small 4297

def primeCert4337 : Hex.Nat.PrimeCert := .small 4337

def primeCert4339 : Hex.Nat.PrimeCert := .small 4339

def primeCert4373 : Hex.Nat.PrimeCert := .small 4373

def primeCert4457 : Hex.Nat.PrimeCert := .small 4457

def primeCert4463 : Hex.Nat.PrimeCert := .small 4463

def primeCert4481 : Hex.Nat.PrimeCert := .small 4481

def primeCert4493 : Hex.Nat.PrimeCert := .small 4493

def primeCert4523 : Hex.Nat.PrimeCert := .small 4523

def primeCert4561 : Hex.Nat.PrimeCert := .small 4561

def primeCert4597 : Hex.Nat.PrimeCert := .small 4597

def primeCert4621 : Hex.Nat.PrimeCert := .small 4621

def primeCert4637 : Hex.Nat.PrimeCert := .small 4637

def primeCert4639 : Hex.Nat.PrimeCert := .small 4639

def primeCert4643 : Hex.Nat.PrimeCert := .small 4643

def primeCert4649 : Hex.Nat.PrimeCert := .small 4649

def primeCert4651 : Hex.Nat.PrimeCert := .small 4651

def primeCert4729 : Hex.Nat.PrimeCert := .small 4729

def primeCert4783 : Hex.Nat.PrimeCert := .small 4783

def primeCert4799 : Hex.Nat.PrimeCert := .small 4799

def primeCert4801 : Hex.Nat.PrimeCert := .small 4801

def primeCert4831 : Hex.Nat.PrimeCert := .small 4831

def primeCert4861 : Hex.Nat.PrimeCert := .small 4861

def primeCert4889 : Hex.Nat.PrimeCert := .small 4889

def primeCert4909 : Hex.Nat.PrimeCert := .small 4909

def primeCert4933 : Hex.Nat.PrimeCert := .small 4933

def primeCert4943 : Hex.Nat.PrimeCert := .small 4943

def primeCert4951 : Hex.Nat.PrimeCert := .small 4951

def primeCert4993 : Hex.Nat.PrimeCert := .small 4993

def primeCert5011 : Hex.Nat.PrimeCert := .small 5011

def primeCert5023 : Hex.Nat.PrimeCert := .small 5023

def primeCert5039 : Hex.Nat.PrimeCert := .small 5039

def primeCert5051 : Hex.Nat.PrimeCert := .small 5051

def primeCert5081 : Hex.Nat.PrimeCert := .small 5081

def primeCert5087 : Hex.Nat.PrimeCert := .small 5087

def primeCert5147 : Hex.Nat.PrimeCert := .small 5147

def primeCert5171 : Hex.Nat.PrimeCert := .small 5171

def primeCert5189 : Hex.Nat.PrimeCert := .small 5189

def primeCert5209 : Hex.Nat.PrimeCert := .small 5209

def primeCert5237 : Hex.Nat.PrimeCert := .small 5237

def primeCert5303 : Hex.Nat.PrimeCert := .small 5303

def primeCert5393 : Hex.Nat.PrimeCert := .small 5393

def primeCert5399 : Hex.Nat.PrimeCert := .small 5399

def primeCert5407 : Hex.Nat.PrimeCert := .small 5407

def primeCert5413 : Hex.Nat.PrimeCert := .small 5413

def primeCert5417 : Hex.Nat.PrimeCert := .small 5417

def primeCert5443 : Hex.Nat.PrimeCert := .small 5443

def primeCert5449 : Hex.Nat.PrimeCert := .small 5449

def primeCert5471 : Hex.Nat.PrimeCert := .small 5471

def primeCert5483 : Hex.Nat.PrimeCert := .small 5483

def primeCert5501 : Hex.Nat.PrimeCert := .small 5501

def primeCert5503 : Hex.Nat.PrimeCert := .small 5503

def primeCert5507 : Hex.Nat.PrimeCert := .small 5507

def primeCert5519 : Hex.Nat.PrimeCert := .small 5519

def primeCert5521 : Hex.Nat.PrimeCert := .small 5521

def primeCert5527 : Hex.Nat.PrimeCert := .small 5527

def primeCert5531 : Hex.Nat.PrimeCert := .small 5531

def primeCert5557 : Hex.Nat.PrimeCert := .small 5557

def primeCert5659 : Hex.Nat.PrimeCert := .small 5659

def primeCert5689 : Hex.Nat.PrimeCert := .small 5689

def primeCert5741 : Hex.Nat.PrimeCert := .small 5741

def primeCert5743 : Hex.Nat.PrimeCert := .small 5743

def primeCert5749 : Hex.Nat.PrimeCert := .small 5749

def primeCert5821 : Hex.Nat.PrimeCert := .small 5821

def primeCert5843 : Hex.Nat.PrimeCert := .small 5843

def primeCert5861 : Hex.Nat.PrimeCert := .small 5861

def primeCert5869 : Hex.Nat.PrimeCert := .small 5869

def primeCert5879 : Hex.Nat.PrimeCert := .small 5879

def primeCert5897 : Hex.Nat.PrimeCert := .small 5897

def primeCert5927 : Hex.Nat.PrimeCert := .small 5927

def primeCert5987 : Hex.Nat.PrimeCert := .small 5987

def primeCert6007 : Hex.Nat.PrimeCert := .small 6007

def primeCert6011 : Hex.Nat.PrimeCert := .small 6011

def primeCert6043 : Hex.Nat.PrimeCert := .small 6043

def primeCert6053 : Hex.Nat.PrimeCert := .small 6053

def primeCert6079 : Hex.Nat.PrimeCert := .small 6079

def primeCert6089 : Hex.Nat.PrimeCert := .small 6089

def primeCert6091 : Hex.Nat.PrimeCert := .small 6091

def primeCert6131 : Hex.Nat.PrimeCert := .small 6131

def primeCert6133 : Hex.Nat.PrimeCert := .small 6133

def primeCert6143 : Hex.Nat.PrimeCert := .small 6143

def primeCert6197 : Hex.Nat.PrimeCert := .small 6197

def primeCert6211 : Hex.Nat.PrimeCert := .small 6211

def primeCert6247 : Hex.Nat.PrimeCert := .small 6247

def primeCert6277 : Hex.Nat.PrimeCert := .small 6277

def primeCert6287 : Hex.Nat.PrimeCert := .small 6287

def primeCert6299 : Hex.Nat.PrimeCert := .small 6299

def primeCert6311 : Hex.Nat.PrimeCert := .small 6311

def primeCert6323 : Hex.Nat.PrimeCert := .small 6323

def primeCert6329 : Hex.Nat.PrimeCert := .small 6329

def primeCert6337 : Hex.Nat.PrimeCert := .small 6337

def primeCert6343 : Hex.Nat.PrimeCert := .small 6343

def primeCert6353 : Hex.Nat.PrimeCert := .small 6353

def primeCert6359 : Hex.Nat.PrimeCert := .small 6359

def primeCert6361 : Hex.Nat.PrimeCert := .small 6361

def primeCert6389 : Hex.Nat.PrimeCert := .small 6389

def primeCert6397 : Hex.Nat.PrimeCert := .small 6397

def primeCert6469 : Hex.Nat.PrimeCert := .small 6469

def primeCert6481 : Hex.Nat.PrimeCert := .small 6481

def primeCert6569 : Hex.Nat.PrimeCert := .small 6569

def primeCert6571 : Hex.Nat.PrimeCert := .small 6571

def primeCert6637 : Hex.Nat.PrimeCert := .small 6637

def primeCert6733 : Hex.Nat.PrimeCert := .small 6733

def primeCert6803 : Hex.Nat.PrimeCert := .small 6803

def primeCert6827 : Hex.Nat.PrimeCert := .small 6827

def primeCert6833 : Hex.Nat.PrimeCert := .small 6833

def primeCert6857 : Hex.Nat.PrimeCert := .small 6857

def primeCert6863 : Hex.Nat.PrimeCert := .small 6863

def primeCert6947 : Hex.Nat.PrimeCert := .small 6947

def primeCert6977 : Hex.Nat.PrimeCert := .small 6977

def primeCert7103 : Hex.Nat.PrimeCert := .small 7103

def primeCert7151 : Hex.Nat.PrimeCert := .small 7151

def primeCert7213 : Hex.Nat.PrimeCert := .small 7213

def primeCert7219 : Hex.Nat.PrimeCert := .small 7219

def primeCert7253 : Hex.Nat.PrimeCert := .small 7253

def primeCert7307 : Hex.Nat.PrimeCert := .small 7307

def primeCert7321 : Hex.Nat.PrimeCert := .small 7321

def primeCert7331 : Hex.Nat.PrimeCert := .small 7331

def primeCert7333 : Hex.Nat.PrimeCert := .small 7333

def primeCert7393 : Hex.Nat.PrimeCert := .small 7393

def primeCert7411 : Hex.Nat.PrimeCert := .small 7411

def primeCert7457 : Hex.Nat.PrimeCert := .small 7457

def primeCert7459 : Hex.Nat.PrimeCert := .small 7459

def primeCert7477 : Hex.Nat.PrimeCert := .small 7477

def primeCert7489 : Hex.Nat.PrimeCert := .small 7489

def primeCert7507 : Hex.Nat.PrimeCert := .small 7507

def primeCert7529 : Hex.Nat.PrimeCert := .small 7529

def primeCert7621 : Hex.Nat.PrimeCert := .small 7621

def primeCert7687 : Hex.Nat.PrimeCert := .small 7687

def primeCert7717 : Hex.Nat.PrimeCert := .small 7717

def primeCert7789 : Hex.Nat.PrimeCert := .small 7789

def primeCert7853 : Hex.Nat.PrimeCert := .small 7853

def primeCert7867 : Hex.Nat.PrimeCert := .small 7867

def primeCert7883 : Hex.Nat.PrimeCert := .small 7883

def primeCert7901 : Hex.Nat.PrimeCert := .small 7901

def primeCert7949 : Hex.Nat.PrimeCert := .small 7949

def primeCert8081 : Hex.Nat.PrimeCert := .small 8081

def primeCert8087 : Hex.Nat.PrimeCert := .small 8087

def primeCert8111 : Hex.Nat.PrimeCert := .small 8111

def primeCert8237 : Hex.Nat.PrimeCert := .small 8237

def primeCert8297 : Hex.Nat.PrimeCert := .small 8297

def primeCert8353 : Hex.Nat.PrimeCert := .small 8353

def primeCert8369 : Hex.Nat.PrimeCert := .small 8369

def primeCert8389 : Hex.Nat.PrimeCert := .small 8389

def primeCert8429 : Hex.Nat.PrimeCert := .small 8429

def primeCert8431 : Hex.Nat.PrimeCert := .small 8431

def primeCert8467 : Hex.Nat.PrimeCert := .small 8467

def primeCert8513 : Hex.Nat.PrimeCert := .small 8513

def primeCert8539 : Hex.Nat.PrimeCert := .small 8539

def primeCert8543 : Hex.Nat.PrimeCert := .small 8543

def primeCert8573 : Hex.Nat.PrimeCert := .small 8573

def primeCert8623 : Hex.Nat.PrimeCert := .small 8623

def primeCert8629 : Hex.Nat.PrimeCert := .small 8629

def primeCert8677 : Hex.Nat.PrimeCert := .small 8677

def primeCert8689 : Hex.Nat.PrimeCert := .small 8689

def primeCert8693 : Hex.Nat.PrimeCert := .small 8693

def primeCert8707 : Hex.Nat.PrimeCert := .small 8707

def primeCert8747 : Hex.Nat.PrimeCert := .small 8747

def primeCert8839 : Hex.Nat.PrimeCert := .small 8839

def primeCert9029 : Hex.Nat.PrimeCert := .small 9029

def primeCert9049 : Hex.Nat.PrimeCert := .small 9049

def primeCert9059 : Hex.Nat.PrimeCert := .small 9059

def primeCert9203 : Hex.Nat.PrimeCert := .small 9203

def primeCert9293 : Hex.Nat.PrimeCert := .small 9293

def primeCert9431 : Hex.Nat.PrimeCert := .small 9431

def primeCert9739 : Hex.Nat.PrimeCert := .small 9739

def primeCert9781 : Hex.Nat.PrimeCert := .small 9781

def primeCert9811 : Hex.Nat.PrimeCert := .small 9811

def primeCert9817 : Hex.Nat.PrimeCert := .small 9817

def primeCert9851 : Hex.Nat.PrimeCert := .small 9851

def primeCert9857 : Hex.Nat.PrimeCert := .small 9857

def primeCert9871 : Hex.Nat.PrimeCert := .small 9871

def primeCert9929 : Hex.Nat.PrimeCert := .small 9929

def primeCert10009 : Hex.Nat.PrimeCert := .small 10009

def primeCert10079 : Hex.Nat.PrimeCert := .small 10079

def primeCert10093 : Hex.Nat.PrimeCert := .small 10093

def primeCert10267 : Hex.Nat.PrimeCert := .small 10267

def primeCert10477 : Hex.Nat.PrimeCert := .small 10477

def primeCert10499 : Hex.Nat.PrimeCert := .small 10499

def primeCert10613 : Hex.Nat.PrimeCert := .small 10613

def primeCert10639 : Hex.Nat.PrimeCert := .small 10639

def primeCert10667 : Hex.Nat.PrimeCert := .small 10667

def primeCert10837 : Hex.Nat.PrimeCert := .small 10837

def primeCert10979 : Hex.Nat.PrimeCert := .small 10979

def primeCert11069 : Hex.Nat.PrimeCert := .small 11069

def primeCert11087 : Hex.Nat.PrimeCert := .small 11087

def primeCert11251 : Hex.Nat.PrimeCert := .small 11251

def primeCert11329 : Hex.Nat.PrimeCert := .small 11329

def primeCert11351 : Hex.Nat.PrimeCert := .small 11351

def primeCert11411 : Hex.Nat.PrimeCert := .small 11411

def primeCert11437 : Hex.Nat.PrimeCert := .small 11437

def primeCert11467 : Hex.Nat.PrimeCert := .small 11467

def primeCert11471 : Hex.Nat.PrimeCert := .small 11471

def primeCert11489 : Hex.Nat.PrimeCert := .small 11489

def primeCert11491 : Hex.Nat.PrimeCert := .small 11491

def primeCert11527 : Hex.Nat.PrimeCert := .small 11527

def primeCert11593 : Hex.Nat.PrimeCert := .small 11593

def primeCert11681 : Hex.Nat.PrimeCert := .small 11681

def primeCert11731 : Hex.Nat.PrimeCert := .small 11731

def primeCert11813 : Hex.Nat.PrimeCert := .small 11813

def primeCert11863 : Hex.Nat.PrimeCert := .small 11863

def primeCert12097 : Hex.Nat.PrimeCert := .small 12097

def primeCert12251 : Hex.Nat.PrimeCert := .small 12251

def primeCert12377 : Hex.Nat.PrimeCert := .small 12377

def primeCert12479 : Hex.Nat.PrimeCert := .small 12479

def primeCert12611 : Hex.Nat.PrimeCert := .small 12611

def primeCert12689 : Hex.Nat.PrimeCert := .small 12689

def primeCert12743 : Hex.Nat.PrimeCert := .small 12743

def primeCert12791 : Hex.Nat.PrimeCert := .small 12791

def primeCert12893 : Hex.Nat.PrimeCert := .small 12893

def primeCert13099 : Hex.Nat.PrimeCert := .small 13099

def primeCert13177 : Hex.Nat.PrimeCert := .small 13177

def primeCert13183 : Hex.Nat.PrimeCert := .small 13183

def primeCert13241 : Hex.Nat.PrimeCert := .small 13241

def primeCert13259 : Hex.Nat.PrimeCert := .small 13259

def primeCert13297 : Hex.Nat.PrimeCert := .small 13297

def primeCert13327 : Hex.Nat.PrimeCert := .small 13327

def primeCert13337 : Hex.Nat.PrimeCert := .small 13337

def primeCert13381 : Hex.Nat.PrimeCert := .small 13381

def primeCert13417 : Hex.Nat.PrimeCert := .small 13417

def primeCert13441 : Hex.Nat.PrimeCert := .small 13441

def primeCert13537 : Hex.Nat.PrimeCert := .small 13537

def primeCert13613 : Hex.Nat.PrimeCert := .small 13613

def primeCert13619 : Hex.Nat.PrimeCert := .small 13619

def primeCert13691 : Hex.Nat.PrimeCert := .small 13691

def primeCert13901 : Hex.Nat.PrimeCert := .small 13901

def primeCert14747 : Hex.Nat.PrimeCert := .small 14747

def primeCert14843 : Hex.Nat.PrimeCert := .small 14843

def primeCert14891 : Hex.Nat.PrimeCert := .small 14891

def primeCert15241 : Hex.Nat.PrimeCert := .small 15241

def primeCert15361 : Hex.Nat.PrimeCert := .small 15361

def primeCert15439 : Hex.Nat.PrimeCert := .small 15439

def primeCert15443 : Hex.Nat.PrimeCert := .small 15443

def primeCert15461 : Hex.Nat.PrimeCert := .small 15461

def primeCert15511 : Hex.Nat.PrimeCert := .small 15511

def primeCert15607 : Hex.Nat.PrimeCert := .small 15607

def primeCert15641 : Hex.Nat.PrimeCert := .small 15641

def primeCert15643 : Hex.Nat.PrimeCert := .small 15643

def primeCert15667 : Hex.Nat.PrimeCert := .small 15667

def primeCert15679 : Hex.Nat.PrimeCert := .small 15679

def primeCert15887 : Hex.Nat.PrimeCert := .small 15887

def primeCert16063 : Hex.Nat.PrimeCert := .small 16063

def primeCert17183 : Hex.Nat.PrimeCert := .small 17183

def primeCert17327 : Hex.Nat.PrimeCert := .small 17327

def primeCert17471 : Hex.Nat.PrimeCert := .small 17471

def primeCert17761 : Hex.Nat.PrimeCert := .small 17761

def primeCert17881 : Hex.Nat.PrimeCert := .small 17881

def primeCert17959 : Hex.Nat.PrimeCert := .small 17959

def primeCert17977 : Hex.Nat.PrimeCert := .small 17977

def primeCert17981 : Hex.Nat.PrimeCert := .small 17981

def primeCert17987 : Hex.Nat.PrimeCert := .small 17987

def primeCert18041 : Hex.Nat.PrimeCert := .small 18041

def primeCert18121 : Hex.Nat.PrimeCert := .small 18121

def primeCert18169 : Hex.Nat.PrimeCert := .small 18169

def primeCert18229 : Hex.Nat.PrimeCert := .small 18229

def primeCert18583 : Hex.Nat.PrimeCert := .small 18583

def primeCert18899 : Hex.Nat.PrimeCert := .small 18899

def primeCert19997 : Hex.Nat.PrimeCert := .small 19997

def primeCert20051 : Hex.Nat.PrimeCert := .small 20051

def primeCert20183 : Hex.Nat.PrimeCert := .small 20183

def primeCert20369 : Hex.Nat.PrimeCert := .small 20369

def primeCert20533 : Hex.Nat.PrimeCert := .small 20533

def primeCert20611 : Hex.Nat.PrimeCert := .small 20611

def primeCert20899 : Hex.Nat.PrimeCert := .small 20899

def primeCert20903 : Hex.Nat.PrimeCert := .small 20903

def primeCert20959 : Hex.Nat.PrimeCert := .small 20959

def primeCert20963 : Hex.Nat.PrimeCert := .small 20963

def primeCert21023 : Hex.Nat.PrimeCert := .small 21023

def primeCert21061 : Hex.Nat.PrimeCert := .small 21061

def primeCert21139 : Hex.Nat.PrimeCert := .small 21139

def primeCert21143 : Hex.Nat.PrimeCert := .small 21143

def primeCert21193 : Hex.Nat.PrimeCert := .small 21193

def primeCert21211 : Hex.Nat.PrimeCert := .small 21211

def primeCert21221 : Hex.Nat.PrimeCert := .small 21221

def primeCert21649 : Hex.Nat.PrimeCert := .small 21649

def primeCert23189 : Hex.Nat.PrimeCert := .small 23189

def primeCert23369 : Hex.Nat.PrimeCert := .small 23369

def primeCert23459 : Hex.Nat.PrimeCert := .small 23459

def primeCert23687 : Hex.Nat.PrimeCert := .small 23687

def primeCert23893 : Hex.Nat.PrimeCert := .small 23893

def primeCert23977 : Hex.Nat.PrimeCert := .small 23977

def primeCert24097 : Hex.Nat.PrimeCert := .small 24097

def primeCert24133 : Hex.Nat.PrimeCert := .small 24133

def primeCert24329 : Hex.Nat.PrimeCert := .small 24329

def primeCert24407 : Hex.Nat.PrimeCert := .small 24407

def primeCert24509 : Hex.Nat.PrimeCert := .small 24509

def primeCert24547 : Hex.Nat.PrimeCert := .small 24547

def primeCert24749 : Hex.Nat.PrimeCert := .small 24749

def primeCert25219 : Hex.Nat.PrimeCert := .small 25219

def primeCert27011 : Hex.Nat.PrimeCert := .small 27011

def primeCert27191 : Hex.Nat.PrimeCert := .small 27191

def primeCert27551 : Hex.Nat.PrimeCert := .small 27551

def stage0Row0 : ChainRow := ⟨6, -1, [16386, 18654, 21678, 25206, 28986, 33018, 38058, 44358, 51414, 59730, 69558, 80646, 94002, 109374, 127266, 148434]⟩

def stage0Row0Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (2731, primeCert2731)], [(2, primeCert2), (3, primeCert3), (3109, primeCert3109)], [(2, primeCert2), (3, primeCert3), (3613, primeCert3613)], [(2, primeCert2), (3, primeCert3), (4201, primeCert4201)], [(2, primeCert2), (3, primeCert3), (4831, primeCert4831)], [(2, primeCert2), (3, primeCert3), (5503, primeCert5503)], [(2, primeCert2), (3, primeCert3), (6343, primeCert6343)], [(2, primeCert2), (3, primeCert3), (7393, primeCert7393)], [(2, primeCert2), (3, primeCert3), (11, primeCert11), (19, primeCert19), (41, primeCert41)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (181, primeCert181)], [(2, primeCert2), (3, primeCert3), (11593, primeCert11593)], [(2, primeCert2), (3, primeCert3), (13441, primeCert13441)], [(2, primeCert2), (3, primeCert3), (15667, primeCert15667)], [(2, primeCert2), (3, primeCert3), (18229, primeCert18229)], [(2, primeCert2), (3, primeCert3), (21211, primeCert21211)], [(2, primeCert2), (3, primeCert3), (11, primeCert11), (13, primeCert13), (173, primeCert173)]]

theorem stage0Row0_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row0 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row0 stage0Row0Factors (by decide +kernel)

def stage0Row1 : ChainRow := ⟨6, 1, [16638, 19410, 20922, 24198, 28230, 32766, 37554, 43602, 50406, 58470, 68046, 79386, 92490, 107358, 125250, 145914]⟩

def stage0Row1Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (47, primeCert47), (59, primeCert59)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (647, primeCert647)], [(2, primeCert2), (3, primeCert3), (11, primeCert11), (317, primeCert317)], [(2, primeCert2), (3, primeCert3), (37, primeCert37), (109, primeCert109)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (941, primeCert941)], [(2, primeCert2), (3, primeCert3), (43, primeCert43), (127, primeCert127)], [(2, primeCert2), (3, primeCert3), (11, primeCert11), (569, primeCert569)], [(2, primeCert2), (3, primeCert3), (13, primeCert13), (13, primeCert13), (43, primeCert43)], [(2, primeCert2), (3, primeCert3), (31, primeCert31), (271, primeCert271)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (1949, primeCert1949)], [(2, primeCert2), (3, primeCert3), (11, primeCert11), (1031, primeCert1031)], [(2, primeCert2), (3, primeCert3), (101, primeCert101), (131, primeCert131)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (3083, primeCert3083)], [(2, primeCert2), (3, primeCert3), (29, primeCert29), (617, primeCert617)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (5, primeCert5), (167, primeCert167)], [(2, primeCert2), (3, primeCert3), (83, primeCert83), (293, primeCert293)]]

theorem stage0Row1_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row1 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row1 stage0Row1Factors (by decide +kernel)

def stage0Row2 : ChainRow := ⟨12, -1, [16392, 18912, 21936, 25464, 29496, 34284, 39828, 46128, 53688, 62508, 72084, 82668, 96024, 111648, 130044, 151464]⟩

def stage0Row2Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (683, primeCert683)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (197, primeCert197)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (457, primeCert457)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (1061, primeCert1061)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (1229, primeCert1229)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (2857, primeCert2857)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3319, primeCert3319)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (31, primeCert31), (31, primeCert31)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (2237, primeCert2237)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5209, primeCert5209)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (6007, primeCert6007)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (83, primeCert83), (83, primeCert83)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (4001, primeCert4001)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (1163, primeCert1163)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (10837, primeCert10837)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (6311, primeCert6311)]]

theorem stage0Row2_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row2 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row2 stage0Row2Factors (by decide +kernel)

def stage0Row3 : ChainRow := ⟨12, 1, [16644, 18660, 21684, 25212, 28740, 33528, 39072, 45372, 52932, 61752, 71832, 83676, 97284, 113412, 132312, 153732]⟩

def stage0Row3Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (3, primeCert3), (19, primeCert19), (73, primeCert73)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (311, primeCert311)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (13, primeCert13), (139, primeCert139)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (11, primeCert11), (191, primeCert191)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (479, primeCert479)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (11, primeCert11), (127, primeCert127)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (11, primeCert11), (37, primeCert37)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (19, primeCert19), (199, primeCert199)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (11, primeCert11), (401, primeCert401)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (31, primeCert31), (83, primeCert83)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (41, primeCert41), (73, primeCert73)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (19, primeCert19), (367, primeCert367)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (11, primeCert11), (11, primeCert11), (67, primeCert67)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (13, primeCert13), (727, primeCert727)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (37, primeCert37), (149, primeCert149)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (23, primeCert23), (557, primeCert557)]]

theorem stage0Row3_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row3 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row3 stage0Row3Factors (by decide +kernel)

def stage0Row4 : ChainRow := ⟨18, -1, [16398, 18918, 21438, 24714, 28746, 33534, 38826, 44874, 51426, 59742, 69318, 80658, 94014, 109638, 127530, 148446]⟩

def stage0Row4Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (3, primeCert3), (911, primeCert911)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (1051, primeCert1051)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (397, primeCert397)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (1373, primeCert1373)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (1597, primeCert1597)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (23, primeCert23)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (719, primeCert719)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (277, primeCert277)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (2857, primeCert2857)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3319, primeCert3319)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3851, primeCert3851)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (4481, primeCert4481)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (1741, primeCert1741)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (6091, primeCert6091)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (13, primeCert13), (109, primeCert109)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (2749, primeCert2749)]]

theorem stage0Row4_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row4 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row4 stage0Row4Factors (by decide +kernel)

def stage0Row5 : ChainRow := ⟨18, 1, [16650, 19422, 22446, 25974, 29754, 34542, 40086, 46134, 53694, 62514, 72846, 84942, 98802, 114930, 134082, 155754]⟩

def stage0Row5Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (37, primeCert37)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (13, primeCert13), (83, primeCert83)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (29, primeCert29), (43, primeCert43)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (13, primeCert13), (37, primeCert37)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (19, primeCert19), (29, primeCert29)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (19, primeCert19), (101, primeCert101)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (17, primeCert17), (131, primeCert131)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (11, primeCert11), (233, primeCert233)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (19, primeCert19), (157, primeCert157)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (23, primeCert23), (151, primeCert151)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (19, primeCert19), (71, primeCert71)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (11, primeCert11), (11, primeCert11), (13, primeCert13)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (11, primeCert11), (499, primeCert499)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (1277, primeCert1277)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (13, primeCert13), (191, primeCert191)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (17, primeCert17), (509, primeCert509)]]

theorem stage0Row5_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row5 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row5 stage0Row5Factors (by decide +kernel)

def stage0Row6 : ChainRow := ⟨24, -1, [16656, 19428, 22452, 25728, 29508, 34296, 39588, 45888, 53196, 61764, 71844, 83184, 97044, 113172, 131568, 153492]⟩

def stage0Row6Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (347, primeCert347)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (1619, primeCert1619)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (1871, primeCert1871)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (67, primeCert67)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (2459, primeCert2459)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (1429, primeCert1429)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3299, primeCert3299)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (239, primeCert239)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (11, primeCert11), (13, primeCert13), (31, primeCert31)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5147, primeCert5147)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5987, primeCert5987)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (1733, primeCert1733)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (8087, primeCert8087)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (9431, primeCert9431)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (2741, primeCert2741)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (12791, primeCert12791)]]

theorem stage0Row6_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row6 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row6 stage0Row6Factors (by decide +kernel)

def stage0Row7 : ChainRow := ⟨24, 1, [15900, 18420, 20940, 23712, 27492, 32028, 37320, 43368, 50424, 58236, 67560, 78648, 91500, 106620, 123504, 143916]⟩

def stage0Row7Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (53, primeCert53)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (307, primeCert307)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (349, primeCert349)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (13, primeCert13), (19, primeCert19)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (29, primeCert29), (79, primeCert79)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (17, primeCert17), (157, primeCert157)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (311, primeCert311)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (13, primeCert13), (139, primeCert139)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (11, primeCert11), (191, primeCert191)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (23, primeCert23), (211, primeCert211)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (563, primeCert563)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (29, primeCert29), (113, primeCert113)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (5, primeCert5), (61, primeCert61)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (1777, primeCert1777)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (31, primeCert31), (83, primeCert83)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (67, primeCert67), (179, primeCert179)]]

theorem stage0Row7_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row7 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row7 stage0Row7Factors (by decide +kernel)

def stage0Row8 : ChainRow := ⟨30, -1, [16662, 17670, 20442, 23466, 26742, 31026, 36066, 41862, 48666, 56730, 65550, 76134, 88482, 103098, 119982, 139134, 162066]⟩

def stage0Row8Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (2777, primeCert2777)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (19, primeCert19), (31, primeCert31)], [(2, primeCert2), (3, primeCert3), (3407, primeCert3407)], [(2, primeCert2), (3, primeCert3), (3911, primeCert3911)], [(2, primeCert2), (3, primeCert3), (4457, primeCert4457)], [(2, primeCert2), (3, primeCert3), (5171, primeCert5171)], [(2, primeCert2), (3, primeCert3), (6011, primeCert6011)], [(2, primeCert2), (3, primeCert3), (6977, primeCert6977)], [(2, primeCert2), (3, primeCert3), (8111, primeCert8111)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (31, primeCert31), (61, primeCert61)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (19, primeCert19), (23, primeCert23)], [(2, primeCert2), (3, primeCert3), (12689, primeCert12689)], [(2, primeCert2), (3, primeCert3), (14747, primeCert14747)], [(2, primeCert2), (3, primeCert3), (17183, primeCert17183)], [(2, primeCert2), (3, primeCert3), (19997, primeCert19997)], [(2, primeCert2), (3, primeCert3), (23189, primeCert23189)], [(2, primeCert2), (3, primeCert3), (27011, primeCert27011)]]

theorem stage0Row8_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row8 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row8 stage0Row8Factors (by decide +kernel)

def stage0Row9 : ChainRow := ⟨30, 1, [16410, 18930, 20190, 23214, 26994, 31278, 35814, 41358, 48162, 55974, 65046, 75630, 87474, 101838, 118722, 137874, 159294]⟩

def stage0Row9Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (5, primeCert5), (547, primeCert547)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (631, primeCert631)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (673, primeCert673)], [(2, primeCert2), (3, primeCert3), (53, primeCert53), (73, primeCert73)], [(2, primeCert2), (3, primeCert3), (11, primeCert11), (409, primeCert409)], [(2, primeCert2), (3, primeCert3), (13, primeCert13), (401, primeCert401)], [(2, primeCert2), (3, primeCert3), (47, primeCert47), (127, primeCert127)], [(2, primeCert2), (3, primeCert3), (61, primeCert61), (113, primeCert113)], [(2, primeCert2), (3, primeCert3), (23, primeCert23), (349, primeCert349)], [(2, primeCert2), (3, primeCert3), (19, primeCert19), (491, primeCert491)], [(2, primeCert2), (3, primeCert3), (37, primeCert37), (293, primeCert293)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (2521, primeCert2521)], [(2, primeCert2), (3, primeCert3), (61, primeCert61), (239, primeCert239)], [(2, primeCert2), (3, primeCert3), (11, primeCert11), (1543, primeCert1543)], [(2, primeCert2), (3, primeCert3), (47, primeCert47), (421, primeCert421)], [(2, primeCert2), (3, primeCert3), (11, primeCert11), (2089, primeCert2089)], [(2, primeCert2), (3, primeCert3), (139, primeCert139), (191, primeCert191)]]

theorem stage0Row9_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row9 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row9 stage0Row9Factors (by decide +kernel)

def stage0Row10 : ChainRow := ⟨36, -1, [16416, 18936, 21708, 25236, 29268, 33804, 39348, 45648, 53208, 62028, 72108, 83196, 97056, 113184, 131832, 153756]⟩

def stage0Row10Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (19, primeCert19)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (263, primeCert263)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (67, primeCert67)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (701, primeCert701)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (271, primeCert271)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (313, primeCert313)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (1093, primeCert1093)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (317, primeCert317)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (739, primeCert739)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (1723, primeCert1723)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (2003, primeCert2003)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (2311, primeCert2311)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (337, primeCert337)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (131, primeCert131)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (1831, primeCert1831)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (4271, primeCert4271)]]

theorem stage0Row10_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row10 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row10 stage0Row10Factors (by decide +kernel)

def stage0Row11 : ChainRow := ⟨36, 1, [15912, 18432, 21204, 24480, 28260, 32292, 37332, 43380, 50184, 58500, 68076, 78156, 90252, 105120, 122508, 142920]⟩

def stage0Row11Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (13, primeCert13), (17, primeCert17)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (19, primeCert19), (31, primeCert31)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (17, primeCert17)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (157, primeCert157)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (13, primeCert13), (23, primeCert23)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (17, primeCert17), (61, primeCert61)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (241, primeCert241)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (17, primeCert17), (41, primeCert41)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (5, primeCert5), (13, primeCert13)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (31, primeCert31), (61, primeCert61)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (13, primeCert13), (167, primeCert167)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (23, primeCert23), (109, primeCert109)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (73, primeCert73)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (41, primeCert41), (83, primeCert83)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (397, primeCert397)]]

theorem stage0Row11_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row11 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row11 stage0Row11Factors (by decide +kernel)

def stage0Row12 : ChainRow := ⟨48, -1, [16428, 18948, 21972, 25248, 28524, 33060, 37344, 43392, 50448, 58008, 67584, 78168, 91020, 106140, 123528, 143688]⟩

def stage0Row12Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (3, primeCert3), (37, primeCert37), (37, primeCert37)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (1579, primeCert1579)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (1831, primeCert1831)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (263, primeCert263)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (2377, primeCert2377)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (19, primeCert19), (29, primeCert29)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (389, primeCert389)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (113, primeCert113)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (1051, primeCert1051)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (2417, primeCert2417)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (11, primeCert11)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3257, primeCert3257)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (37, primeCert37), (41, primeCert41)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (29, primeCert29), (61, primeCert61)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5147, primeCert5147)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5987, primeCert5987)]]

theorem stage0Row12_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row12 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row12 stage0Row12Factors (by decide +kernel)

def stage0Row13 : ChainRow := ⟨48, 1, [15420, 17688, 18696, 21720, 24492, 28272, 31800, 37092, 43140, 50196, 58512, 67332, 78420, 90768, 103368, 120252, 140160, 163344]⟩

def stage0Row13Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (257, primeCert257)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (11, primeCert11), (67, primeCert67)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (19, primeCert19), (41, primeCert41)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (181, primeCert181)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (13, primeCert13), (157, primeCert157)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (19, primeCert19), (31, primeCert31)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (53, primeCert53)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (11, primeCert11), (281, primeCert281)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (719, primeCert719)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (47, primeCert47), (89, primeCert89)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (23, primeCert23), (53, primeCert53)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (31, primeCert31), (181, primeCert181)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (1307, primeCert1307)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (31, primeCert31), (61, primeCert61)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (59, primeCert59), (73, primeCert73)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (11, primeCert11), (911, primeCert911)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (73, primeCert73)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (41, primeCert41), (83, primeCert83)]]

theorem stage0Row13_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row13 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row13 stage0Row13Factors (by decide +kernel)

def stage0Row14 : ChainRow := ⟨54, -1, [15426, 17946, 20718, 23742, 26766, 30546, 35586, 40878, 47682, 55494, 64314, 74646, 86994, 101358, 118242, 137646, 160326]⟩

def stage0Row14Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (3, primeCert3), (857, primeCert857)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (997, primeCert997)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (1151, primeCert1151)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (1319, primeCert1319)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (1487, primeCert1487)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (1697, primeCert1697)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (659, primeCert659)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (757, primeCert757)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (883, primeCert883)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3083, primeCert3083)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (397, primeCert397)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (11, primeCert11), (13, primeCert13), (29, primeCert29)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (179, primeCert179)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (1877, primeCert1877)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (6569, primeCert6569)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (2549, primeCert2549)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (2969, primeCert2969)]]

theorem stage0Row14_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row14 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row14 stage0Row14Factors (by decide +kernel)

def stage0Row15 : ChainRow := ⟨54, 1, [16434, 18450, 20970, 23994, 27522, 32058, 37350, 43146, 49950, 58266, 67590, 78678, 91530, 106650, 124290, 144450]⟩

def stage0Row15Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (3, primeCert3), (11, primeCert11), (83, primeCert83)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (41, primeCert41)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (233, primeCert233)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (31, primeCert31), (43, primeCert43)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (11, primeCert11), (139, primeCert139)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (13, primeCert13), (137, primeCert137)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (83, primeCert83)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (17, primeCert17), (47, primeCert47)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (37, primeCert37)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (13, primeCert13), (83, primeCert83)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (751, primeCert751)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (31, primeCert31), (47, primeCert47)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (113, primeCert113)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (79, primeCert79)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (1381, primeCert1381)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (107, primeCert107)]]

theorem stage0Row15_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row15 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row15 stage0Row15Factors (by decide +kernel)

def stage0Row16 : ChainRow := ⟨60, -1, [15936, 18456, 20472, 23748, 27276, 31308, 36096, 41892, 48696, 56760, 66084, 76668, 89016, 103128, 120264, 140172, 163356]⟩

def stage0Row16Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (83, primeCert83)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (769, primeCert769)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (853, primeCert853)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (1979, primeCert1979)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (2273, primeCert2273)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (2609, primeCert2609)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (47, primeCert47)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3491, primeCert3491)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (2029, primeCert2029)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (43, primeCert43)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5507, primeCert5507)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (6389, primeCert6389)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3709, primeCert3709)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (4297, primeCert4297)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5011, primeCert5011)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (11681, primeCert11681)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (13613, primeCert13613)]]

theorem stage0Row16_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row16 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row16 stage0Row16Factors (by decide +kernel)

def stage0Row17 : ChainRow := ⟨60, 1, [16440, 18960, 21480, 24252, 27780, 31812, 36852, 41640, 48444, 56508, 65832, 76164, 88764, 103380, 120516, 139668, 162852]⟩

def stage0Row17Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (137, primeCert137)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (79, primeCert79)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (179, primeCert179)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (43, primeCert43), (47, primeCert47)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (463, primeCert463)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (11, primeCert11), (241, primeCert241)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (37, primeCert37), (83, primeCert83)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (347, primeCert347)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (11, primeCert11), (367, primeCert367)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (17, primeCert17), (277, primeCert277)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (13, primeCert13), (211, primeCert211)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (11, primeCert11), (577, primeCert577)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (13, primeCert13), (569, primeCert569)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (1723, primeCert1723)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (11, primeCert11), (11, primeCert11), (83, primeCert83)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (103, primeCert103), (113, primeCert113)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (41, primeCert41), (331, primeCert331)]]

theorem stage0Row17_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row17 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row17 stage0Row17Factors (by decide +kernel)

def stage0Row18 : ChainRow := ⟨66, -1, [16446, 18714, 21738, 25266, 28794, 33330, 38874, 45174, 52482, 61050, 70878, 81714, 95322, 109434, 127326, 148494]⟩

def stage0Row18Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (2741, primeCert2741)], [(2, primeCert2), (3, primeCert3), (3119, primeCert3119)], [(2, primeCert2), (3, primeCert3), (3623, primeCert3623)], [(2, primeCert2), (3, primeCert3), (4211, primeCert4211)], [(2, primeCert2), (3, primeCert3), (4799, primeCert4799)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (101, primeCert101)], [(2, primeCert2), (3, primeCert3), (11, primeCert11), (19, primeCert19), (31, primeCert31)], [(2, primeCert2), (3, primeCert3), (7529, primeCert7529)], [(2, primeCert2), (3, primeCert3), (8747, primeCert8747)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (11, primeCert11), (37, primeCert37)], [(2, primeCert2), (3, primeCert3), (11813, primeCert11813)], [(2, primeCert2), (3, primeCert3), (13619, primeCert13619)], [(2, primeCert2), (3, primeCert3), (15887, primeCert15887)], [(2, primeCert2), (3, primeCert3), (13, primeCert13), (23, primeCert23), (61, primeCert61)], [(2, primeCert2), (3, primeCert3), (21221, primeCert21221)], [(2, primeCert2), (3, primeCert3), (24749, primeCert24749)]]

theorem stage0Row18_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row18 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row18 stage0Row18Factors (by decide +kernel)

def stage0Row19 : ChainRow := ⟨66, 1, [15690, 18210, 20982, 24258, 27786, 32070, 37362, 43410, 50466, 58782, 67854, 78942, 92046, 107166, 124050, 144714]⟩

def stage0Row19Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (5, primeCert5), (523, primeCert523)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (607, primeCert607)], [(2, primeCert2), (3, primeCert3), (13, primeCert13), (269, primeCert269)], [(2, primeCert2), (3, primeCert3), (13, primeCert13), (311, primeCert311)], [(2, primeCert2), (3, primeCert3), (11, primeCert11), (421, primeCert421)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (1069, primeCert1069)], [(2, primeCert2), (3, primeCert3), (13, primeCert13), (479, primeCert479)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (1447, primeCert1447)], [(2, primeCert2), (3, primeCert3), (13, primeCert13), (647, primeCert647)], [(2, primeCert2), (3, primeCert3), (97, primeCert97), (101, primeCert101)], [(2, primeCert2), (3, primeCert3), (43, primeCert43), (263, primeCert263)], [(2, primeCert2), (3, primeCert3), (59, primeCert59), (223, primeCert223)], [(2, primeCert2), (3, primeCert3), (23, primeCert23), (23, primeCert23), (29, primeCert29)], [(2, primeCert2), (3, primeCert3), (53, primeCert53), (337, primeCert337)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (827, primeCert827)], [(2, primeCert2), (3, primeCert3), (89, primeCert89), (271, primeCert271)]]

theorem stage0Row19_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row19 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row19 stage0Row19Factors (by decide +kernel)

def stage0Row20 : ChainRow := ⟨72, -1, [16452, 18468, 21492, 24768, 28800, 33588, 39132, 45432, 52992, 61056, 70632, 82224, 95832, 111456, 129852, 150768]⟩

def stage0Row20Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (457, primeCert457)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (19, primeCert19)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (199, primeCert199)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (43, primeCert43)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (311, primeCert311)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (1087, primeCert1087)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (631, primeCert631)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (23, primeCert23)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (53, primeCert53)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (109, primeCert109)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (571, primeCert571)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (11, primeCert11), (11, primeCert11), (11, primeCert11)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (43, primeCert43)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3607, primeCert3607)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (349, primeCert349)]]

theorem stage0Row20_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row20 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row20 stage0Row20Factors (by decide +kernel)

def stage0Row21 : ChainRow := ⟨72, 1, [15444, 17460, 19980, 23256, 26532, 30060, 33840, 38628, 44676, 50220, 58032, 66600, 77688, 90540, 105156, 122544, 142956]⟩

def stage0Row21Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (11, primeCert11), (13, primeCert13)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (97, primeCert97)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (37, primeCert37)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (17, primeCert17), (19, primeCert19)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (11, primeCert11), (67, primeCert67)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (167, primeCert167)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (47, primeCert47)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (29, primeCert29), (37, primeCert37)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (17, primeCert17), (73, primeCert73)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (31, primeCert31)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (13, primeCert13), (31, primeCert31)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (37, primeCert37)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (13, primeCert13), (83, primeCert83)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (503, primeCert503)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (23, primeCert23), (127, primeCert127)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (23, primeCert23), (37, primeCert37)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (11, primeCert11), (19, primeCert19), (19, primeCert19)]]

theorem stage0Row21_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row21 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row21 stage0Row21Factors (by decide +kernel)

def stage0Row22 : ChainRow := ⟨78, -1, [15954, 18474, 21498, 24774, 28806, 33342, 38886, 44934, 52242, 60558, 70386, 81222, 94074, 109446, 126834, 147498]⟩

def stage0Row22Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (2659, primeCert2659)], [(2, primeCert2), (3, primeCert3), (3079, primeCert3079)], [(2, primeCert2), (3, primeCert3), (3583, primeCert3583)], [(2, primeCert2), (3, primeCert3), (4129, primeCert4129)], [(2, primeCert2), (3, primeCert3), (4801, primeCert4801)], [(2, primeCert2), (3, primeCert3), (5557, primeCert5557)], [(2, primeCert2), (3, primeCert3), (6481, primeCert6481)], [(2, primeCert2), (3, primeCert3), (7489, primeCert7489)], [(2, primeCert2), (3, primeCert3), (8707, primeCert8707)], [(2, primeCert2), (3, primeCert3), (10093, primeCert10093)], [(2, primeCert2), (3, primeCert3), (11731, primeCert11731)], [(2, primeCert2), (3, primeCert3), (13537, primeCert13537)], [(2, primeCert2), (3, primeCert3), (15679, primeCert15679)], [(2, primeCert2), (3, primeCert3), (17, primeCert17), (29, primeCert29), (37, primeCert37)], [(2, primeCert2), (3, primeCert3), (21139, primeCert21139)], [(2, primeCert2), (3, primeCert3), (13, primeCert13), (31, primeCert31), (61, primeCert61)]]

theorem stage0Row22_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row22 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row22 stage0Row22Factors (by decide +kernel)

def stage0Row23 : ChainRow := ⟨78, 1, [16458, 17970, 20490, 23766, 26286, 30570, 35610, 41406, 48210, 55518, 64590, 74418, 86262, 100626, 116250, 134394, 156066]⟩

def stage0Row23Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (13, primeCert13), (211, primeCert211)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (599, primeCert599)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (683, primeCert683)], [(2, primeCert2), (3, primeCert3), (17, primeCert17), (233, primeCert233)], [(2, primeCert2), (3, primeCert3), (13, primeCert13), (337, primeCert337)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (1019, primeCert1019)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (1187, primeCert1187)], [(2, primeCert2), (3, primeCert3), (67, primeCert67), (103, primeCert103)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (1607, primeCert1607)], [(2, primeCert2), (3, primeCert3), (19, primeCert19), (487, primeCert487)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (2153, primeCert2153)], [(2, primeCert2), (3, primeCert3), (79, primeCert79), (157, primeCert157)], [(2, primeCert2), (3, primeCert3), (11, primeCert11), (1307, primeCert1307)], [(2, primeCert2), (3, primeCert3), (31, primeCert31), (541, primeCert541)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (5, primeCert5), (5, primeCert5), (31, primeCert31)], [(2, primeCert2), (3, primeCert3), (13, primeCert13), (1723, primeCert1723)], [(2, primeCert2), (3, primeCert3), (19, primeCert19), (37, primeCert37), (37, primeCert37)]]

theorem stage0Row23_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row23 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row23 stage0Row23Factors (by decide +kernel)

def stage0Row24 : ChainRow := ⟨90, -1, [15966, 18234, 21258, 24786, 28818, 33606, 38898, 45198, 52506, 60318, 70146, 81486, 94338, 109710, 127854, 148770]⟩

def stage0Row24Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (3, primeCert3), (887, primeCert887)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (1013, primeCert1013)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (1181, primeCert1181)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (17, primeCert17)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (1601, primeCert1601)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (1867, primeCert1867)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (2161, primeCert2161)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (31, primeCert31)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (2917, primeCert2917)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (1117, primeCert1117)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (433, primeCert433)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (503, primeCert503)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (1747, primeCert1747)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (23, primeCert23), (53, primeCert53)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (7103, primeCert7103)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (19, primeCert19), (29, primeCert29)]]

theorem stage0Row24_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row24 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row24 stage0Row24Factors (by decide +kernel)

def stage0Row25 : ChainRow := ⟨90, 1, [16470, 18990, 21762, 25290, 28314, 32850, 38142, 44190, 51246, 59310, 69138, 80478, 93834, 108702, 126594, 146754]⟩

def stage0Row25Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (61, primeCert61)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (211, primeCert211)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (13, primeCert13), (31, primeCert31)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (281, primeCert281)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (11, primeCert11), (11, primeCert11), (13, primeCert13)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (73, primeCert73)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (13, primeCert13), (163, primeCert163)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (491, primeCert491)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (13, primeCert13), (73, primeCert73)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (659, primeCert659)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (23, primeCert23), (167, primeCert167)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (17, primeCert17), (263, primeCert263)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (13, primeCert13), (401, primeCert401)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (11, primeCert11), (61, primeCert61)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (13, primeCert13), (541, primeCert541)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (31, primeCert31), (263, primeCert263)]]

theorem stage0Row25_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row25 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row25 stage0Row25Factors (by decide +kernel)

def stage0Row26 : ChainRow := ⟨96, -1, [16476, 18996, 21768, 25044, 29076, 33612, 38904, 45204, 52512, 60576, 70656, 81996, 94596, 110220, 127356, 148524]⟩

def stage0Row26Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (3, primeCert3), (1373, primeCert1373)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (1583, primeCert1583)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (907, primeCert907)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (2087, primeCert2087)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (2423, primeCert2423)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (2801, primeCert2801)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (1621, primeCert1621)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3767, primeCert3767)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (547, primeCert547)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (631, primeCert631)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (23, primeCert23)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (6833, primeCert6833)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (7883, primeCert7883)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (167, primeCert167)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (10613, primeCert10613)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (12377, primeCert12377)]]

theorem stage0Row26_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row26 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row26 stage0Row26Factors (by decide +kernel)

def stage0Row27 : ChainRow := ⟨96, 1, [15720, 18240, 21012, 24288, 28320, 32100, 37392, 43440, 50244, 58560, 68136, 79476, 92580, 107952, 125340, 145500]⟩

def stage0Row27Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (131, primeCert131)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (19, primeCert19)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (17, primeCert17), (103, primeCert103)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (11, primeCert11), (23, primeCert23)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (59, primeCert59)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (107, primeCert107)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (19, primeCert19), (41, primeCert41)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (181, primeCert181)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (53, primeCert53), (79, primeCert79)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (61, primeCert61)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (17, primeCert17), (167, primeCert167)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (37, primeCert37), (179, primeCert179)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (1543, primeCert1543)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (13, primeCert13), (173, primeCert173)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (2089, primeCert2089)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (5, primeCert5), (97, primeCert97)]]

theorem stage0Row27_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row27 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row27 stage0Row27Factors (by decide +kernel)

def stage0Row28 : ChainRow := ⟨102, -1, [15978, 18498, 20766, 24042, 27822, 32358, 36894, 41682, 48486, 56550, 65874, 76458, 89058, 103170, 120306, 140214, 163146]⟩

def stage0Row28Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (2663, primeCert2663)], [(2, primeCert2), (3, primeCert3), (3083, primeCert3083)], [(2, primeCert2), (3, primeCert3), (3461, primeCert3461)], [(2, primeCert2), (3, primeCert3), (4007, primeCert4007)], [(2, primeCert2), (3, primeCert3), (4637, primeCert4637)], [(2, primeCert2), (3, primeCert3), (5393, primeCert5393)], [(2, primeCert2), (3, primeCert3), (11, primeCert11), (13, primeCert13), (43, primeCert43)], [(2, primeCert2), (3, primeCert3), (6947, primeCert6947)], [(2, primeCert2), (3, primeCert3), (8081, primeCert8081)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (13, primeCert13), (29, primeCert29)], [(2, primeCert2), (3, primeCert3), (10979, primeCert10979)], [(2, primeCert2), (3, primeCert3), (12743, primeCert12743)], [(2, primeCert2), (3, primeCert3), (14843, primeCert14843)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (19, primeCert19), (181, primeCert181)], [(2, primeCert2), (3, primeCert3), (20051, primeCert20051)], [(2, primeCert2), (3, primeCert3), (23369, primeCert23369)], [(2, primeCert2), (3, primeCert3), (27191, primeCert27191)]]

theorem stage0Row28_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row28 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row28 stage0Row28Factors (by decide +kernel)

def stage0Row29 : ChainRow := ⟨102, 1, [16482, 17238, 19758, 23034, 26814, 31098, 36138, 41934, 47982, 55794, 64866, 75450, 87042, 101154, 117786, 136938, 159618]⟩

def stage0Row29Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (41, primeCert41), (67, primeCert67)], [(2, primeCert2), (3, primeCert3), (13, primeCert13), (13, primeCert13), (17, primeCert17)], [(2, primeCert2), (3, primeCert3), (37, primeCert37), (89, primeCert89)], [(2, primeCert2), (3, primeCert3), (11, primeCert11), (349, primeCert349)], [(2, primeCert2), (3, primeCert3), (41, primeCert41), (109, primeCert109)], [(2, primeCert2), (3, primeCert3), (71, primeCert71), (73, primeCert73)], [(2, primeCert2), (3, primeCert3), (19, primeCert19), (317, primeCert317)], [(2, primeCert2), (3, primeCert3), (29, primeCert29), (241, primeCert241)], [(2, primeCert2), (3, primeCert3), (11, primeCert11), (727, primeCert727)], [(2, primeCert2), (3, primeCert3), (17, primeCert17), (547, primeCert547)], [(2, primeCert2), (3, primeCert3), (19, primeCert19), (569, primeCert569)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (503, primeCert503)], [(2, primeCert2), (3, primeCert3), (89, primeCert89), (163, primeCert163)], [(2, primeCert2), (3, primeCert3), (23, primeCert23), (733, primeCert733)], [(2, primeCert2), (3, primeCert3), (67, primeCert67), (293, primeCert293)], [(2, primeCert2), (3, primeCert3), (29, primeCert29), (787, primeCert787)], [(2, primeCert2), (3, primeCert3), (37, primeCert37), (719, primeCert719)]]

theorem stage0Row29_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row29 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row29 stage0Row29Factors (by decide +kernel)

def stage0Row30 : ChainRow := ⟨108, -1, [16488, 19008, 22032, 25056, 29088, 33876, 39168, 45468, 53028, 61848, 71928, 83268, 96372, 112248, 130896, 152316]⟩

def stage0Row30Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (229, primeCert229)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (11, primeCert11)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (17, primeCert17)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (29, primeCert29)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (101, primeCert101)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (941, primeCert941)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (17, primeCert17)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (421, primeCert421)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (491, primeCert491)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (859, primeCert859)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (37, primeCert37)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (257, primeCert257)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (2677, primeCert2677)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (1559, primeCert1559)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (101, primeCert101)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (4231, primeCert4231)]]

theorem stage0Row30_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row30 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row30 stage0Row30Factors (by decide +kernel)

def stage0Row31 : ChainRow := ⟨108, 1, [16236, 17748, 20520, 21780, 25308, 29340, 33120, 38412, 43956, 51012, 58824, 68400, 79740, 92340, 107712, 125100, 145512]⟩

def stage0Row31Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (11, primeCert11), (41, primeCert41)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (17, primeCert17), (29, primeCert29)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (19, primeCert19)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (11, primeCert11), (11, primeCert11)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (19, primeCert19), (37, primeCert37)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (163, primeCert163)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (23, primeCert23)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (11, primeCert11), (97, primeCert97)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (11, primeCert11), (37, primeCert37)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (13, primeCert13), (109, primeCert109)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (19, primeCert19), (43, primeCert43)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (19, primeCert19)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (443, primeCert443)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (19, primeCert19)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (11, primeCert11), (17, primeCert17)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (139, primeCert139)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (43, primeCert43), (47, primeCert47)]]

theorem stage0Row31_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row31 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row31 stage0Row31Factors (by decide +kernel)

def stage0Row32 : ChainRow := ⟨114, -1, [16494, 19014, 22038, 25566, 29598, 34134, 39426, 45726, 53034, 61602, 71178, 82770, 96378, 111498, 129894, 151314]⟩

def stage0Row32Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (2749, primeCert2749)], [(2, primeCert2), (3, primeCert3), (3169, primeCert3169)], [(2, primeCert2), (3, primeCert3), (3673, primeCert3673)], [(2, primeCert2), (3, primeCert3), (4261, primeCert4261)], [(2, primeCert2), (3, primeCert3), (4933, primeCert4933)], [(2, primeCert2), (3, primeCert3), (5689, primeCert5689)], [(2, primeCert2), (3, primeCert3), (6571, primeCert6571)], [(2, primeCert2), (3, primeCert3), (7621, primeCert7621)], [(2, primeCert2), (3, primeCert3), (8839, primeCert8839)], [(2, primeCert2), (3, primeCert3), (10267, primeCert10267)], [(2, primeCert2), (3, primeCert3), (11863, primeCert11863)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (31, primeCert31), (89, primeCert89)], [(2, primeCert2), (3, primeCert3), (16063, primeCert16063)], [(2, primeCert2), (3, primeCert3), (18583, primeCert18583)], [(2, primeCert2), (3, primeCert3), (21649, primeCert21649)], [(2, primeCert2), (3, primeCert3), (25219, primeCert25219)]]

theorem stage0Row32_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row32 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row32 stage0Row32Factors (by decide +kernel)

def stage0Row33 : ChainRow := ⟨114, 1, [15738, 18258, 21030, 24054, 27330, 31866, 37158, 43206, 50010, 57822, 67398, 78486, 91338, 106458, 123342, 143250]⟩

def stage0Row33Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (43, primeCert43), (61, primeCert61)], [(2, primeCert2), (3, primeCert3), (17, primeCert17), (179, primeCert179)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (701, primeCert701)], [(2, primeCert2), (3, primeCert3), (19, primeCert19), (211, primeCert211)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (911, primeCert911)], [(2, primeCert2), (3, primeCert3), (47, primeCert47), (113, primeCert113)], [(2, primeCert2), (3, primeCert3), (11, primeCert11), (563, primeCert563)], [(2, primeCert2), (3, primeCert3), (19, primeCert19), (379, primeCert379)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (1667, primeCert1667)], [(2, primeCert2), (3, primeCert3), (23, primeCert23), (419, primeCert419)], [(2, primeCert2), (3, primeCert3), (47, primeCert47), (239, primeCert239)], [(2, primeCert2), (3, primeCert3), (103, primeCert103), (127, primeCert127)], [(2, primeCert2), (3, primeCert3), (13, primeCert13), (1171, primeCert1171)], [(2, primeCert2), (3, primeCert3), (11, primeCert11), (1613, primeCert1613)], [(2, primeCert2), (3, primeCert3), (61, primeCert61), (337, primeCert337)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (5, primeCert5), (191, primeCert191)]]

theorem stage0Row33_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row33 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row33 stage0Row33Factors (by decide +kernel)

def stage0Row34 : ChainRow := ⟨120, -1, [16248, 18516, 21288, 24312, 28344, 32628, 37416, 43464, 50016, 58332, 67908, 77232, 90084, 104952, 122088, 142248, 165936]⟩

def stage0Row34Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (677, primeCert677)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (1543, primeCert1543)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (887, primeCert887)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (1013, primeCert1013)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (1181, primeCert1181)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (2719, primeCert2719)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (1559, primeCert1559)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (1811, primeCert1811)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (521, primeCert521)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (4861, primeCert4861)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5659, primeCert5659)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (1609, primeCert1609)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (7507, primeCert7507)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (4373, primeCert4373)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5087, primeCert5087)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5927, primeCert5927)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3457, primeCert3457)]]

theorem stage0Row34_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row34 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row34 stage0Row34Factors (by decide +kernel)

def stage0Row35 : ChainRow := ⟨120, 1, [16500, 19020, 22044, 25320, 29100, 33384, 38676, 44472, 51780, 60348, 70176, 81012, 93612, 108984, 126876, 147540]⟩

def stage0Row35Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (5, primeCert5), (11, primeCert11)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (317, primeCert317)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (11, primeCert11), (167, primeCert167)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (211, primeCert211)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (97, primeCert97)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (13, primeCert13), (107, primeCert107)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (11, primeCert11), (293, primeCert293)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (17, primeCert17), (109, primeCert109)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (863, primeCert863)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (47, primeCert47), (107, primeCert107)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (17, primeCert17), (43, primeCert43)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (43, primeCert43), (157, primeCert157)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (29, primeCert29), (269, primeCert269)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (19, primeCert19), (239, primeCert239)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (97, primeCert97), (109, primeCert109)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (2459, primeCert2459)]]

theorem stage0Row35_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row35 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row35 stage0Row35Factors (by decide +kernel)

def stage0Row36 : ChainRow := ⟨132, -1, [16512, 18528, 21552, 25080, 29112, 33648, 38940, 45240, 52296, 60864, 70944, 82284, 95388, 110760, 127896, 149064]⟩

def stage0Row36Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (43, primeCert43)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (193, primeCert193)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (449, primeCert449)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (19, primeCert19)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (1213, primeCert1213)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (701, primeCert701)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (59, primeCert59)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (13, primeCert13), (29, primeCert29)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (2179, primeCert2179)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (317, primeCert317)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (739, primeCert739)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (6857, primeCert6857)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (7949, primeCert7949)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (13, primeCert13), (71, primeCert71)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (73, primeCert73), (73, primeCert73)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (6211, primeCert6211)]]

theorem stage0Row36_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row36 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row36 stage0Row36Factors (by decide +kernel)

def stage0Row37 : ChainRow := ⟨132, 1, [16260, 18780, 21804, 24576, 28356, 32640, 37932, 44232, 51540, 59856, 69432, 80772, 94128, 109752, 127644, 148560]⟩

def stage0Row37Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (271, primeCert271)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (313, primeCert313)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (23, primeCert23), (79, primeCert79)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (17, primeCert17), (139, primeCert139)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (17, primeCert17)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (29, primeCert29), (109, primeCert109)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (19, primeCert19), (97, primeCert97)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (859, primeCert859)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (29, primeCert29), (43, primeCert43)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (11, primeCert11), (263, primeCert263)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (53, primeCert53), (127, primeCert127)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (37, primeCert37), (53, primeCert53)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (17, primeCert17), (269, primeCert269)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (11, primeCert11), (967, primeCert967)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (619, primeCert619)]]

theorem stage0Row37_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row37 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row37 stage0Row37Factors (by decide +kernel)

def stage0Row38 : ChainRow := ⟨138, -1, [16518, 18534, 21558, 24834, 27858, 32394, 37182, 43230, 49782, 57090, 66414, 76746, 89346, 103962, 121098, 140754, 164190]⟩

def stage0Row38Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (2753, primeCert2753)], [(2, primeCert2), (3, primeCert3), (3089, primeCert3089)], [(2, primeCert2), (3, primeCert3), (3593, primeCert3593)], [(2, primeCert2), (3, primeCert3), (4139, primeCert4139)], [(2, primeCert2), (3, primeCert3), (4643, primeCert4643)], [(2, primeCert2), (3, primeCert3), (5399, primeCert5399)], [(2, primeCert2), (3, primeCert3), (6197, primeCert6197)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (131, primeCert131)], [(2, primeCert2), (3, primeCert3), (8297, primeCert8297)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (173, primeCert173)], [(2, primeCert2), (3, primeCert3), (11069, primeCert11069)], [(2, primeCert2), (3, primeCert3), (12791, primeCert12791)], [(2, primeCert2), (3, primeCert3), (14891, primeCert14891)], [(2, primeCert2), (3, primeCert3), (17327, primeCert17327)], [(2, primeCert2), (3, primeCert3), (20183, primeCert20183)], [(2, primeCert2), (3, primeCert3), (23459, primeCert23459)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (13, primeCert13), (421, primeCert421)]]

theorem stage0Row38_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row38 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row38 stage0Row38Factors (by decide +kernel)

def stage0Row39 : ChainRow := ⟨138, 1, [16014, 18282, 21306, 24582, 28614, 32142, 37434, 42222, 48774, 56334, 65658, 76242, 88590, 103206, 120342, 139494, 162678]⟩

def stage0Row39Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (17, primeCert17), (157, primeCert157)], [(2, primeCert2), (3, primeCert3), (11, primeCert11), (277, primeCert277)], [(2, primeCert2), (3, primeCert3), (53, primeCert53), (67, primeCert67)], [(2, primeCert2), (3, primeCert3), (17, primeCert17), (241, primeCert241)], [(2, primeCert2), (3, primeCert3), (19, primeCert19), (251, primeCert251)], [(2, primeCert2), (3, primeCert3), (11, primeCert11), (487, primeCert487)], [(2, primeCert2), (3, primeCert3), (17, primeCert17), (367, primeCert367)], [(2, primeCert2), (3, primeCert3), (31, primeCert31), (227, primeCert227)], [(2, primeCert2), (3, primeCert3), (11, primeCert11), (739, primeCert739)], [(2, primeCert2), (3, primeCert3), (41, primeCert41), (229, primeCert229)], [(2, primeCert2), (3, primeCert3), (31, primeCert31), (353, primeCert353)], [(2, primeCert2), (3, primeCert3), (97, primeCert97), (131, primeCert131)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (2953, primeCert2953)], [(2, primeCert2), (3, primeCert3), (103, primeCert103), (167, primeCert167)], [(2, primeCert2), (3, primeCert3), (31, primeCert31), (647, primeCert647)], [(2, primeCert2), (3, primeCert3), (67, primeCert67), (347, primeCert347)], [(2, primeCert2), (3, primeCert3), (19, primeCert19), (1427, primeCert1427)]]

theorem stage0Row39_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row39 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row39 stage0Row39Factors (by decide +kernel)

def stage0Row40 : ChainRow := ⟨144, -1, [16524, 19044, 22068, 25596, 29628, 34416, 39708, 46008, 53568, 62388, 71964, 83808, 97668, 113292, 131436, 153108]⟩

def stage0Row40Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (17, primeCert17)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (23, primeCert23), (23, primeCert23)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (613, primeCert613)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (79, primeCert79)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (823, primeCert823)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (239, primeCert239)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (1103, primeCert1103)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (71, primeCert71)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (31, primeCert31)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (1733, primeCert1733)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (1999, primeCert1999)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (97, primeCert97)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (2713, primeCert2713)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (1049, primeCert1049)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (1217, primeCert1217)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (4253, primeCert4253)]]

theorem stage0Row40_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row40 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row40 stage0Row40Factors (by decide +kernel)

def stage0Row41 : ChainRow := ⟨144, 1, [16020, 18540, 21060, 23580, 27360, 31140, 36180, 41976, 48780, 56340, 65412, 73980, 85320, 97920, 113796, 132696, 154620]⟩

def stage0Row41Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (89, primeCert89)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (103, primeCert103)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (13, primeCert13)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (131, primeCert131)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (19, primeCert19)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (173, primeCert173)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (67, primeCert67)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (11, primeCert11), (53, primeCert53)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (271, primeCert271)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (313, primeCert313)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (23, primeCert23), (79, primeCert79)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (137, primeCert137)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (79, primeCert79)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (17, primeCert17)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (29, primeCert29), (109, primeCert109)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (19, primeCert19), (97, primeCert97)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (859, primeCert859)]]

theorem stage0Row41_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row41 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row41 stage0Row41Factors (by decide +kernel)

def stage0Row42 : ChainRow := ⟨150, -1, [16530, 18294, 21318, 24594, 28374, 32658, 37950, 43998, 50802, 58866, 68442, 79782, 92634, 107754, 125394, 144798]⟩

def stage0Row42Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (5, primeCert5), (19, primeCert19), (29, primeCert29)], [(2, primeCert2), (3, primeCert3), (3049, primeCert3049)], [(2, primeCert2), (3, primeCert3), (11, primeCert11), (17, primeCert17), (19, primeCert19)], [(2, primeCert2), (3, primeCert3), (4099, primeCert4099)], [(2, primeCert2), (3, primeCert3), (4729, primeCert4729)], [(2, primeCert2), (3, primeCert3), (5443, primeCert5443)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (11, primeCert11), (23, primeCert23)], [(2, primeCert2), (3, primeCert3), (7333, primeCert7333)], [(2, primeCert2), (3, primeCert3), (8467, primeCert8467)], [(2, primeCert2), (3, primeCert3), (9811, primeCert9811)], [(2, primeCert2), (3, primeCert3), (11, primeCert11), (17, primeCert17), (61, primeCert61)], [(2, primeCert2), (3, primeCert3), (13297, primeCert13297)], [(2, primeCert2), (3, primeCert3), (15439, primeCert15439)], [(2, primeCert2), (3, primeCert3), (17959, primeCert17959)], [(2, primeCert2), (3, primeCert3), (20899, primeCert20899)], [(2, primeCert2), (3, primeCert3), (24133, primeCert24133)]]

theorem stage0Row42_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row42 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row42 stage0Row42Factors (by decide +kernel)

def stage0Row43 : ChainRow := ⟨150, 1, [15774, 18042, 20562, 23838, 26862, 31146, 36186, 41478, 48282, 55842, 64914, 74994, 87090, 101454, 118338, 137994, 160674]⟩

def stage0Row43Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (11, primeCert11), (239, primeCert239)], [(2, primeCert2), (3, primeCert3), (31, primeCert31), (97, primeCert97)], [(2, primeCert2), (3, primeCert3), (23, primeCert23), (149, primeCert149)], [(2, primeCert2), (3, primeCert3), (29, primeCert29), (137, primeCert137)], [(2, primeCert2), (3, primeCert3), (11, primeCert11), (11, primeCert11), (37, primeCert37)], [(2, primeCert2), (3, primeCert3), (29, primeCert29), (179, primeCert179)], [(2, primeCert2), (3, primeCert3), (37, primeCert37), (163, primeCert163)], [(2, primeCert2), (3, primeCert3), (31, primeCert31), (223, primeCert223)], [(2, primeCert2), (3, primeCert3), (13, primeCert13), (619, primeCert619)], [(2, primeCert2), (3, primeCert3), (41, primeCert41), (227, primeCert227)], [(2, primeCert2), (3, primeCert3), (31, primeCert31), (349, primeCert349)], [(2, primeCert2), (3, primeCert3), (29, primeCert29), (431, primeCert431)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (2903, primeCert2903)], [(2, primeCert2), (3, primeCert3), (37, primeCert37), (457, primeCert457)], [(2, primeCert2), (3, primeCert3), (11, primeCert11), (11, primeCert11), (163, primeCert163)], [(2, primeCert2), (3, primeCert3), (109, primeCert109), (211, primeCert211)], [(2, primeCert2), (3, primeCert3), (61, primeCert61), (439, primeCert439)]]

theorem stage0Row43_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row43 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row43 stage0Row43Factors (by decide +kernel)

def stage0Row44 : ChainRow := ⟨156, -1, [16032, 18552, 21324, 24348, 28380, 32664, 37956, 44256, 51564, 60132, 69960, 81552, 94404, 109776, 127920, 149088]⟩

def stage0Row44Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (167, primeCert167)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (773, primeCert773)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (1777, primeCert1777)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (2029, primeCert2029)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (43, primeCert43)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (1361, primeCert1361)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3163, primeCert3163)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (461, primeCert461)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (4297, primeCert4297)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5011, primeCert5011)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (53, primeCert53)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (1699, primeCert1699)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (7867, primeCert7867)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (2287, primeCert2287)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (13, primeCert13), (41, primeCert41)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (1553, primeCert1553)]]

theorem stage0Row44_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row44 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row44 stage0Row44Factors (by decide +kernel)

def stage0Row45 : ChainRow := ⟨156, 1, [16536, 18300, 20820, 23340, 27120, 31152, 36192, 41736, 48540, 56604, 65928, 75756, 88356, 102720, 119100, 138756, 161436]⟩

def stage0Row45Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (13, primeCert13), (53, primeCert53)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (61, primeCert61)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (347, primeCert347)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (389, primeCert389)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (113, primeCert113)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (11, primeCert11), (59, primeCert59)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (13, primeCert13), (29, primeCert29)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (37, primeCert37), (47, primeCert47)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (809, primeCert809)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (53, primeCert53), (89, primeCert89)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (41, primeCert41), (67, primeCert67)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (59, primeCert59), (107, primeCert107)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (37, primeCert37), (199, primeCert199)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (107, primeCert107)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (397, primeCert397)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (31, primeCert31), (373, primeCert373)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (11, primeCert11), (1223, primeCert1223)]]

theorem stage0Row45_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row45 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row45 stage0Row45Factors (by decide +kernel)

def stage0Row46 : ChainRow := ⟨162, -1, [16542, 19062, 22086, 25614, 29646, 34434, 39978, 46530, 53838, 62658, 72738, 84834, 98694, 115074, 134226, 156402]⟩

def stage0Row46Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (3, primeCert3), (919, primeCert919)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (353, primeCert353)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (409, primeCert409)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (1423, primeCert1423)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (61, primeCert61)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (1913, primeCert1913)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (2221, primeCert2221)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (11, primeCert11), (47, primeCert47)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (997, primeCert997)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (59, primeCert59), (59, primeCert59)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (449, primeCert449)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (1571, primeCert1571)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5483, primeCert5483)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (2131, primeCert2131)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (7457, primeCert7457)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (8689, primeCert8689)]]

theorem stage0Row46_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row46 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row46 stage0Row46Factors (by decide +kernel)

def stage0Row47 : ChainRow := ⟨162, 1, [16290, 18054, 20826, 24102, 27630, 31410, 35442, 41238, 48042, 55854, 63918, 74250, 86598, 100962, 117594, 136998, 159426]⟩

def stage0Row47Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (181, primeCert181)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (17, primeCert17), (59, primeCert59)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (13, primeCert13), (89, primeCert89)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (13, primeCert13), (103, primeCert103)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (307, primeCert307)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (349, primeCert349)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (11, primeCert11), (179, primeCert179)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (29, primeCert29), (79, primeCert79)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (17, primeCert17), (157, primeCert157)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (29, primeCert29), (107, primeCert107)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (53, primeCert53), (67, primeCert67)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (5, primeCert5), (11, primeCert11)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (17, primeCert17), (283, primeCert283)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (71, primeCert71), (79, primeCert79)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (47, primeCert47), (139, primeCert139)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (43, primeCert43), (59, primeCert59)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (17, primeCert17), (521, primeCert521)]]

theorem stage0Row47_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row47 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row47 stage0Row47Factors (by decide +kernel)

def stage0Row48 : ChainRow := ⟨174, -1, [16302, 18822, 21342, 24114, 27894, 32430, 37722, 43518, 50574, 58890, 68466, 79554, 92658, 108030, 125670, 146334]⟩

def stage0Row48Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (11, primeCert11), (13, primeCert13), (19, primeCert19)], [(2, primeCert2), (3, primeCert3), (3137, primeCert3137)], [(2, primeCert2), (3, primeCert3), (3557, primeCert3557)], [(2, primeCert2), (3, primeCert3), (4019, primeCert4019)], [(2, primeCert2), (3, primeCert3), (4649, primeCert4649)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (23, primeCert23), (47, primeCert47)], [(2, primeCert2), (3, primeCert3), (6287, primeCert6287)], [(2, primeCert2), (3, primeCert3), (7253, primeCert7253)], [(2, primeCert2), (3, primeCert3), (8429, primeCert8429)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (13, primeCert13), (151, primeCert151)], [(2, primeCert2), (3, primeCert3), (11411, primeCert11411)], [(2, primeCert2), (3, primeCert3), (13259, primeCert13259)], [(2, primeCert2), (3, primeCert3), (15443, primeCert15443)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (13, primeCert13), (277, primeCert277)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (59, primeCert59), (71, primeCert71)], [(2, primeCert2), (3, primeCert3), (29, primeCert29), (29, primeCert29), (29, primeCert29)]]

theorem stage0Row48_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row48 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row48 stage0Row48Factors (by decide +kernel)

def stage0Row49 : ChainRow := ⟨174, 1, [16554, 19074, 22098, 25122, 29154, 33690, 39234, 44778, 51834, 60150, 69978, 81570, 94926, 110298, 128190, 147846]⟩

def stage0Row49Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (31, primeCert31), (89, primeCert89)], [(2, primeCert2), (3, primeCert3), (11, primeCert11), (17, primeCert17), (17, primeCert17)], [(2, primeCert2), (3, primeCert3), (29, primeCert29), (127, primeCert127)], [(2, primeCert2), (3, primeCert3), (53, primeCert53), (79, primeCert79)], [(2, primeCert2), (3, primeCert3), (43, primeCert43), (113, primeCert113)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (1123, primeCert1123)], [(2, primeCert2), (3, primeCert3), (13, primeCert13), (503, primeCert503)], [(2, primeCert2), (3, primeCert3), (17, primeCert17), (439, primeCert439)], [(2, primeCert2), (3, primeCert3), (53, primeCert53), (163, primeCert163)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (401, primeCert401)], [(2, primeCert2), (3, primeCert3), (107, primeCert107), (109, primeCert109)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (2719, primeCert2719)], [(2, primeCert2), (3, primeCert3), (13, primeCert13), (1217, primeCert1217)], [(2, primeCert2), (3, primeCert3), (31, primeCert31), (593, primeCert593)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (4273, primeCert4273)], [(2, primeCert2), (3, primeCert3), (41, primeCert41), (601, primeCert601)]]

theorem stage0Row49_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row49 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row49 stage0Row49Factors (by decide +kernel)

def stage0Row50 : ChainRow := ⟨180, -1, [16308, 18828, 21852, 25128, 29160, 33696, 38988, 45036, 52344, 60912, 70236, 81828, 95184, 110808, 128952, 150372]⟩

def stage0Row50Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (151, primeCert151)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (523, primeCert523)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (607, primeCert607)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (349, primeCert349)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (13, primeCert13)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (19, primeCert19), (19, primeCert19)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (139, primeCert139)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (727, primeCert727)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (47, primeCert47)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (1951, primeCert1951)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (2273, primeCert2273)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (661, primeCert661)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (19, primeCert19)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (199, primeCert199)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (4177, primeCert4177)]]

theorem stage0Row50_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row50 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row50 stage0Row50Factors (by decide +kernel)

def stage0Row51 : ChainRow := ⟨180, 1, [16560, 19080, 20592, 23868, 27648, 31680, 36720, 41760, 48564, 56628, 65700, 76284, 88380, 102492, 118872, 138528, 160956]⟩

def stage0Row51Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (23, primeCert23)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (53, primeCert53)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (11, primeCert11), (13, primeCert13)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (13, primeCert13), (17, primeCert17)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (11, primeCert11)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (17, primeCert17)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (29, primeCert29)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (19, primeCert19), (71, primeCert71)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (11, primeCert11), (11, primeCert11), (13, primeCert13)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (73, primeCert73)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (13, primeCert13), (163, primeCert163)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (491, primeCert491)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (13, primeCert13), (73, primeCert73)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (13, primeCert13), (127, primeCert127)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (13, primeCert13), (37, primeCert37)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (17, primeCert17), (263, primeCert263)]]

theorem stage0Row51_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row51 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row51 stage0Row51Factors (by decide +kernel)

def stage0Row52 : ChainRow := ⟨186, -1, [16314, 18330, 21354, 24882, 27906, 32442, 37482, 43278, 50334, 58650, 67974, 79062, 92166, 107286, 123666, 144078]⟩

def stage0Row52Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (2719, primeCert2719)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (13, primeCert13), (47, primeCert47)], [(2, primeCert2), (3, primeCert3), (3559, primeCert3559)], [(2, primeCert2), (3, primeCert3), (11, primeCert11), (13, primeCert13), (29, primeCert29)], [(2, primeCert2), (3, primeCert3), (4651, primeCert4651)], [(2, primeCert2), (3, primeCert3), (5407, primeCert5407)], [(2, primeCert2), (3, primeCert3), (6247, primeCert6247)], [(2, primeCert2), (3, primeCert3), (7213, primeCert7213)], [(2, primeCert2), (3, primeCert3), (8389, primeCert8389)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (17, primeCert17), (23, primeCert23)], [(2, primeCert2), (3, primeCert3), (11329, primeCert11329)], [(2, primeCert2), (3, primeCert3), (13177, primeCert13177)], [(2, primeCert2), (3, primeCert3), (15361, primeCert15361)], [(2, primeCert2), (3, primeCert3), (17881, primeCert17881)], [(2, primeCert2), (3, primeCert3), (20611, primeCert20611)], [(2, primeCert2), (3, primeCert3), (11, primeCert11), (37, primeCert37), (59, primeCert59)]]

theorem stage0Row52_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row52 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row52 stage0Row52Factors (by decide +kernel)

def stage0Row53 : ChainRow := ⟨186, 1, [16566, 18834, 21606, 25134, 28914, 33702, 39246, 44790, 52098, 60162, 69990, 81330, 94686, 110310, 128454, 149622]⟩

def stage0Row53Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (11, primeCert11), (251, primeCert251)], [(2, primeCert2), (3, primeCert3), (43, primeCert43), (73, primeCert73)], [(2, primeCert2), (3, primeCert3), (13, primeCert13), (277, primeCert277)], [(2, primeCert2), (3, primeCert3), (59, primeCert59), (71, primeCert71)], [(2, primeCert2), (3, primeCert3), (61, primeCert61), (79, primeCert79)], [(2, primeCert2), (3, primeCert3), (41, primeCert41), (137, primeCert137)], [(2, primeCert2), (3, primeCert3), (31, primeCert31), (211, primeCert211)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (1493, primeCert1493)], [(2, primeCert2), (3, primeCert3), (19, primeCert19), (457, primeCert457)], [(2, primeCert2), (3, primeCert3), (37, primeCert37), (271, primeCert271)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (2333, primeCert2333)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (2711, primeCert2711)], [(2, primeCert2), (3, primeCert3), (43, primeCert43), (367, primeCert367)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (3677, primeCert3677)], [(2, primeCert2), (3, primeCert3), (79, primeCert79), (271, primeCert271)], [(2, primeCert2), (3, primeCert3), (11, primeCert11), (2267, primeCert2267)]]

theorem stage0Row53_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row53 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row53 stage0Row53Factors (by decide +kernel)

def stage0Row54 : ChainRow := ⟨192, -1, [16572, 18588, 21612, 24636, 28668, 33204, 38496, 44796, 51096, 59412, 68988, 80328, 92928, 108048, 125688, 146352]⟩

def stage0Row54Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (3, primeCert3), (1381, primeCert1381)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (1549, primeCert1549)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (1801, primeCert1801)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (2053, primeCert2053)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (2389, primeCert2389)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (2767, primeCert2767)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (401, primeCert401)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3733, primeCert3733)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (2129, primeCert2129)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (4951, primeCert4951)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5749, primeCert5749)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3347, primeCert3347)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (11, primeCert11), (11, primeCert11)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (2251, primeCert2251)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5237, primeCert5237)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3049, primeCert3049)]]

theorem stage0Row54_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row54 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row54 stage0Row54Factors (by decide +kernel)

def stage0Row55 : ChainRow := ⟨192, 1, [16320, 18840, 21360, 24888, 28920, 33456, 39000, 45300, 52104, 60168, 69996, 81588, 94944, 110568, 128964, 150384]⟩

def stage0Row55Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (17, primeCert17)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (157, primeCert157)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (89, primeCert89)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (17, primeCert17), (61, primeCert61)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (241, primeCert241)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (17, primeCert17), (41, primeCert41)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (5, primeCert5), (13, primeCert13)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (151, primeCert151)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (13, primeCert13), (167, primeCert167)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (23, primeCert23), (109, primeCert109)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (19, primeCert19), (307, primeCert307)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (13, primeCert13), (523, primeCert523)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (23, primeCert23), (43, primeCert43)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (17, primeCert17), (271, primeCert271)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (11, primeCert11), (977, primeCert977)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (13, primeCert13), (241, primeCert241)]]

theorem stage0Row55_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row55 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row55 stage0Row55Factors (by decide +kernel)

def stage0Row56 : ChainRow := ⟨198, -1, [16578, 19098, 22122, 24894, 28926, 33714, 39258, 45558, 52362, 60678, 70758, 82098, 95454, 110574, 128718, 148878]⟩

def stage0Row56Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (307, primeCert307)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (1061, primeCert1061)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (1229, primeCert1229)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (461, primeCert461)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (1607, primeCert1607)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (1873, primeCert1873)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (727, primeCert727)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (2531, primeCert2531)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (2909, primeCert2909)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3371, primeCert3371)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3931, primeCert3931)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (4561, primeCert4561)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5303, primeCert5303)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (6143, primeCert6143)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (7151, primeCert7151)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (919, primeCert919)]]

theorem stage0Row56_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row56 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row56 stage0Row56Factors (by decide +kernel)

def stage0Row57 : ChainRow := ⟨198, 1, [16074, 18090, 20862, 23634, 25650, 29682, 34470, 40014, 46566, 54126, 62946, 73278, 85374, 99234, 115110, 134010, 155178]⟩

def stage0Row57Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (3, primeCert3), (19, primeCert19), (47, primeCert47)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (67, primeCert67)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (19, primeCert19), (61, primeCert61)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (13, primeCert13), (101, primeCert101)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (19, primeCert19)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (17, primeCert17), (97, primeCert97)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (383, primeCert383)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (13, primeCert13), (19, primeCert19)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (13, primeCert13), (199, primeCert199)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (31, primeCert31), (97, primeCert97)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (13, primeCert13), (269, primeCert269)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (23, primeCert23), (59, primeCert59)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (17, primeCert17), (31, primeCert31)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (37, primeCert37), (149, primeCert149)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (1279, primeCert1279)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (1489, primeCert1489)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (37, primeCert37), (233, primeCert233)]]

theorem stage0Row57_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row57 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row57 stage0Row57Factors (by decide +kernel)

def stage0Row58 : ChainRow := ⟨204, -1, [16584, 19104, 22128, 25656, 29688, 33468, 39012, 45312, 52368, 60936, 70764, 82356, 95712, 111336, 129480, 150648]⟩

def stage0Row58Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (691, primeCert691)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (199, primeCert199)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (461, primeCert461)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (1069, primeCert1069)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (1237, primeCert1237)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (2789, primeCert2789)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3251, primeCert3251)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (59, primeCert59)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (1091, primeCert1091)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (2539, primeCert2539)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5897, primeCert5897)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (6863, primeCert6863)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (997, primeCert997)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (4639, primeCert4639)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (13, primeCert13), (83, primeCert83)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (6277, primeCert6277)]]

theorem stage0Row58_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row58 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row58 stage0Row58Factors (by decide +kernel)

def stage0Row59 : ChainRow := ⟨204, 1, [16080, 18600, 21624, 24900, 28680, 32964, 37752, 43800, 50856, 58920, 68244, 79332, 92184, 107304, 124944, 144600]⟩

def stage0Row59Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (67, primeCert67)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (31, primeCert31)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (17, primeCert17), (53, primeCert53)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (83, primeCert83)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (239, primeCert239)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (41, primeCert41), (67, primeCert67)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (11, primeCert11), (11, primeCert11), (13, primeCert13)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (73, primeCert73)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (13, primeCert13), (163, primeCert163)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (491, primeCert491)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (11, primeCert11), (11, primeCert11), (47, primeCert47)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (11, primeCert11), (601, primeCert601)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (23, primeCert23), (167, primeCert167)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (17, primeCert17), (263, primeCert263)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (19, primeCert19), (137, primeCert137)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (241, primeCert241)]]

theorem stage0Row59_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row59 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row59 stage0Row59Factors (by decide +kernel)

def stage0Row60 : ChainRow := ⟨216, -1, [16596, 19116, 21888, 25416, 29448, 34236, 39780, 46080, 53388, 61956, 71784, 83376, 96984, 113112, 131256, 152928]⟩

def stage0Row60Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (461, primeCert461)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (59, primeCert59)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (19, primeCert19)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (353, primeCert353)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (409, primeCert409)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (317, primeCert317)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (13, primeCert13), (17, primeCert17)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (1483, primeCert1483)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (1721, primeCert1721)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (997, primeCert997)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (193, primeCert193)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (449, primeCert449)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (1571, primeCert1571)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (1823, primeCert1823)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (59, primeCert59)]]

theorem stage0Row60_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row60 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row60 stage0Row60Factors (by decide +kernel)

def stage0Row61 : ChainRow := ⟨216, 1, [15840, 18360, 20880, 24156, 27180, 31464, 36252, 41292, 47340, 54900, 63720, 74052, 85644, 99756, 115884, 135036, 157464]⟩

def stage0Row61Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (11, primeCert11)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (17, primeCert17)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (29, primeCert29)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (11, primeCert11), (61, primeCert61)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (151, primeCert151)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (19, primeCert19), (23, primeCert23)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (19, primeCert19), (53, primeCert53)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (31, primeCert31), (37, primeCert37)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (263, primeCert263)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (61, primeCert61)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (59, primeCert59)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (11, primeCert11), (11, primeCert11), (17, primeCert17)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (13, primeCert13), (61, primeCert61)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (17, primeCert17), (163, primeCert163)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (29, primeCert29), (37, primeCert37)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (11, primeCert11), (11, primeCert11), (31, primeCert31)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3)]]

theorem stage0Row61_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row61 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row61 stage0Row61Factors (by decide +kernel)

def stage0Row62 : ChainRow := ⟨222, -1, [16602, 19122, 22146, 24918, 28698, 32478, 37266, 43314, 50370, 58686, 67506, 78594, 91446, 106566, 123198, 143358]⟩

def stage0Row62Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (2767, primeCert2767)], [(2, primeCert2), (3, primeCert3), (3187, primeCert3187)], [(2, primeCert2), (3, primeCert3), (3691, primeCert3691)], [(2, primeCert2), (3, primeCert3), (4153, primeCert4153)], [(2, primeCert2), (3, primeCert3), (4783, primeCert4783)], [(2, primeCert2), (3, primeCert3), (5413, primeCert5413)], [(2, primeCert2), (3, primeCert3), (6211, primeCert6211)], [(2, primeCert2), (3, primeCert3), (7219, primeCert7219)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (23, primeCert23), (73, primeCert73)], [(2, primeCert2), (3, primeCert3), (9781, primeCert9781)], [(2, primeCert2), (3, primeCert3), (11251, primeCert11251)], [(2, primeCert2), (3, primeCert3), (13099, primeCert13099)], [(2, primeCert2), (3, primeCert3), (15241, primeCert15241)], [(2, primeCert2), (3, primeCert3), (17761, primeCert17761)], [(2, primeCert2), (3, primeCert3), (20533, primeCert20533)], [(2, primeCert2), (3, primeCert3), (23893, primeCert23893)]]

theorem stage0Row62_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row62 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row62 stage0Row62Factors (by decide +kernel)

def stage0Row63 : ChainRow := ⟨222, 1, [16350, 18618, 21138, 24414, 28446, 32982, 37770, 43818, 50874, 59190, 68766, 80106, 92454, 107322, 124962, 145626]⟩

def stage0Row63Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (109, primeCert109)], [(2, primeCert2), (3, primeCert3), (29, primeCert29), (107, primeCert107)], [(2, primeCert2), (3, primeCert3), (13, primeCert13), (271, primeCert271)], [(2, primeCert2), (3, primeCert3), (13, primeCert13), (313, primeCert313)], [(2, primeCert2), (3, primeCert3), (11, primeCert11), (431, primeCert431)], [(2, primeCert2), (3, primeCert3), (23, primeCert23), (239, primeCert239)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (1259, primeCert1259)], [(2, primeCert2), (3, primeCert3), (67, primeCert67), (109, primeCert109)], [(2, primeCert2), (3, primeCert3), (61, primeCert61), (139, primeCert139)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (1973, primeCert1973)], [(2, primeCert2), (3, primeCert3), (73, primeCert73), (157, primeCert157)], [(2, primeCert2), (3, primeCert3), (13, primeCert13), (13, primeCert13), (79, primeCert79)], [(2, primeCert2), (3, primeCert3), (19, primeCert19), (811, primeCert811)], [(2, primeCert2), (3, primeCert3), (31, primeCert31), (577, primeCert577)], [(2, primeCert2), (3, primeCert3), (59, primeCert59), (353, primeCert353)], [(2, primeCert2), (3, primeCert3), (13, primeCert13), (1867, primeCert1867)]]

theorem stage0Row63_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row63 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row63 stage0Row63Factors (by decide +kernel)

def stage0Row64 : ChainRow := ⟨228, -1, [16608, 19128, 21396, 24672, 28452, 32988, 38280, 44328, 51384, 59448, 69024, 80112, 93216, 108588, 126480, 147144]⟩

def stage0Row64Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (173, primeCert173)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (797, primeCert797)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (1783, primeCert1783)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (257, primeCert257)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (2371, primeCert2371)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (2749, primeCert2749)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (29, primeCert29)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (1847, primeCert1847)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (2141, primeCert2141)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (2477, primeCert2477)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (719, primeCert719)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (1669, primeCert1669)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (971, primeCert971)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (9049, primeCert9049)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (17, primeCert17), (31, primeCert31)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (6131, primeCert6131)]]

theorem stage0Row64_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row64 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row64 stage0Row64Factors (by decide +kernel)

def stage0Row65 : ChainRow := ⟨228, 1, [16356, 18876, 21900, 25428, 29460, 33744, 38532, 44580, 51888, 60456, 69780, 81120, 94224, 109848, 127740, 148656]⟩

def stage0Row65Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (3, primeCert3), (29, primeCert29), (47, primeCert47)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (11, primeCert11), (11, primeCert11), (13, primeCert13)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (73, primeCert73)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (13, primeCert13), (163, primeCert163)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (491, primeCert491)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (19, primeCert19), (37, primeCert37)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (13, primeCert13), (13, primeCert13), (19, primeCert19)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (743, primeCert743)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (23, primeCert23), (47, primeCert47)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (11, primeCert11), (229, primeCert229)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (1163, primeCert1163)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (13, primeCert13), (13, primeCert13)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (13, primeCert13), (151, primeCert151)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (23, primeCert23), (199, primeCert199)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (2129, primeCert2129)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (19, primeCert19), (163, primeCert163)]]

theorem stage0Row65_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row65 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row65 stage0Row65Factors (by decide +kernel)

def stage0Row66 : ChainRow := ⟨234, -1, [16362, 18882, 21906, 25434, 29466, 34002, 39546, 45846, 53154, 61722, 71802, 83646, 97506, 113382, 131778, 153702]⟩

def stage0Row66Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (101, primeCert101)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (1049, primeCert1049)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (1217, primeCert1217)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (157, primeCert157)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (1637, primeCert1637)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (1889, primeCert1889)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (13, primeCert13), (13, primeCert13), (13, primeCert13)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (283, primeCert283)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (2953, primeCert2953)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (127, primeCert127)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3989, primeCert3989)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (1549, primeCert1549)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5417, primeCert5417)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (6299, primeCert6299)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (7321, primeCert7321)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (8539, primeCert8539)]]

theorem stage0Row66_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row66 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row66 stage0Row66Factors (by decide +kernel)

def stage0Row67 : ChainRow := ⟨234, 1, [16614, 18630, 21402, 24930, 28458, 32994, 37530, 43326, 50130, 58446, 67770, 78858, 91962, 106830, 124470, 145134]⟩

def stage0Row67Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (3, primeCert3), (13, primeCert13), (71, primeCert71)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (23, primeCert23)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (29, primeCert29), (41, primeCert41)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (277, primeCert277)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (17, primeCert17), (31, primeCert31)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (13, primeCert13), (47, primeCert47)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (139, primeCert139)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (29, primeCert29), (83, primeCert83)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (557, primeCert557)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (17, primeCert17), (191, primeCert191)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (251, primeCert251)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (13, primeCert13), (337, primeCert337)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (13, primeCert13), (131, primeCert131)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (1187, primeCert1187)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (461, primeCert461)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (11, primeCert11), (733, primeCert733)]]

theorem stage0Row67_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row67 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row67 stage0Row67Factors (by decide +kernel)

def stage0Row68 : ChainRow := ⟨240, -1, [15864, 18384, 21408, 24936, 28716, 32748, 37032, 42576, 48876, 56940, 66012, 76848, 89448, 104316, 120948, 140856, 164292]⟩

def stage0Row68Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (661, primeCert661)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (383, primeCert383)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (223, primeCert223)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (1039, primeCert1039)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (2393, primeCert2393)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (2729, primeCert2729)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (1543, primeCert1543)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (887, primeCert887)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (4073, primeCert4073)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (13, primeCert13), (73, primeCert73)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5501, primeCert5501)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (1601, primeCert1601)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3727, primeCert3727)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (8693, primeCert8693)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (10079, primeCert10079)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5869, primeCert5869)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (13691, primeCert13691)]]

theorem stage0Row68_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row68 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row68 stage0Row68Factors (by decide +kernel)

def stage0Row69 : ChainRow := ⟨240, 1, [16620, 17880, 20400, 22920, 26700, 30732, 35772, 41316, 48120, 55932, 64752, 75336, 87180, 101292, 117924, 136572, 159252]⟩

def stage0Row69Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (277, primeCert277)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (149, primeCert149)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (17, primeCert17)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (191, primeCert191)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (89, primeCert89)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (13, primeCert13), (197, primeCert197)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (11, primeCert11), (271, primeCert271)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (11, primeCert11), (313, primeCert313)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (401, primeCert401)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (59, primeCert59), (79, primeCert79)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (19, primeCert19), (71, primeCert71)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (43, primeCert43), (73, primeCert73)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (1453, primeCert1453)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (23, primeCert23), (367, primeCert367)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (31, primeCert31), (317, primeCert317)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (19, primeCert19), (599, primeCert599)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (23, primeCert23), (577, primeCert577)]]

theorem stage0Row69_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row69 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row69 stage0Row69Factors (by decide +kernel)

def stage0Row70 : ChainRow := ⟨246, -1, [16374, 18138, 20910, 23934, 26958, 30486, 35274, 40818, 47118, 54174, 62994, 72570, 83406, 97266, 113394, 131790, 153714]⟩

def stage0Row70Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (2729, primeCert2729)], [(2, primeCert2), (3, primeCert3), (3023, primeCert3023)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (17, primeCert17), (41, primeCert41)], [(2, primeCert2), (3, primeCert3), (3989, primeCert3989)], [(2, primeCert2), (3, primeCert3), (4493, primeCert4493)], [(2, primeCert2), (3, primeCert3), (5081, primeCert5081)], [(2, primeCert2), (3, primeCert3), (5879, primeCert5879)], [(2, primeCert2), (3, primeCert3), (6803, primeCert6803)], [(2, primeCert2), (3, primeCert3), (7853, primeCert7853)], [(2, primeCert2), (3, primeCert3), (9029, primeCert9029)], [(2, primeCert2), (3, primeCert3), (10499, primeCert10499)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (41, primeCert41), (59, primeCert59)], [(2, primeCert2), (3, primeCert3), (13901, primeCert13901)], [(2, primeCert2), (3, primeCert3), (13, primeCert13), (29, primeCert29), (43, primeCert43)], [(2, primeCert2), (3, primeCert3), (18899, primeCert18899)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (23, primeCert23), (191, primeCert191)], [(2, primeCert2), (3, primeCert3), (11, primeCert11), (17, primeCert17), (137, primeCert137)]]

theorem stage0Row70_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row70 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row70 stage0Row70Factors (by decide +kernel)

def stage0Row71 : ChainRow := ⟨246, 1, [16626, 18894, 21918, 24690, 27966, 32250, 36030, 41574, 48378, 56190, 65514, 76350, 88950, 103566, 119442, 139098, 161778]⟩

def stage0Row71Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (17, primeCert17), (163, primeCert163)], [(2, primeCert2), (3, primeCert3), (47, primeCert47), (67, primeCert67)], [(2, primeCert2), (3, primeCert3), (13, primeCert13), (281, primeCert281)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (823, primeCert823)], [(2, primeCert2), (3, primeCert3), (59, primeCert59), (79, primeCert79)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (5, primeCert5), (43, primeCert43)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (1201, primeCert1201)], [(2, primeCert2), (3, primeCert3), (13, primeCert13), (13, primeCert13), (41, primeCert41)], [(2, primeCert2), (3, primeCert3), (11, primeCert11), (733, primeCert733)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (1873, primeCert1873)], [(2, primeCert2), (3, primeCert3), (61, primeCert61), (179, primeCert179)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (509, primeCert509)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (593, primeCert593)], [(2, primeCert2), (3, primeCert3), (41, primeCert41), (421, primeCert421)], [(2, primeCert2), (3, primeCert3), (17, primeCert17), (1171, primeCert1171)], [(2, primeCert2), (3, primeCert3), (97, primeCert97), (239, primeCert239)], [(2, primeCert2), (3, primeCert3), (59, primeCert59), (457, primeCert457)]]

theorem stage0Row71_valid : NumericChainValid 7 252 100000 1000000 1 stage0Row71 := by
  exact Certified.numericChainValid_of_certificate 7 252 100000 1000000 1
    stage0Row71 stage0Row71Factors (by decide +kernel)

def stage0Rows : List ChainRow := [stage0Row0, stage0Row1, stage0Row2, stage0Row3, stage0Row4, stage0Row5, stage0Row6, stage0Row7, stage0Row8, stage0Row9, stage0Row10, stage0Row11, stage0Row12, stage0Row13, stage0Row14, stage0Row15, stage0Row16, stage0Row17, stage0Row18, stage0Row19, stage0Row20, stage0Row21, stage0Row22, stage0Row23, stage0Row24, stage0Row25, stage0Row26, stage0Row27, stage0Row28, stage0Row29, stage0Row30, stage0Row31, stage0Row32, stage0Row33, stage0Row34, stage0Row35, stage0Row36, stage0Row37, stage0Row38, stage0Row39, stage0Row40, stage0Row41, stage0Row42, stage0Row43, stage0Row44, stage0Row45, stage0Row46, stage0Row47, stage0Row48, stage0Row49, stage0Row50, stage0Row51, stage0Row52, stage0Row53, stage0Row54, stage0Row55, stage0Row56, stage0Row57, stage0Row58, stage0Row59, stage0Row60, stage0Row61, stage0Row62, stage0Row63, stage0Row64, stage0Row65, stage0Row66, stage0Row67, stage0Row68, stage0Row69, stage0Row70, stage0Row71]

theorem stage0_valid : ∀ row ∈ stage0Rows, NumericChainValid 7 252 100000 1000000 1 row := by
  intro row hrow
  simp only [stage0Rows, List.mem_cons, List.not_mem_nil, or_false] at hrow
  rcases hrow with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact stage0Row0_valid
  · exact stage0Row1_valid
  · exact stage0Row2_valid
  · exact stage0Row3_valid
  · exact stage0Row4_valid
  · exact stage0Row5_valid
  · exact stage0Row6_valid
  · exact stage0Row7_valid
  · exact stage0Row8_valid
  · exact stage0Row9_valid
  · exact stage0Row10_valid
  · exact stage0Row11_valid
  · exact stage0Row12_valid
  · exact stage0Row13_valid
  · exact stage0Row14_valid
  · exact stage0Row15_valid
  · exact stage0Row16_valid
  · exact stage0Row17_valid
  · exact stage0Row18_valid
  · exact stage0Row19_valid
  · exact stage0Row20_valid
  · exact stage0Row21_valid
  · exact stage0Row22_valid
  · exact stage0Row23_valid
  · exact stage0Row24_valid
  · exact stage0Row25_valid
  · exact stage0Row26_valid
  · exact stage0Row27_valid
  · exact stage0Row28_valid
  · exact stage0Row29_valid
  · exact stage0Row30_valid
  · exact stage0Row31_valid
  · exact stage0Row32_valid
  · exact stage0Row33_valid
  · exact stage0Row34_valid
  · exact stage0Row35_valid
  · exact stage0Row36_valid
  · exact stage0Row37_valid
  · exact stage0Row38_valid
  · exact stage0Row39_valid
  · exact stage0Row40_valid
  · exact stage0Row41_valid
  · exact stage0Row42_valid
  · exact stage0Row43_valid
  · exact stage0Row44_valid
  · exact stage0Row45_valid
  · exact stage0Row46_valid
  · exact stage0Row47_valid
  · exact stage0Row48_valid
  · exact stage0Row49_valid
  · exact stage0Row50_valid
  · exact stage0Row51_valid
  · exact stage0Row52_valid
  · exact stage0Row53_valid
  · exact stage0Row54_valid
  · exact stage0Row55_valid
  · exact stage0Row56_valid
  · exact stage0Row57_valid
  · exact stage0Row58_valid
  · exact stage0Row59_valid
  · exact stage0Row60_valid
  · exact stage0Row61_valid
  · exact stage0Row62_valid
  · exact stage0Row63_valid
  · exact stage0Row64_valid
  · exact stage0Row65_valid
  · exact stage0Row66_valid
  · exact stage0Row67_valid
  · exact stage0Row68_valid
  · exact stage0Row69_valid
  · exact stage0Row70_valid
  · exact stage0Row71_valid

theorem stage0_cover : ∀ r ∈ eligibleResidues 7 252 6,
    ∀ s ∈ ({-1, 1} : Finset ℤ), ∃ row ∈ stage0Rows, row.residue = r ∧ row.sign = s := by
  decide +kernel

theorem stage0_chains : ∀ r ∈ eligibleResidues 7 252 6, ∀ s : ℤ, IsSign s →
    ∃ C : IntervalChain 7 252 (100000 : ℝ) (1000000 : ℝ) (r : ℤ) s,
      ∀ i : ℕ, i ≤ C.last → 1 ∣ C.point i := by
  exact intervalChains_of_table 7 252 100000 1000000 1 _ stage0Rows stage0_valid stage0_cover

def stage1Row0 : ChainRow := ⟨6, -1, [158010, 183210, 212190, 247470, 287790, 335670, 389850, 450330, 523410, 610350, 711150, 827070]⟩

def stage1Row0Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (5, primeCert5), (23, primeCert23), (229, primeCert229)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (31, primeCert31), (197, primeCert197)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (643, primeCert643)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (73, primeCert73), (113, primeCert113)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (53, primeCert53), (181, primeCert181)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (67, primeCert67), (167, primeCert167)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (23, primeCert23), (113, primeCert113)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (17, primeCert17), (883, primeCert883)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (73, primeCert73), (239, primeCert239)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (13, primeCert13), (313, primeCert313)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (11, primeCert11), (431, primeCert431)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (19, primeCert19), (1451, primeCert1451)]]

theorem stage1Row0_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row0 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row0 stage1Row0Factors (by decide +kernel)

def stage1Row1 : ChainRow := ⟨6, 1, [165570, 190770, 219750, 256290, 297870, 345750, 402450, 469230, 544830, 634290, 736350]⟩

def stage1Row1Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (5, primeCert5), (5519, primeCert5519)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (6359, primeCert6359)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (5, primeCert5), (293, primeCert293)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (8543, primeCert8543)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (9929, primeCert9929)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (5, primeCert5), (461, primeCert461)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (2683, primeCert2683)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (15641, primeCert15641)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (13, primeCert13), (127, primeCert127)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (21143, primeCert21143)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (4909, primeCert4909)]]

theorem stage1Row1_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row1 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row1 stage1Row1Factors (by decide +kernel)

def stage1Row2 : ChainRow := ⟨12, -1, [164820, 188760, 217740, 249240, 289560, 337440, 391620, 455880, 531480, 618420, 720480]⟩

def stage1Row2Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (41, primeCert41), (67, primeCert67)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (11, primeCert11), (13, primeCert13)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (19, primeCert19), (191, primeCert191)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (31, primeCert31), (67, primeCert67)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (19, primeCert19), (127, primeCert127)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (19, primeCert19), (37, primeCert37)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (61, primeCert61), (107, primeCert107)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (29, primeCert29), (131, primeCert131)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (43, primeCert43), (103, primeCert103)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (937, primeCert937)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (19, primeCert19), (79, primeCert79)]]

theorem stage1Row2_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row2 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row2 stage1Row2Factors (by decide +kernel)

def stage1Row3 : ChainRow := ⟨12, 1, [166080, 192540, 224040, 259320, 302160, 351300, 408000, 473520, 551640, 641100, 741900]⟩

def stage1Row3Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (173, primeCert173)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (3209, primeCert3209)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (1867, primeCert1867)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (2161, primeCert2161)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (1259, primeCert1259)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (1171, primeCert1171)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (5, primeCert5), (17, primeCert17)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (1973, primeCert1973)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (4597, primeCert4597)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (2137, primeCert2137)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (2473, primeCert2473)]]

theorem stage1Row3_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row3 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row3 stage1Row3Factors (by decide +kernel)

def stage1Row4 : ChainRow := ⟨18, -1, [165330, 190530, 220770, 254790, 296370, 345510, 402210, 466470, 542070, 630270, 734850]⟩

def stage1Row4Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (11, primeCert11), (167, primeCert167)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (29, primeCert29), (73, primeCert73)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (11, primeCert11), (223, primeCert223)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (19, primeCert19), (149, primeCert149)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (37, primeCert37), (89, primeCert89)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (11, primeCert11), (349, primeCert349)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (41, primeCert41), (109, primeCert109)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (71, primeCert71), (73, primeCert73)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (19, primeCert19), (317, primeCert317)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (47, primeCert47), (149, primeCert149)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (23, primeCert23), (71, primeCert71)]]

theorem stage1Row4_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row4 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row4 stage1Row4Factors (by decide +kernel)

def stage1Row5 : ChainRow := ⟨18, 1, [166590, 191790, 223290, 259830, 298890, 348030, 404730, 468990, 547110, 634050, 737370]⟩

def stage1Row5Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (617, primeCert617)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (2131, primeCert2131)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (827, primeCert827)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (2887, primeCert2887)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (41, primeCert41)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (1289, primeCert1289)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (1499, primeCert1499)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (193, primeCert193)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (6079, primeCert6079)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (1409, primeCert1409)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (2731, primeCert2731)]]

theorem stage1Row5_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row5 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row5 stage1Row5Factors (by decide +kernel)

def stage1Row6 : ChainRow := ⟨24, -1, [164580, 183480, 213720, 246480, 284280, 329640, 381300, 443040, 509820, 590460, 688740, 803400]⟩

def stage1Row6Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (13, primeCert13), (211, primeCert211)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (139, primeCert139)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (13, primeCert13), (137, primeCert137)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (13, primeCert13), (79, primeCert79)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (23, primeCert23), (103, primeCert103)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (41, primeCert41), (67, primeCert67)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (31, primeCert31), (41, primeCert41)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (13, primeCert13), (71, primeCert71)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (29, primeCert29), (293, primeCert293)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (13, primeCert13), (757, primeCert757)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (13, primeCert13), (883, primeCert883)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (13, primeCert13), (103, primeCert103)]]

theorem stage1Row6_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row6 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row6 stage1Row6Factors (by decide +kernel)

def stage1Row7 : ChainRow := ⟨24, 1, [165840, 192300, 223800, 260340, 300660, 347280, 403980, 470760, 548880, 638340, 740400]⟩

def stage1Row7Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (691, primeCert691)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (641, primeCert641)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (373, primeCert373)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (4339, primeCert4339)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5011, primeCert5011)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (1447, primeCert1447)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (6733, primeCert6733)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (3923, primeCert3923)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (2287, primeCert2287)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (10639, primeCert10639)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (617, primeCert617)]]

theorem stage1Row7_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row7 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row7 stage1Row7Factors (by decide +kernel)

def stage1Row8 : ChainRow := ⟨30, -1, [163830, 187770, 218010, 252030, 291090, 332670, 388110, 452370, 526710, 612390, 714450]⟩

def stage1Row8Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (5, primeCert5), (43, primeCert43), (127, primeCert127)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (569, primeCert569)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (13, primeCert13), (13, primeCert13), (43, primeCert43)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (31, primeCert31), (271, primeCert271)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (31, primeCert31), (313, primeCert313)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (13, primeCert13), (853, primeCert853)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (17, primeCert17), (761, primeCert761)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (17, primeCert17), (887, primeCert887)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (97, primeCert97), (181, primeCert181)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (137, primeCert137), (149, primeCert149)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (11, primeCert11), (433, primeCert433)]]

theorem stage1Row8_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row8 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row8 stage1Row8Factors (by decide +kernel)

def stage1Row9 : ChainRow := ⟨30, 1, [166350, 194070, 224310, 257070, 296130, 344010, 399450, 463710, 539310, 628770, 733350]⟩

def stage1Row9Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (1109, primeCert1109)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (6469, primeCert6469)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (7477, primeCert7477)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (19, primeCert19), (41, primeCert41)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (9871, primeCert9871)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (11467, primeCert11467)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (2663, primeCert2663)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (13, primeCert13), (29, primeCert29), (41, primeCert41)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (17977, primeCert17977)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (20959, primeCert20959)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (4889, primeCert4889)]]

theorem stage1Row9_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row9 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row9 stage1Row9Factors (by decide +kernel)

def stage1Row10 : ChainRow := ⟨36, -1, [164340, 174420, 198360, 222300, 255060, 294120, 339480, 393660, 456660, 527220, 607860, 708660, 825840]⟩

def stage1Row10Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (11, primeCert11), (83, primeCert83)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (17, primeCert17), (19, primeCert19)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (19, primeCert19), (29, primeCert29)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (13, primeCert13), (19, primeCert19)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (13, primeCert13), (109, primeCert109)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (19, primeCert19), (43, primeCert43)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (23, primeCert23), (41, primeCert41)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (43, primeCert43), (59, primeCert59)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (29, primeCert29), (101, primeCert101)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (11, primeCert11), (307, primeCert307)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (31, primeCert31), (127, primeCert127)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (31, primeCert31), (37, primeCert37)]]

theorem stage1Row10_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row10 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row10 stage1Row10Factors (by decide +kernel)

def stage1Row11 : ChainRow := ⟨36, 1, [165600, 190800, 221040, 257580, 300420, 349560, 407520, 473040, 551160, 641880, 746460]⟩

def stage1Row11Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (23, primeCert23)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (53, primeCert53)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (307, primeCert307)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (53, primeCert53)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (1669, primeCert1669)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (971, primeCert971)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (283, primeCert283)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (73, primeCert73)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (1531, primeCert1531)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (1783, primeCert1783)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (11, primeCert11), (13, primeCert13), (29, primeCert29)]]

theorem stage1Row11_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row11 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row11 stage1Row11Factors (by decide +kernel)

def stage1Row12 : ChainRow := ⟨48, -1, [165360, 191820, 218280, 249780, 288840, 336720, 392160, 453900, 528240, 608880, 707160, 824340]⟩

def stage1Row12Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (13, primeCert13), (53, primeCert53)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (23, primeCert23), (139, primeCert139)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (17, primeCert17), (107, primeCert107)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (23, primeCert23), (181, primeCert181)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (29, primeCert29), (83, primeCert83)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (23, primeCert23), (61, primeCert61)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (19, primeCert19), (43, primeCert43)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (17, primeCert17), (89, primeCert89)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (31, primeCert31), (71, primeCert71)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (43, primeCert43), (59, primeCert59)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (71, primeCert71), (83, primeCert83)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (1249, primeCert1249)]]

theorem stage1Row12_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row12 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row12 stage1Row12Factors (by decide +kernel)

def stage1Row13 : ChainRow := ⟨48, 1, [166620, 193080, 223320, 258600, 301440, 350580, 407280, 474060, 552180, 642900, 748740]⟩

def stage1Row13Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (2777, primeCert2777)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (1609, primeCert1609)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (1861, primeCert1861)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (431, primeCert431)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (157, primeCert157)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5843, primeCert5843)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (1697, primeCert1697)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (7901, primeCert7901)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (9203, primeCert9203)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (2143, primeCert2143)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (12479, primeCert12479)]]

theorem stage1Row13_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row13 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row13 stage1Row13Factors (by decide +kernel)

def stage1Row14 : ChainRow := ⟨54, -1, [165870, 191070, 206190, 240210, 279270, 320850, 368730, 429210, 498510, 579150, 672390, 776970]⟩

def stage1Row14Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (19, primeCert19), (97, primeCert97)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (11, primeCert11), (193, primeCert193)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (29, primeCert29), (79, primeCert79)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (17, primeCert17), (157, primeCert157)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (29, primeCert29), (107, primeCert107)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (23, primeCert23), (31, primeCert31)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (17, primeCert17), (241, primeCert241)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (19, primeCert19), (251, primeCert251)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (29, primeCert29), (191, primeCert191)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (11, primeCert11), (13, primeCert13)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (31, primeCert31), (241, primeCert241)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (89, primeCert89), (97, primeCert97)]]

theorem stage1Row14_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row14 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row14 stage1Row14Factors (by decide +kernel)

def stage1Row15 : ChainRow := ⟨54, 1, [163350, 188550, 218790, 254070, 295650, 344790, 401490, 467010, 543870, 632070, 736650]⟩

def stage1Row15Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (11, primeCert11), (11, primeCert11)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (419, primeCert419)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (11, primeCert11), (13, primeCert13), (17, primeCert17)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (941, primeCert941)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (73, primeCert73)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (1277, primeCert1277)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (1487, primeCert1487)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5189, primeCert5189)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (6043, primeCert6043)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (2341, primeCert2341)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (1637, primeCert1637)]]

theorem stage1Row15_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row15 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row15 stage1Row15Factors (by decide +kernel)

def stage1Row16 : ChainRow := ⟨60, -1, [166380, 191580, 223080, 255840, 292380, 340260, 394440, 458700, 534300, 621240, 722040]⟩

def stage1Row16Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (47, primeCert47), (59, primeCert59)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (31, primeCert31), (103, primeCert103)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (13, primeCert13), (13, primeCert13)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (13, primeCert13), (41, primeCert41)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (443, primeCert443)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (53, primeCert53), (107, primeCert107)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (19, primeCert19), (173, primeCert173)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (11, primeCert11), (139, primeCert139)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (13, primeCert13), (137, primeCert137)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (31, primeCert31), (167, primeCert167)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (547, primeCert547)]]

theorem stage1Row16_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row16 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row16 stage1Row16Factors (by decide +kernel)

def stage1Row17 : ChainRow := ⟨60, 1, [165120, 187800, 216780, 252060, 293640, 341520, 398220, 461220, 535560, 622500, 725820]⟩

def stage1Row17Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (43, primeCert43)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (313, primeCert313)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (3613, primeCert3613)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (4201, primeCert4201)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (2447, primeCert2447)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (1423, primeCert1423)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (6637, primeCert6637)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (7687, primeCert7687)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (4463, primeCert4463)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (5, primeCert5), (5, primeCert5), (83, primeCert83)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (12097, primeCert12097)]]

theorem stage1Row17_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row17 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row17 stage1Row17Factors (by decide +kernel)

def stage1Row18 : ChainRow := ⟨66, -1, [161850, 187050, 216030, 247530, 287850, 335730, 389910, 452910, 527250, 614190, 713730, 828390]⟩

def stage1Row18Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (13, primeCert13), (83, primeCert83)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (29, primeCert29), (43, primeCert43)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (19, primeCert19), (379, primeCert379)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (37, primeCert37), (223, primeCert223)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (19, primeCert19), (101, primeCert101)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (19, primeCert19), (19, primeCert19), (31, primeCert31)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (41, primeCert41), (317, primeCert317)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (31, primeCert31), (487, primeCert487)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (5, primeCert5), (19, primeCert19), (37, primeCert37)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (59, primeCert59), (347, primeCert347)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (37, primeCert37), (643, primeCert643)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (53, primeCert53), (521, primeCert521)]]

theorem stage1Row18_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row18 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row18 stage1Row18Factors (by decide +kernel)

def stage1Row19 : ChainRow := ⟨66, 1, [165630, 190830, 222330, 258870, 300450, 345810, 402510, 469290, 543630, 631830, 736410]⟩

def stage1Row19Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (5, primeCert5), (5521, primeCert5521)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (6361, primeCert6361)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (7411, primeCert7411)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (8629, primeCert8629)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (2003, primeCert2003)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (11527, primeCert11527)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (13417, primeCert13417)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (15643, primeCert15643)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (18121, primeCert18121)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (21061, primeCert21061)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (24547, primeCert24547)]]

theorem stage1Row19_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row19 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row19 stage1Row19Factors (by decide +kernel)

def stage1Row20 : ChainRow := ⟨72, -1, [166140, 181260, 206460, 231660, 264420, 302220, 348840, 397980, 460980, 536580, 624780, 725580]⟩

def stage1Row20Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (13, primeCert13), (71, primeCert71)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (19, primeCert19), (53, primeCert53)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (31, primeCert31), (37, primeCert37)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (11, primeCert11), (13, primeCert13)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (13, primeCert13), (113, primeCert113)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (23, primeCert23), (73, primeCert73)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (17, primeCert17), (19, primeCert19)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (11, primeCert11), (67, primeCert67)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (13, primeCert13), (197, primeCert197)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (11, primeCert11), (271, primeCert271)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (13, primeCert13), (89, primeCert89)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (29, primeCert29), (139, primeCert139)]]

theorem stage1Row20_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row20 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row20 stage1Row20Factors (by decide +kernel)

def stage1Row21 : ChainRow := ⟨72, 1, [164880, 191340, 222840, 258120, 299700, 347580, 404280, 471060, 549180, 639900, 745740]⟩

def stage1Row21Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (229, primeCert229)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (1063, primeCert1063)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (619, primeCert619)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (239, primeCert239)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (37, primeCert37)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (1931, primeCert1931)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (1123, primeCert1123)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (2617, primeCert2617)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (113, primeCert113)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (79, primeCert79)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (1381, primeCert1381)]]

theorem stage1Row21_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row21 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row21 stage1Row21Factors (by decide +kernel)

def stage1Row22 : ChainRow := ⟨78, -1, [166650, 193110, 222090, 258630, 301470, 349350, 404790, 471570, 549690, 637890, 743730]⟩

def stage1Row22Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (11, primeCert11), (101, primeCert101)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (41, primeCert41), (157, primeCert157)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (673, primeCert673)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (37, primeCert37), (233, primeCert233)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (13, primeCert13), (773, primeCert773)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (17, primeCert17), (137, primeCert137)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (103, primeCert103), (131, primeCert131)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (1429, primeCert1429)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (73, primeCert73), (251, primeCert251)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (1933, primeCert1933)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (13, primeCert13), (1907, primeCert1907)]]

theorem stage1Row22_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row22 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row22 stage1Row22Factors (by decide +kernel)

def stage1Row23 : ChainRow := ⟨78, 1, [164130, 190590, 217050, 251070, 292650, 340530, 397230, 462750, 539610, 626550, 729870]⟩

def stage1Row23Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (5, primeCert5), (5471, primeCert5471)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (6353, primeCert6353)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (1447, primeCert1447)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (8369, primeCert8369)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (1951, primeCert1951)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (11351, primeCert11351)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (13241, primeCert13241)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (5, primeCert5), (617, primeCert617)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (17987, primeCert17987)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (4177, primeCert4177)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (24329, primeCert24329)]]

theorem stage1Row23_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row23 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row23 stage1Row23Factors (by decide +kernel)

def stage1Row24 : ChainRow := ⟨90, -1, [162630, 189090, 220590, 254610, 294930, 342810, 399510, 459990, 535590, 623790, 724590]⟩

def stage1Row24Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (13, primeCert13), (139, primeCert139)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (11, primeCert11), (191, primeCert191)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (19, primeCert19), (43, primeCert43)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (23, primeCert23), (41, primeCert41)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (29, primeCert29), (113, primeCert113)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (13, primeCert13), (293, primeCert293)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (23, primeCert23), (193, primeCert193)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (19, primeCert19), (269, primeCert269)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (11, primeCert11), (541, primeCert541)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (29, primeCert29), (239, primeCert239)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (83, primeCert83), (97, primeCert97)]]

theorem stage1Row24_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row24 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row24 stage1Row24Factors (by decide +kernel)

def stage1Row25 : ChainRow := ⟨90, 1, [166410, 194130, 224370, 259650, 302490, 352890, 407070, 473850, 551970, 643950, 751050]⟩

def stage1Row25Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (43, primeCert43), (43, primeCert43)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (719, primeCert719)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (277, primeCert277)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (577, primeCert577)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (3361, primeCert3361)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (1307, primeCert1307)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (4523, primeCert4523)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (13, primeCert13)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (6133, primeCert6133)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (53, primeCert53)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (1669, primeCert1669)]]

theorem stage1Row25_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row25 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row25 stage1Row25Factors (by decide +kernel)

def stage1Row26 : ChainRow := ⟨96, -1, [165660, 188340, 216060, 251340, 289140, 337020, 392460, 456720, 531060, 616740, 716280]⟩

def stage1Row26Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (251, primeCert251)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (43, primeCert43), (73, primeCert73)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (13, primeCert13), (277, primeCert277)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (59, primeCert59), (71, primeCert71)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (61, primeCert61), (79, primeCert79)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (41, primeCert41), (137, primeCert137)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (31, primeCert31), (211, primeCert211)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (173, primeCert173)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (53, primeCert53), (167, primeCert167)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (19, primeCert19), (541, primeCert541)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (47, primeCert47), (127, primeCert127)]]

theorem stage1Row26_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row26 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row26 stage1Row26Factors (by decide +kernel)

def stage1Row27 : ChainRow := ⟨96, 1, [164400, 190860, 219840, 256380, 295440, 344580, 398760, 463020, 537360, 624300, 726360]⟩

def stage1Row27Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (137, primeCert137)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (3181, primeCert3181)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (229, primeCert229)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (4273, primeCert4273)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (1231, primeCert1231)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5743, primeCert5743)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (3323, primeCert3323)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (7717, primeCert7717)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (2239, primeCert2239)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (2081, primeCert2081)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (6053, primeCert6053)]]

theorem stage1Row27_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row27 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row27 stage1Row27Factors (by decide +kernel)

def stage1Row28 : ChainRow := ⟨102, -1, [166170, 187590, 217830, 251850, 287130, 331230, 385410, 447150, 516450, 597090, 695370, 807510]⟩

def stage1Row28Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (5, primeCert5), (29, primeCert29), (191, primeCert191)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (13, primeCert13), (13, primeCert13), (37, primeCert37)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (53, primeCert53), (137, primeCert137)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (23, primeCert23), (73, primeCert73)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (17, primeCert17), (563, primeCert563)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (61, primeCert61), (181, primeCert181)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (29, primeCert29), (443, primeCert443)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (11, primeCert11), (271, primeCert271)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (11, primeCert11), (313, primeCert313)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (13, primeCert13), (1531, primeCert1531)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (13, primeCert13), (1783, primeCert1783)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (2447, primeCert2447)]]

theorem stage1Row28_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row28 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row28 stage1Row28Factors (by decide +kernel)

def stage1Row29 : ChainRow := ⟨102, 1, [163650, 190110, 216570, 250590, 292170, 340050, 395490, 459750, 532830, 617250, 719310]⟩

def stage1Row29Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (1091, primeCert1091)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (6337, primeCert6337)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (7219, primeCert7219)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (8353, primeCert8353)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (9739, primeCert9739)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (2267, primeCert2267)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (13183, primeCert13183)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (5, primeCert5), (613, primeCert613)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (17761, primeCert17761)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (5, primeCert5), (823, primeCert823)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (23977, primeCert23977)]]

theorem stage1Row29_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row29 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row29 stage1Row29Factors (by decide +kernel)

def stage1Row30 : ChainRow := ⟨108, -1, [159120, 184320, 212040, 243540, 283860, 329220, 382140, 438840, 503100, 583740, 680760, 786600]⟩

def stage1Row30Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (13, primeCert13), (17, primeCert17)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (19, primeCert19), (31, primeCert31)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (11, primeCert11), (41, primeCert41)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (19, primeCert19), (83, primeCert83)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (31, primeCert31), (59, primeCert59)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (11, primeCert11), (193, primeCert193)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (23, primeCert23), (53, primeCert53)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (13, primeCert13), (43, primeCert43)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (23, primeCert23), (47, primeCert47)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (31, primeCert31), (61, primeCert61)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (19, primeCert19), (23, primeCert23)]]

theorem stage1Row30_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row30 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row30 stage1Row30Factors (by decide +kernel)

def stage1Row31 : ChainRow := ⟨108, 1, [165420, 190620, 222120, 258660, 301500, 350640, 408600, 476640, 556020, 646740, 753840]⟩

def stage1Row31Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (919, primeCert919)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (353, primeCert353)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (617, primeCert617)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (479, primeCert479)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (5, primeCert5), (67, primeCert67)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (487, primeCert487)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (227, primeCert227)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (331, primeCert331)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (3089, primeCert3089)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (3593, primeCert3593)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (349, primeCert349)]]

theorem stage1Row31_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row31 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row31 stage1Row31Factors (by decide +kernel)

def stage1Row32 : ChainRow := ⟨114, -1, [164670, 191130, 222630, 259170, 299490, 346110, 402810, 469590, 545190, 633390, 737970]⟩

def stage1Row32Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (499, primeCert499)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (23, primeCert23), (277, primeCert277)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (41, primeCert41), (181, primeCert181)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (53, primeCert53), (163, primeCert163)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (67, primeCert67), (149, primeCert149)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (83, primeCert83), (139, primeCert139)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (29, primeCert29), (463, primeCert463)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (1423, primeCert1423)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (17, primeCert17), (1069, primeCert1069)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (43, primeCert43), (491, primeCert491)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (17, primeCert17), (1447, primeCert1447)]]

theorem stage1Row32_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row32 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row32 stage1Row32Factors (by decide +kernel)

def stage1Row33 : ChainRow := ⟨114, 1, [165930, 189870, 220110, 255390, 295710, 342330, 397770, 463290, 538890, 627090, 729150]⟩

def stage1Row33Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (5, primeCert5), (5531, primeCert5531)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (6329, primeCert6329)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (23, primeCert23), (29, primeCert29)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (8513, primeCert8513)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (9857, primeCert9857)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (11411, primeCert11411)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (13259, primeCert13259)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (15443, primeCert15443)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (23, primeCert23), (71, primeCert71)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (20903, primeCert20903)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (4861, primeCert4861)]]

theorem stage1Row33_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row33 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row33 stage1Row33Factors (by decide +kernel)

def stage1Row34 : ChainRow := ⟨120, -1, [166440, 190380, 216840, 252120, 293700, 336540, 391980, 453720, 529320, 617520, 719580]⟩

def stage1Row34Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (19, primeCert19), (73, primeCert73)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (19, primeCert19), (167, primeCert167)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (13, primeCert13), (139, primeCert139)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (191, primeCert191)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (11, primeCert11), (89, primeCert89)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (71, primeCert71), (79, primeCert79)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (47, primeCert47), (139, primeCert139)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (19, primeCert19), (199, primeCert199)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (401, primeCert401)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (31, primeCert31), (83, primeCert83)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (67, primeCert67), (179, primeCert179)]]

theorem stage1Row34_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row34 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row34 stage1Row34Factors (by decide +kernel)

def stage1Row35 : ChainRow := ⟨120, 1, [165180, 191640, 223140, 259680, 302520, 351660, 409620, 476400, 554520, 646500, 753600]⟩

def stage1Row35Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (2753, primeCert2753)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (1597, primeCert1597)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (3719, primeCert3719)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (541, primeCert541)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (2521, primeCert2521)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5861, primeCert5861)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (6827, primeCert6827)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (397, primeCert397)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (4621, primeCert4621)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (5, primeCert5), (431, primeCert431)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (157, primeCert157)]]

theorem stage1Row35_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row35 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row35 stage1Row35Factors (by decide +kernel)

def stage1Row36 : ChainRow := ⟨132, -1, [163680, 187620, 215340, 246840, 280860, 323700, 375360, 437100, 496320, 578220, 673980, 784860]⟩

def stage1Row36Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (31, primeCert31)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (53, primeCert53), (59, primeCert59)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (37, primeCert37), (97, primeCert97)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (11, primeCert11), (17, primeCert17)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (31, primeCert31), (151, primeCert151)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (13, primeCert13), (83, primeCert83)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (17, primeCert17), (23, primeCert23)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (31, primeCert31), (47, primeCert47)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (47, primeCert47)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (23, primeCert23), (419, primeCert419)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (47, primeCert47), (239, primeCert239)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (103, primeCert103), (127, primeCert127)]]

theorem stage1Row36_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row36 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row36 stage1Row36Factors (by decide +kernel)

def stage1Row37 : ChainRow := ⟨132, 1, [166200, 190140, 221640, 256920, 298500, 347640, 403080, 467340, 544200, 628620, 730680]⟩

def stage1Row37Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (277, primeCert277)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (3169, primeCert3169)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (1847, primeCert1847)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (2141, primeCert2141)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (5, primeCert5), (199, primeCert199)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (2897, primeCert2897)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (3359, primeCert3359)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (7789, primeCert7789)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (907, primeCert907)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (10477, primeCert10477)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (6089, primeCert6089)]]

theorem stage1Row37_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row37 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row37 stage1Row37Factors (by decide +kernel)

def stage1Row38 : ChainRow := ⟨138, -1, [164190, 190650, 220890, 254910, 295230, 344370, 401070, 466590, 538410, 625350, 728670]⟩

def stage1Row38Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (5, primeCert5), (13, primeCert13), (421, primeCert421)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (31, primeCert31), (41, primeCert41)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (37, primeCert37), (199, primeCert199)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (29, primeCert29), (293, primeCert293)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (13, primeCert13), (757, primeCert757)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (13, primeCert13), (883, primeCert883)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (29, primeCert29), (461, primeCert461)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (103, primeCert103), (151, primeCert151)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (131, primeCert131), (137, primeCert137)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (11, primeCert11), (379, primeCert379)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (107, primeCert107), (227, primeCert227)]]

theorem stage1Row38_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row38 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row38 stage1Row38Factors (by decide +kernel)

def stage1Row39 : ChainRow := ⟨138, 1, [165450, 191910, 222150, 258690, 300270, 343110, 399810, 465330, 542190, 631650, 736230]⟩

def stage1Row39Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (1103, primeCert1103)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (6397, primeCert6397)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (1481, primeCert1481)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (8623, primeCert8623)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (10009, primeCert10009)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (11437, primeCert11437)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (13327, primeCert13327)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (15511, primeCert15511)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (31, primeCert31), (53, primeCert53)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (4211, primeCert4211)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (23, primeCert23), (97, primeCert97)]]

theorem stage1Row39_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row39 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row39 stage1Row39Factors (by decide +kernel)

def stage1Row40 : ChainRow := ⟨144, -1, [162180, 186120, 205020, 227700, 259200, 295740, 343620, 397800, 463320, 537660, 627120, 726660]⟩

def stage1Row40Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (17, primeCert17), (53, primeCert53)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (11, primeCert11), (47, primeCert47)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (17, primeCert17), (67, primeCert67)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (11, primeCert11), (23, primeCert23)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (31, primeCert31), (53, primeCert53)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (23, primeCert23), (83, primeCert83)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (13, primeCert13), (17, primeCert17)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (11, primeCert11), (13, primeCert13)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (29, primeCert29), (103, primeCert103)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (13, primeCert13), (67, primeCert67)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (11, primeCert11), (367, primeCert367)]]

theorem stage1Row40_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row40 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row40 stage1Row40Factors (by decide +kernel)

def stage1Row41 : ChainRow := ⟨144, 1, [165960, 192420, 223920, 260460, 303300, 353700, 411660, 478440, 557820, 649800, 756900]⟩

def stage1Row41Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (461, primeCert461)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (1069, primeCert1069)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (311, primeCert311)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (1447, primeCert1447)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (337, primeCert337)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (131, primeCert131)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (2287, primeCert2287)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (443, primeCert443)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (1033, primeCert1033)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (19, primeCert19), (19, primeCert19)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (29, primeCert29), (29, primeCert29)]]

theorem stage1Row41_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row41 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row41 stage1Row41Factors (by decide +kernel)

def stage1Row42 : ChainRow := ⟨150, -1, [166470, 192930, 223170, 259710, 301290, 349170, 407130, 472650, 550770, 638970, 742290]⟩

def stage1Row42Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (5, primeCert5), (31, primeCert31), (179, primeCert179)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (59, primeCert59), (109, primeCert109)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (43, primeCert43), (173, primeCert173)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (787, primeCert787)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (11, primeCert11), (83, primeCert83)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (103, primeCert103), (113, primeCert113)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (41, primeCert41), (331, primeCert331)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (23, primeCert23), (137, primeCert137)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (1669, primeCert1669)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (19, primeCert19), (19, primeCert19), (59, primeCert59)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (109, primeCert109), (227, primeCert227)]]

theorem stage1Row42_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row42 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row42 stage1Row42Factors (by decide +kernel)

def stage1Row43 : ChainRow := ⟨150, 1, [165210, 191670, 220650, 257190, 296250, 344130, 398310, 463830, 539430, 628890, 732210]⟩

def stage1Row43Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (5, primeCert5), (5507, primeCert5507)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (6389, primeCert6389)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (1471, primeCert1471)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (8573, primeCert8573)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (5, primeCert5), (5, primeCert5), (79, primeCert79)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (11471, primeCert11471)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (17, primeCert17), (71, primeCert71)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (15461, primeCert15461)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (17981, primeCert17981)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (20963, primeCert20963)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (24407, primeCert24407)]]

theorem stage1Row43_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row43 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row43 stage1Row43Factors (by decide +kernel)

def stage1Row44 : ChainRow := ⟨156, -1, [160680, 184620, 209820, 242580, 282900, 325740, 377400, 439140, 508440, 592860, 688620, 799500]⟩

def stage1Row44Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (13, primeCert13), (103, primeCert103)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (17, primeCert17), (181, primeCert181)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (13, primeCert13), (269, primeCert269)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (13, primeCert13), (311, primeCert311)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (23, primeCert23), (41, primeCert41)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (61, primeCert61), (89, primeCert89)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (17, primeCert17), (37, primeCert37)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (13, primeCert13), (563, primeCert563)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (19, primeCert19), (223, primeCert223)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (41, primeCert41), (241, primeCert241)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (23, primeCert23), (499, primeCert499)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (5, primeCert5), (13, primeCert13), (41, primeCert41)]]

theorem stage1Row44_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row44 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row44 stage1Row44Factors (by decide +kernel)

def stage1Row45 : ChainRow := ⟨156, 1, [165720, 192180, 223680, 260220, 303060, 352200, 410160, 478200, 557580, 649560, 756660]⟩

def stage1Row45Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (1381, primeCert1381)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (3203, primeCert3203)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (233, primeCert233)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (4337, primeCert4337)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5051, primeCert5051)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (587, primeCert587)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (1709, primeCert1709)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (797, primeCert797)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (9293, primeCert9293)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5413, primeCert5413)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (12611, primeCert12611)]]

theorem stage1Row45_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row45 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row45 stage1Row45Factors (by decide +kernel)

def stage1Row46 : ChainRow := ⟨162, -1, [164970, 186390, 216630, 249390, 289710, 337590, 393030, 454770, 530370, 618570, 720630]⟩

def stage1Row46Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (13, primeCert13), (47, primeCert47)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (19, primeCert19), (109, primeCert109)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (29, primeCert29), (83, primeCert83)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (17, primeCert17), (163, primeCert163)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (29, primeCert29), (37, primeCert37)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (11, primeCert11), (11, primeCert11), (31, primeCert31)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (11, primeCert11), (397, primeCert397)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (31, primeCert31), (163, primeCert163)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (71, primeCert71), (83, primeCert83)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (29, primeCert29), (79, primeCert79)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (17, primeCert17), (157, primeCert157)]]

theorem stage1Row46_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row46 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row46 stage1Row46Factors (by decide +kernel)

def stage1Row47 : ChainRow := ⟨162, 1, [166230, 192690, 222930, 259470, 302310, 350190, 408150, 474930, 553050, 645030, 750870]⟩

def stage1Row47Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (1847, primeCert1847)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (2141, primeCert2141)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (2477, primeCert2477)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (31, primeCert31), (31, primeCert31)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (3359, primeCert3359)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (1297, primeCert1297)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (907, primeCert907)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (1759, primeCert1759)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (1229, primeCert1229)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (2389, primeCert2389)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (103, primeCert103)]]

theorem stage1Row47_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row47 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row47 stage1Row47Factors (by decide +kernel)

def stage1Row48 : ChainRow := ⟨174, -1, [165990, 189930, 221430, 256710, 298290, 347430, 404130, 470910, 547770, 637230, 741810]⟩

def stage1Row48Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (503, primeCert503)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (13, primeCert13), (487, primeCert487)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (11, primeCert11), (61, primeCert61)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (43, primeCert43), (199, primeCert199)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (61, primeCert61), (163, primeCert163)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (37, primeCert37), (313, primeCert313)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (19, primeCert19), (709, primeCert709)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (1427, primeCert1427)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (19, primeCert19), (31, primeCert31), (31, primeCert31)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (1931, primeCert1931)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (79, primeCert79), (313, primeCert313)]]

theorem stage1Row48_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row48 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row48 stage1Row48Factors (by decide +kernel)

def stage1Row49 : ChainRow := ⟨174, 1, [163470, 187410, 217650, 252930, 294510, 339870, 395310, 460830, 536430, 620850, 722910]⟩

def stage1Row49Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (5, primeCert5), (5449, primeCert5449)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (6247, primeCert6247)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (1451, primeCert1451)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (8431, primeCert8431)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (9817, primeCert9817)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (11329, primeCert11329)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (13177, primeCert13177)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (15361, primeCert15361)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (17881, primeCert17881)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (4139, primeCert4139)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (24097, primeCert24097)]]

theorem stage1Row49_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row49 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row49 stage1Row49Factors (by decide +kernel)

def stage1Row50 : ChainRow := ⟨180, -1, [161460, 186660, 211860, 233280, 262260, 297540, 345420, 400860, 465120, 538200, 627660, 730980]⟩

def stage1Row50Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (13, primeCert13), (23, primeCert23)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (17, primeCert17), (61, primeCert61)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (11, primeCert11), (107, primeCert107)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (31, primeCert31), (47, primeCert47)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (19, primeCert19), (29, primeCert29)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (19, primeCert19), (101, primeCert101)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (17, primeCert17), (131, primeCert131)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (17, primeCert17), (19, primeCert19)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (13, primeCert13), (23, primeCert23)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (11, primeCert11), (317, primeCert317)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (31, primeCert31), (131, primeCert131)]]

theorem stage1Row50_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row50 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row50 stage1Row50Factors (by decide +kernel)

def stage1Row51 : ChainRow := ⟨180, 1, [166500, 192960, 223200, 258480, 301320, 349200, 404640, 471420, 548280, 639000, 744840]⟩

def stage1Row51Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (5, primeCert5), (37, primeCert37)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (67, primeCert67)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (31, primeCert31)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (359, primeCert359)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (31, primeCert31)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (97, primeCert97)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (281, primeCert281)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (97, primeCert97)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (1523, primeCert1523)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (5, primeCert5), (71, primeCert71)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (2069, primeCert2069)]]

theorem stage1Row51_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row51 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row51 stage1Row51Factors (by decide +kernel)

def stage1Row52 : ChainRow := ⟨186, -1, [165750, 192210, 221190, 257730, 300570, 348450, 405150, 470670, 548790, 638250, 744090]⟩

def stage1Row52Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (5, primeCert5), (13, primeCert13), (17, primeCert17)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (43, primeCert43), (149, primeCert149)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (73, primeCert73), (101, primeCert101)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (11, primeCert11), (71, primeCert71)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (43, primeCert43), (233, primeCert233)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (23, primeCert23), (101, primeCert101)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (37, primeCert37), (73, primeCert73)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (29, primeCert29), (541, primeCert541)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (1663, primeCert1663)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (5, primeCert5), (23, primeCert23), (37, primeCert37)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (17, primeCert17), (1459, primeCert1459)]]

theorem stage1Row52_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row52 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row52 stage1Row52Factors (by decide +kernel)

def stage1Row53 : ChainRow := ⟨186, 1, [164490, 189690, 219930, 253950, 295530, 344670, 400110, 465630, 541230, 630690, 735270]⟩

def stage1Row53Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (5, primeCert5), (5483, primeCert5483)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (6323, primeCert6323)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (7331, primeCert7331)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (1693, primeCert1693)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (9851, primeCert9851)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (11489, primeCert11489)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (13337, primeCert13337)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (17, primeCert17), (83, primeCert83)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (18041, primeCert18041)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (21023, primeCert21023)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (24509, primeCert24509)]]

theorem stage1Row53_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row53 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row53 stage1Row53Factors (by decide +kernel)

def stage1Row54 : ChainRow := ⟨192, -1, [166260, 192720, 224220, 260760, 303600, 351480, 401880, 468660, 544260, 632460, 737040]⟩

def stage1Row54Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (17, primeCert17), (163, primeCert163)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (73, primeCert73)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (37, primeCert37), (101, primeCert101)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (41, primeCert41), (53, primeCert53)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (11, primeCert11), (23, primeCert23)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (29, primeCert29), (101, primeCert101)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (17, primeCert17), (197, primeCert197)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (73, primeCert73), (107, primeCert107)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (47, primeCert47), (193, primeCert193)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (83, primeCert83), (127, primeCert127)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (37, primeCert37), (83, primeCert83)]]

theorem stage1Row54_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row54 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row54 stage1Row54Factors (by decide +kernel)

def stage1Row55 : ChainRow := ⟨192, 1, [165000, 191460, 222960, 259500, 302340, 348960, 406920, 473700, 549300, 640020, 742080]⟩

def stage1Row55Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (5, primeCert5), (5, primeCert5), (11, primeCert11)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (3191, primeCert3191)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (929, primeCert929)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (5, primeCert5), (173, primeCert173)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5039, primeCert5039)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (727, primeCert727)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (3391, primeCert3391)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (1579, primeCert1579)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (1831, primeCert1831)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (10667, primeCert10667)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (773, primeCert773)]]

theorem stage1Row55_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row55 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row55 stage1Row55Factors (by decide +kernel)

def stage1Row56 : ChainRow := ⟨198, -1, [159210, 183150, 210870, 241110, 280170, 323010, 374670, 436410, 506970, 590130, 680850, 792990]⟩

def stage1Row56Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (29, primeCert29), (61, primeCert61)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (11, primeCert11), (37, primeCert37)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (11, primeCert11), (71, primeCert71)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (19, primeCert19), (47, primeCert47)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (11, primeCert11), (283, primeCert283)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (37, primeCert37), (97, primeCert97)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (23, primeCert23), (181, primeCert181)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (13, primeCert13), (373, primeCert373)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (43, primeCert43), (131, primeCert131)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (79, primeCert79), (83, primeCert83)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (17, primeCert17), (89, primeCert89)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (11, primeCert11), (89, primeCert89)]]

theorem stage1Row56_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row56 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row56 stage1Row56Factors (by decide +kernel)

def stage1Row57 : ChainRow := ⟨198, 1, [165510, 191970, 222210, 258750, 301590, 350730, 407430, 472950, 547290, 636750, 741330]⟩

def stage1Row57Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (613, primeCert613)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (79, primeCert79)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (823, primeCert823)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (5, primeCert5), (5, primeCert5), (23, primeCert23)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (1117, primeCert1117)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (433, primeCert433)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (503, primeCert503)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (1051, primeCert1051)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (2027, primeCert2027)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (5, primeCert5), (283, primeCert283)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (8237, primeCert8237)]]

theorem stage1Row57_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row57 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row57 stage1Row57Factors (by decide +kernel)

def stage1Row58 : ChainRow := ⟨204, -1, [158460, 178620, 206340, 235320, 274380, 317220, 368880, 425580, 493620, 575520, 670020, 780900]⟩

def stage1Row58Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (19, primeCert19), (139, primeCert139)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (13, primeCert13), (229, primeCert229)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (19, primeCert19), (181, primeCert181)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (37, primeCert37), (53, primeCert53)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (17, primeCert17), (269, primeCert269)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (17, primeCert17), (311, primeCert311)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (29, primeCert29), (53, primeCert53)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (41, primeCert41), (173, primeCert173)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (19, primeCert19), (433, primeCert433)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (109, primeCert109)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (13, primeCert13), (859, primeCert859)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (19, primeCert19), (137, primeCert137)]]

theorem stage1Row58_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row58 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row58 stage1Row58Factors (by decide +kernel)

def stage1Row59 : ChainRow := ⟨204, 1, [166020, 192480, 223980, 258000, 299580, 348720, 406680, 472200, 550320, 641040, 746880]⟩

def stage1Row59Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (2767, primeCert2767)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (401, primeCert401)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (3733, primeCert3733)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (5, primeCert5), (43, primeCert43)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (4993, primeCert4993)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (1453, primeCert1453)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (3389, primeCert3389)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (787, primeCert787)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (2293, primeCert2293)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (2671, primeCert2671)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (389, primeCert389)]]

theorem stage1Row59_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row59 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row59 stage1Row59Factors (by decide +kernel)

def stage1Row60 : ChainRow := ⟨216, -1, [162000, 182160, 211140, 240120, 279180, 318240, 368640, 425340, 495900, 575280, 667260, 778140]⟩

def stage1Row60Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (5, primeCert5)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (11, primeCert11), (23, primeCert23)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (17, primeCert17), (23, primeCert23)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (23, primeCert23), (29, primeCert29)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (11, primeCert11), (47, primeCert47)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (13, primeCert13), (17, primeCert17)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (17, primeCert17), (139, primeCert139)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (19, primeCert19), (29, primeCert29)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (17, primeCert17), (47, primeCert47)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (11, primeCert11), (337, primeCert337)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (11, primeCert11), (131, primeCert131)]]

theorem stage1Row60_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row60 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row60 stage1Row60Factors (by decide +kernel)

def stage1Row61 : ChainRow := ⟨216, 1, [165780, 192240, 222480, 259020, 300600, 348480, 406440, 470700, 548820, 639540, 742860]⟩

def stage1Row61Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (307, primeCert307)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (89, primeCert89)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (103, primeCert103)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (1439, primeCert1439)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (167, primeCert167)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (11, primeCert11), (11, primeCert11)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (1129, primeCert1129)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (523, primeCert523)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (3049, primeCert3049)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (11, primeCert11), (17, primeCert17), (19, primeCert19)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (4127, primeCert4127)]]

theorem stage1Row61_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row61 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row61 stage1Row61Factors (by decide +kernel)

def stage1Row62 : ChainRow := ⟨222, -1, [166290, 191490, 221730, 257010, 298590, 347730, 403170, 469950, 546810, 637530, 743370]⟩

def stage1Row62Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (5, primeCert5), (23, primeCert23), (241, primeCert241)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (13, primeCert13), (491, primeCert491)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (19, primeCert19), (389, primeCert389)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (13, primeCert13), (659, primeCert659)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (37, primeCert37), (269, primeCert269)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (67, primeCert67), (173, primeCert173)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (89, primeCert89), (151, primeCert151)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (13, primeCert13), (241, primeCert241)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (1657, primeCert1657)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (79, primeCert79), (269, primeCert269)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (71, primeCert71), (349, primeCert349)]]

theorem stage1Row62_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row62 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row62 stage1Row62Factors (by decide +kernel)

def stage1Row63 : ChainRow := ⟨222, 1, [165030, 188970, 219210, 249450, 287250, 332610, 386790, 449790, 524130, 611070, 710610, 826530]⟩

def stage1Row63Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (5, primeCert5), (5501, primeCert5501)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (6299, primeCert6299)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (7307, primeCert7307)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (1663, primeCert1663)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (5, primeCert5), (383, primeCert383)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (11087, primeCert11087)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (12893, primeCert12893)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (29, primeCert29), (47, primeCert47)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (17471, primeCert17471)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (20369, primeCert20369)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (23687, primeCert23687)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (27551, primeCert27551)]]

theorem stage1Row63_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row63 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row63 stage1Row63Factors (by decide +kernel)

def stage1Row64 : ChainRow := ⟨228, -1, [165540, 192000, 220980, 257520, 297840, 345720, 402420, 469200, 546060, 634260, 738840]⟩

def stage1Row64Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (31, primeCert31), (89, primeCert89)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (5, primeCert5)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (29, primeCert29), (127, primeCert127)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (29, primeCert29), (37, primeCert37)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (17, primeCert17), (73, primeCert73)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (43, primeCert43), (67, primeCert67)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (19, primeCert19), (353, primeCert353)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (17, primeCert17), (23, primeCert23)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (19, primeCert19), (479, primeCert479)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (31, primeCert31), (31, primeCert31)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (47, primeCert47), (131, primeCert131)]]

theorem stage1Row64_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row64 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row64 stage1Row64Factors (by decide +kernel)

def stage1Row65 : ChainRow := ⟨228, 1, [164280, 189480, 219720, 256260, 296580, 344460, 401160, 466680, 543540, 633000, 735060]⟩

def stage1Row65Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (37, primeCert37), (37, primeCert37)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (1579, primeCert1579)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (1831, primeCert1831)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (4271, primeCert4271)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (4943, primeCert4943)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5741, primeCert5741)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (3343, primeCert3343)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (3889, primeCert3889)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (9059, primeCert9059)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (5, primeCert5), (211, primeCert211)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (12251, primeCert12251)]]

theorem stage1Row65_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row65 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row65 stage1Row65Factors (by decide +kernel)

def stage1Row66 : ChainRow := ⟨234, -1, [163530, 183690, 212670, 247950, 284490, 331110, 384030, 445770, 515070, 598230, 696510, 812430]⟩

def stage1Row66Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (23, primeCert23), (79, primeCert79)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (13, primeCert13), (157, primeCert157)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (17, primeCert17), (139, primeCert139)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (19, primeCert19), (29, primeCert29)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (29, primeCert29), (109, primeCert109)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (13, primeCert13), (283, primeCert283)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (17, primeCert17), (251, primeCert251)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (13, primeCert13), (127, primeCert127)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (59, primeCert59), (97, primeCert97)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (17, primeCert17), (17, primeCert17), (23, primeCert23)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (71, primeCert71), (109, primeCert109)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (17, primeCert17), (59, primeCert59)]]

theorem stage1Row66_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row66 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row66 stage1Row66Factors (by decide +kernel)

def stage1Row67 : ChainRow := ⟨234, 1, [166050, 191250, 222750, 256770, 297090, 346230, 401670, 468450, 537750, 623430, 725490]⟩

def stage1Row67Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (41, primeCert41)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (5, primeCert5), (5, primeCert5), (17, primeCert17)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (5, primeCert5), (11, primeCert11)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (317, primeCert317)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (3301, primeCert3301)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (3847, primeCert3847)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (4463, primeCert4463)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (347, primeCert347)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (5, primeCert5), (5, primeCert5), (5, primeCert5), (239, primeCert239)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (2309, primeCert2309)], [(2, primeCert2), (3, primeCert3), (3, primeCert3), (3, primeCert3), (5, primeCert5), (2687, primeCert2687)]]

theorem stage1Row67_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row67 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row67 stage1Row67Factors (by decide +kernel)

def stage1Row68 : ChainRow := ⟨240, -1, [165300, 191760, 220740, 256020, 296340, 341700, 393360, 457620, 530700, 615120, 715920]⟩

def stage1Row68Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (19, primeCert19), (29, primeCert29)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (17, primeCert17), (47, primeCert47)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (13, primeCert13), (283, primeCert283)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (17, primeCert17), (251, primeCert251)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (449, primeCert449)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (17, primeCert17), (67, primeCert67)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (149, primeCert149)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (29, primeCert29), (263, primeCert263)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (29, primeCert29), (61, primeCert61)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (233, primeCert233)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (19, primeCert19), (157, primeCert157)]]

theorem stage1Row68_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row68 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row68 stage1Row68Factors (by decide +kernel)

def stage1Row69 : ChainRow := ⟨240, 1, [166560, 194280, 224520, 259800, 301380, 349260, 403440, 468960, 544560, 635280, 741120]⟩

def stage1Row69Factors : List Certified.FactorCertificate := [[(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (347, primeCert347)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (1619, primeCert1619)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (1871, primeCert1871)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (433, primeCert433)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5023, primeCert5023)], [(2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (5821, primeCert5821)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (41, primeCert41), (41, primeCert41)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (977, primeCert977)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (2269, primeCert2269)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (2647, primeCert2647)], [(2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (2, primeCert2), (3, primeCert3), (5, primeCert5), (193, primeCert193)]]

theorem stage1Row69_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row69 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row69 stage1Row69Factors (by decide +kernel)

def stage1Row70 : ChainRow := ⟨246, -1, [162030, 188490, 218730, 251490, 291810, 339690, 393870, 456870, 522390, 609330, 707610, 824790]⟩

def stage1Row70Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (491, primeCert491)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (61, primeCert61), (103, primeCert103)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (23, primeCert23), (317, primeCert317)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (83, primeCert83), (101, primeCert101)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (71, primeCert71), (137, primeCert137)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (13, primeCert13), (13, primeCert13), (67, primeCert67)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (19, primeCert19), (691, primeCert691)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (97, primeCert97), (157, primeCert157)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (11, primeCert11), (1583, primeCert1583)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (19, primeCert19), (1069, primeCert1069)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (103, primeCert103), (229, primeCert229)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (19, primeCert19), (1447, primeCert1447)]]

theorem stage1Row70_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row70 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row70 stage1Row70Factors (by decide +kernel)

def stage1Row71 : ChainRow := ⟨246, 1, [165810, 192270, 223770, 260310, 296850, 344730, 401430, 468210, 545070, 635790, 740370]⟩

def stage1Row71Factors : List Certified.FactorCertificate := [[(2, primeCert2), (3, primeCert3), (5, primeCert5), (5527, primeCert5527)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (13, primeCert13), (17, primeCert17), (29, primeCert29)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (7459, primeCert7459)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (8677, primeCert8677)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (5, primeCert5), (1979, primeCert1979)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (11491, primeCert11491)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (13381, primeCert13381)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (15607, primeCert15607)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (18169, primeCert18169)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (21193, primeCert21193)], [(2, primeCert2), (3, primeCert3), (5, primeCert5), (23, primeCert23), (29, primeCert29), (37, primeCert37)]]

theorem stage1Row71_valid : NumericChainValid 7 252 1000000 5000000 5 stage1Row71 := by
  exact Certified.numericChainValid_of_certificate 7 252 1000000 5000000 5
    stage1Row71 stage1Row71Factors (by decide +kernel)

def stage1Rows : List ChainRow := [stage1Row0, stage1Row1, stage1Row2, stage1Row3, stage1Row4, stage1Row5, stage1Row6, stage1Row7, stage1Row8, stage1Row9, stage1Row10, stage1Row11, stage1Row12, stage1Row13, stage1Row14, stage1Row15, stage1Row16, stage1Row17, stage1Row18, stage1Row19, stage1Row20, stage1Row21, stage1Row22, stage1Row23, stage1Row24, stage1Row25, stage1Row26, stage1Row27, stage1Row28, stage1Row29, stage1Row30, stage1Row31, stage1Row32, stage1Row33, stage1Row34, stage1Row35, stage1Row36, stage1Row37, stage1Row38, stage1Row39, stage1Row40, stage1Row41, stage1Row42, stage1Row43, stage1Row44, stage1Row45, stage1Row46, stage1Row47, stage1Row48, stage1Row49, stage1Row50, stage1Row51, stage1Row52, stage1Row53, stage1Row54, stage1Row55, stage1Row56, stage1Row57, stage1Row58, stage1Row59, stage1Row60, stage1Row61, stage1Row62, stage1Row63, stage1Row64, stage1Row65, stage1Row66, stage1Row67, stage1Row68, stage1Row69, stage1Row70, stage1Row71]

theorem stage1_valid : ∀ row ∈ stage1Rows, NumericChainValid 7 252 1000000 5000000 5 row := by
  intro row hrow
  simp only [stage1Rows, List.mem_cons, List.not_mem_nil, or_false] at hrow
  rcases hrow with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact stage1Row0_valid
  · exact stage1Row1_valid
  · exact stage1Row2_valid
  · exact stage1Row3_valid
  · exact stage1Row4_valid
  · exact stage1Row5_valid
  · exact stage1Row6_valid
  · exact stage1Row7_valid
  · exact stage1Row8_valid
  · exact stage1Row9_valid
  · exact stage1Row10_valid
  · exact stage1Row11_valid
  · exact stage1Row12_valid
  · exact stage1Row13_valid
  · exact stage1Row14_valid
  · exact stage1Row15_valid
  · exact stage1Row16_valid
  · exact stage1Row17_valid
  · exact stage1Row18_valid
  · exact stage1Row19_valid
  · exact stage1Row20_valid
  · exact stage1Row21_valid
  · exact stage1Row22_valid
  · exact stage1Row23_valid
  · exact stage1Row24_valid
  · exact stage1Row25_valid
  · exact stage1Row26_valid
  · exact stage1Row27_valid
  · exact stage1Row28_valid
  · exact stage1Row29_valid
  · exact stage1Row30_valid
  · exact stage1Row31_valid
  · exact stage1Row32_valid
  · exact stage1Row33_valid
  · exact stage1Row34_valid
  · exact stage1Row35_valid
  · exact stage1Row36_valid
  · exact stage1Row37_valid
  · exact stage1Row38_valid
  · exact stage1Row39_valid
  · exact stage1Row40_valid
  · exact stage1Row41_valid
  · exact stage1Row42_valid
  · exact stage1Row43_valid
  · exact stage1Row44_valid
  · exact stage1Row45_valid
  · exact stage1Row46_valid
  · exact stage1Row47_valid
  · exact stage1Row48_valid
  · exact stage1Row49_valid
  · exact stage1Row50_valid
  · exact stage1Row51_valid
  · exact stage1Row52_valid
  · exact stage1Row53_valid
  · exact stage1Row54_valid
  · exact stage1Row55_valid
  · exact stage1Row56_valid
  · exact stage1Row57_valid
  · exact stage1Row58_valid
  · exact stage1Row59_valid
  · exact stage1Row60_valid
  · exact stage1Row61_valid
  · exact stage1Row62_valid
  · exact stage1Row63_valid
  · exact stage1Row64_valid
  · exact stage1Row65_valid
  · exact stage1Row66_valid
  · exact stage1Row67_valid
  · exact stage1Row68_valid
  · exact stage1Row69_valid
  · exact stage1Row70_valid
  · exact stage1Row71_valid

theorem stage1_cover : ∀ r ∈ eligibleResidues 7 252 6,
    ∀ s ∈ ({-1, 1} : Finset ℤ), ∃ row ∈ stage1Rows, row.residue = r ∧ row.sign = s := by
  decide +kernel

theorem stage1_chains : ∀ r ∈ eligibleResidues 7 252 6, ∀ s : ℤ, IsSign s →
    ∃ C : IntervalChain 7 252 (1000000 : ℝ) (5000000 : ℝ) (r : ℤ) s,
      ∀ i : ℕ, i ≤ C.last → 5 ∣ C.point i := by
  exact intervalChains_of_table 7 252 1000000 5000000 5 _ stage1Rows stage1_valid stage1_cover

def oddValues : List ℕ := [246, 1716, 198, 2550, 150, 1326, 102, 690, 348, 54, 300, 6, 204, 1380, 156, 2508, 402, 108, 60, 648, 306, 12, 258, 1140, 456, 162, 114, 1290, 66, 1536, 312, 18, 264, 2910, 804, 216, 120, 1296, 366, 72, 318, 24, 270, 858, 222, 2280, 174, 1938, 78, 1254, 30, 324, 276, 570, 228, 1110, 180, 768, 132, 2190, 624, 36, 282, 576, 234, 1410, 186, 1950, 138, 432, 90, 384, 582, 288, 240, 1122, 1074, 192, 438, 144, 684, 96, 342, 48]

theorem odd_cover : ∀ r : ℕ, r < 49 → ¬ 7 ∣ r → ∀ s ∈ ({-1, 1} : Finset ℤ),
    ∃ A ∈ oddValues, 0 < A ∧ A ≤ (if s = -1 then 1074 else if r = 19 then 2910 else 2777) ∧ 6 ∣ A ∧ Nat.ModEq 49 A r ∧ g A = s := by
  decide +kernel

theorem odd_witnesses : ∀ r : ℕ, r < 49 → ¬ 7 ∣ r → ∀ s : ℤ, IsSign s →
    ∃ A : ℕ, 0 < A ∧ A ≤ (if s = -1 then 1074 else if r = 19 then 2910 else 2777) ∧ 6 ∣ A ∧ Nat.ModEq 49 A r ∧ g A = s := by
  intro r hr hqr s hs
  obtain ⟨A, _, hA⟩ := odd_cover r hr hqr s (by simpa [IsSign, or_comm] using hs)
  exact ⟨A, hA⟩

end GeneralizedGoldbach.SmallCertificates.Q7
