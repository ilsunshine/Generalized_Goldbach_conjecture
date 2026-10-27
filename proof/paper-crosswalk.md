# 论文与 Lean 编号对照

阅读版为 [paper.pdf](paper.pdf)。LaTeX 源码保留在作者本地，不在仓库中发布。

本表按编译后的实际编号生成。正文保留 Nagura 论证；正式尾部采用附录 B，有限数据采用附录 C。辅助引理的引用表示其展开或实现位置，不表示定理类型逐字相同。

作者本地修改论文后运行 `pwsh -NoProfile -File latex/build.ps1`，会自动同步 PDF、散列和既有 Lean 注释编号。

普通编号检查为 `python scripts/check_paper_references.py`；加 `--aux` 还会对照本机编译器输出。普通检查不要求安装 LaTeX。

## Lean 声明

| 论文位置 | Lean 声明 | 文件 |
| --- | --- | --- |
| 式 (2.4) | `oddPrimeProduct_pos` | [AuxiliaryPrime.lean](../GeneralizedGoldbach/AuxiliaryPrime.lean) |
| 引理 2.3 | `oddPrimeProduct_coprime` | [AuxiliaryPrime.lean](../GeneralizedGoldbach/AuxiliaryPrime.lean) |
| 引理 2.3；第 A 节 | `exists_least_missing_odd_prime` | [AuxiliaryPrime.lean](../GeneralizedGoldbach/AuxiliaryPrime.lean) |
| 引理 2.3；式 (2.3) | `least_missing_implies_admissible` | [AuxiliaryPrime.lean](../GeneralizedGoldbach/AuxiliaryPrime.lean) |
| 引理 2.3；式 (2.5) | `least_missing_product_dvd` | [AuxiliaryPrime.lean](../GeneralizedGoldbach/AuxiliaryPrime.lean) |
| 引理 2.4；式 (2.6) | `auxiliary_arithmetic` | [AuxiliaryPrime.lean](../GeneralizedGoldbach/AuxiliaryPrime.lean) |
| 引理 2.4 | `auxiliary_radical_dvd_even` | [AuxiliaryPrime.lean](../GeneralizedGoldbach/AuxiliaryPrime.lean) |
| 式 (1.1) | `g_eq_one_or_neg_one` | [Basic.lean](../GeneralizedGoldbach/Basic.lean) |
| 推论 1.2 | `g_eq_neg_one_iff` | [Basic.lean](../GeneralizedGoldbach/Basic.lean) |
| 引理 2.1；式 (2.2) | `g_mul_of_coprime` | [Basic.lean](../GeneralizedGoldbach/Basic.lean) |
| 引理 2.1；式 (2.2) | `g_prime_mul_of_not_dvd` | [Basic.lean](../GeneralizedGoldbach/Basic.lean) |
| 引理 2.1；式 (2.2) | `g_prime_mul_of_dvd` | [Basic.lean](../GeneralizedGoldbach/Basic.lean) |
| 引理 2.1；式 (2.2) | `g_pow` | [Basic.lean](../GeneralizedGoldbach/Basic.lean) |
| 引理 2.1；式 (2.2) | `g_prime_pow_mul_of_dvd` | [Basic.lean](../GeneralizedGoldbach/Basic.lean) |
| 引理 2.1；式 (2.2) | `g_prime_sq_mul` | [Basic.lean](../GeneralizedGoldbach/Basic.lean) |
| 引理 2.1；式 (2.2) | `g_mul_of_prime_support_subset` | [Basic.lean](../GeneralizedGoldbach/Basic.lean) |
| 引理 2.1；式 (2.2) | `g_mul_of_odd_prime_support_subset` | [Basic.lean](../GeneralizedGoldbach/Basic.lean) |
| 引理 2.4 | `rad_pos_squarefree_dvd` | [Basic.lean](../GeneralizedGoldbach/Basic.lean) |
| 引理 2.4 | `prime_dvd_rad_iff` | [Basic.lean](../GeneralizedGoldbach/Basic.lean) |
| 引理 B.2 | `oddPrimeProduct_mono` | [BertrandTail.lean](../GeneralizedGoldbach/BertrandTail.lean) |
| 引理 B.1；式 (B.2) | `anchor_comparisons` | [BertrandTail.lean](../GeneralizedGoldbach/BertrandTail.lean) |
| 引理 B.2；式 (B.3) | `finite_prefix_bound` | [BertrandTail.lean](../GeneralizedGoldbach/BertrandTail.lean) |
| 引理 B.3；式 (B.4) | `prime_product_bound_step` | [BertrandTail.lean](../GeneralizedGoldbach/BertrandTail.lean) |
| 命题 B.4 | `prime_product_bound` | [BertrandTail.lean](../GeneralizedGoldbach/BertrandTail.lean) |
| 式 (B.1) | `sufficient_bound_lt_polynomial` | [BertrandTail.lean](../GeneralizedGoldbach/BertrandTail.lean) |
| 定理 B.5 | `four_patterns_of_large_least_prime` | [BertrandTail.lean](../GeneralizedGoldbach/BertrandTail.lean) |
| 式 (4.4) | `auxiliaryPrimeSet_properties` | [CertificateDefinitions.lean](../GeneralizedGoldbach/CertificateDefinitions.lean) |
| 命题 C.5 | `uniform_certificate_exists` | [Certificates.lean](../GeneralizedGoldbach/Certificates.lean) |
| 引理 4.2；式 (4.6) | `eligible_residues_inverse_closed` | [Certificates.lean](../GeneralizedGoldbach/Certificates.lean) |
| 命题 4.3；式 (4.5) | `even_parameters_of_interval_chains` | [Certificates.lean](../GeneralizedGoldbach/Certificates.lean) |
| 命题 4.3；式 (4.7) | `odd_parameters_of_bounded_witnesses` | [Certificates.lean](../GeneralizedGoldbach/Certificates.lean) |
| 命题 4.3 | `four_patterns_of_uniform_certificate` | [Certificates.lean](../GeneralizedGoldbach/Certificates.lean) |
| 命题 4.3；命题 C.5 | `four_patterns_of_uniform_threshold` | [Certificates.lean](../GeneralizedGoldbach/Certificates.lean) |
| 引理 C.3；式 (C.3) | `range_sound` | [CertificateTree.lean](../GeneralizedGoldbach/CertificateTree.lean) |
| 引理 C.1 | `all_node_valid` | [CertificateTree.lean](../GeneralizedGoldbach/CertificateTree.lean) |
| 引理 C.3 | `range_node_valid` | [CertificateTree.lean](../GeneralizedGoldbach/CertificateTree.lean) |
| 引理 C.3 | `range_certified_node` | [CertificateTree.lean](../GeneralizedGoldbach/CertificateTree.lean) |
| 引理 C.4 | `numericChainValid_of_certificate` | [CertifiedCheckers.lean](../GeneralizedGoldbach/CertifiedCheckers.lean) |
| 引理 C.4 | `intervalChain_of_certificate` | [CertifiedCheckers.lean](../GeneralizedGoldbach/CertifiedCheckers.lean) |
| 命题 C.6；式 (7.4) | `explicitRepresentation_of_certificate` | [CertifiedCheckers.lean](../GeneralizedGoldbach/CertifiedCheckers.lean) |
| 命题 C.6 | `fourPatterns_of_certificate` | [CertifiedCheckers.lean](../GeneralizedGoldbach/CertifiedCheckers.lean) |
| 引理 C.4 | `intervalChain_of_numeric` | [ChainCertificate.lean](../GeneralizedGoldbach/ChainCertificate.lean) |
| 引理 C.4；命题 C.5 | `intervalChains_of_table` | [ChainCertificate.lean](../GeneralizedGoldbach/ChainCertificate.lean) |
| 引理 C.1 | `prime_of_certificate` | [FactorCertificate.lean](../GeneralizedGoldbach/FactorCertificate.lean) |
| 引理 C.2；式 (C.1) | `factorization_sound` | [FactorCertificate.lean](../GeneralizedGoldbach/FactorCertificate.lean) |
| 引理 C.2；式 (C.2) | `g_of_certificate` | [FactorCertificate.lean](../GeneralizedGoldbach/FactorCertificate.lean) |
| 命题 7.3；命题 C.6 | `finite_witness_exists` | [FiniteClosure.lean](../GeneralizedGoldbach/FiniteClosure.lean) |
| 命题 7.3 | `four_patterns_of_finite_candidate` | [FiniteClosure.lean](../GeneralizedGoldbach/FiniteClosure.lean) |
| 式 (7.2) | `candidate_multiplier_bounds` | [FiniteClosureBasic.lean](../GeneralizedGoldbach/FiniteClosureBasic.lean) |
| 引理 A.2 | `explicitRepresentation_implies_representation` | [FiniteClosureBasic.lean](../GeneralizedGoldbach/FiniteClosureBasic.lean) |
| 命题 7.1 | `finite_candidate_iff_least` | [FiniteClosureBasic.lean](../GeneralizedGoldbach/FiniteClosureBasic.lean) |
| 命题 7.1；式 (7.1) | `finite_candidate_iff_multiplier` | [FiniteClosureBasic.lean](../GeneralizedGoldbach/FiniteClosureBasic.lean) |
| 命题 7.1 | `mem_candidatePairs_iff` | [FiniteClosureBasic.lean](../GeneralizedGoldbach/FiniteClosureBasic.lean) |
| 命题 7.2；式 (7.3) | `candidate_multiplier_count` | [FiniteClosureBasic.lean](../GeneralizedGoldbach/FiniteClosureBasic.lean) |
| 命题 7.2；表 1 | `candidate_count_and_bound` | [FiniteClosureBasic.lean](../GeneralizedGoldbach/FiniteClosureBasic.lean) |
| 命题 7.3；式 (7.4) | `four_patterns_of_finite_witness` | [FiniteClosureBasic.lean](../GeneralizedGoldbach/FiniteClosureBasic.lean) |
| 引理 3.1；式 (3.3) | `four_decomposition_congruences` | [FourDecompositions.lean](../GeneralizedGoldbach/FourDecompositions.lean) |
| 引理 3.1；式 (3.1) | `exists_four_decomposition` | [FourDecompositions.lean](../GeneralizedGoldbach/FourDecompositions.lean) |
| 式 (3.2) | `four_decomposition_formulas` | [FourDecompositions.lean](../GeneralizedGoldbach/FourDecompositions.lean) |
| 式 (3.3) | `four_decomposition_prime_relations` | [FourDecompositions.lean](../GeneralizedGoldbach/FourDecompositions.lean) |
| 引理 C.2；式 (C.1) | `factors_sound` | [FullCertificateKernel.lean](../GeneralizedGoldbach/FullCertificateKernel.lean) |
| 式 (C.2) | `g_of_factors` | [FullCertificateKernel.lean](../GeneralizedGoldbach/FullCertificateKernel.lean) |
| 引理 C.4；式 (C.2) | `point_sound` | [FullCertificateKernel.lean](../GeneralizedGoldbach/FullCertificateKernel.lean) |
| 引理 C.4 | `intervalChain_of_factored` | [FullCertificateKernel.lean](../GeneralizedGoldbach/FullCertificateKernel.lean) |
| 命题 C.5 | `signKey_properties` | [FullCertificateKernel.lean](../GeneralizedGoldbach/FullCertificateKernel.lean) |
| 命题 C.5；式 (4.7) | `oddEntry_sound` | [FullCertificateKernel.lean](../GeneralizedGoldbach/FullCertificateKernel.lean) |
| 命题 C.6；式 (7.4) | `natRepresentation_sound` | [FullCertificateKernel.lean](../GeneralizedGoldbach/FullCertificateKernel.lean) |
| 命题 C.5；式 (4.7) | `uniformOdd_of_table` | [FullCertificateKernel.lean](../GeneralizedGoldbach/FullCertificateKernel.lean) |
| 命题 C.5；式 (4.5) | `uniformEven_of_table` | [FullCertificateKernel.lean](../GeneralizedGoldbach/FullCertificateKernel.lean) |
| 命题 C.6 | `finiteWitness_of_table` | [FullCertificateKernel.lean](../GeneralizedGoldbach/FullCertificateKernel.lean) |
| 命题 C.5；式 (4.4) | `auxiliaryPrimeSet_cases` | [FullCertificateKernel.lean](../GeneralizedGoldbach/FullCertificateKernel.lean) |
| 定义 4.1；式 (4.1) | `interval_chain_covers_index` | [IntervalChains.lean](../GeneralizedGoldbach/IntervalChains.lean) |
| 定义 4.1；式 (4.1) | `interval_chain_covers` | [IntervalChains.lean](../GeneralizedGoldbach/IntervalChains.lean) |
| 式 (4.2) | `exists_scaling_exponent` | [IntervalChains.lean](../GeneralizedGoldbach/IntervalChains.lean) |
| 引理 4.2 | `inverseClosed_pow` | [IntervalChains.lean](../GeneralizedGoldbach/IntervalChains.lean) |
| 引理 4.2；式 (4.3) | `scaling_chain_extension` | [IntervalChains.lean](../GeneralizedGoldbach/IntervalChains.lean) |
| 第 7 节；命题 5.4；命题 6.8 | `least_prime_cases` | [Main.lean](../GeneralizedGoldbach/Main.lean) |
| 定理 1.1；第 7 节 | `four_patterns_main` | [Main.lean](../GeneralizedGoldbach/Main.lean) |
| 定理 1.1；式 (1.3) | `four_patterns_main_expanded` | [Main.lean](../GeneralizedGoldbach/Main.lean) |
| 定理 1.1；式 (1.2) | `representationCount_main` | [Main.lean](../GeneralizedGoldbach/Main.lean) |
| 推论 1.2 | `generalized_goldbach` | [Main.lean](../GeneralizedGoldbach/Main.lean) |
| 引理 6.7；式 (6.10) | `prime_product_bound_step` | [PrimeTail.lean](../GeneralizedGoldbach/PrimeTail.lean) |
| 引理 6.7；命题 B.4 | `prime_product_bound` | [PrimeTail.lean](../GeneralizedGoldbach/PrimeTail.lean) |
| 式 (6.11) | `sufficient_bound_lt_polynomial` | [PrimeTail.lean](../GeneralizedGoldbach/PrimeTail.lean) |
| 命题 6.8；定理 B.5 | `four_patterns_of_large_least_prime` | [PrimeTail.lean](../GeneralizedGoldbach/PrimeTail.lean) |
| 引理 6.7；引理 B.3 | `exists_next_prime` | [PrimeTailBasic.lean](../GeneralizedGoldbach/PrimeTailBasic.lean) |
| 式 (6.10)；式 (B.4) | `odd_prime_product_next` | [PrimeTailBasic.lean](../GeneralizedGoldbach/PrimeTailBasic.lean) |
| 引理 6.6；式 (6.8) | `prime_tail_base_cases` | [PrimeTailBasic.lean](../GeneralizedGoldbach/PrimeTailBasic.lean) |
| 命题 3.3；式 (3.6) | `even_modulus_half` | [Rigidity.lean](../GeneralizedGoldbach/Rigidity.lean) |
| 引理 A.3 | `odd_parameter_crt` | [Rigidity.lean](../GeneralizedGoldbach/Rigidity.lean) |
| 命题 3.3；式 (3.5) | `even_residue_properties` | [Rigidity.lean](../GeneralizedGoldbach/Rigidity.lean) |
| 式 (3.6) | `even_parameter_quotient` | [Rigidity.lean](../GeneralizedGoldbach/Rigidity.lean) |
| 命题 3.2；式 (3.4) | `odd_sign_table` | [Rigidity.lean](../GeneralizedGoldbach/Rigidity.lean) |
| 引理 3.1；式 (3.1) | `four_decomposition_representations` | [Rigidity.lean](../GeneralizedGoldbach/Rigidity.lean) |
| 命题 3.3；式 (3.7) | `even_sign_table` | [Rigidity.lean](../GeneralizedGoldbach/Rigidity.lean) |
| 命题 3.2 | `odd_missing_pattern_rigidity` | [Rigidity.lean](../GeneralizedGoldbach/Rigidity.lean) |
| 命题 3.3 | `even_missing_pattern_rigidity` | [Rigidity.lean](../GeneralizedGoldbach/Rigidity.lean) |
| 命题 3.2 | `mixed_patterns_of_odd_parameter` | [Rigidity.lean](../GeneralizedGoldbach/Rigidity.lean) |
| 命题 3.3 | `mixed_patterns_of_even_parameter` | [Rigidity.lean](../GeneralizedGoldbach/Rigidity.lean) |
| 推论 3.4 | `four_patterns_of_odd_parameters` | [Rigidity.lean](../GeneralizedGoldbach/Rigidity.lean) |
| 推论 3.4 | `four_patterns_of_even_parameters` | [Rigidity.lean](../GeneralizedGoldbach/Rigidity.lean) |
| 引理 C.1 | `prime_node_valid` | [SharedPrimeCertificate.lean](../GeneralizedGoldbach/SharedPrimeCertificate.lean) |
| 引理 C.1 | `prime_of_contains` | [SharedPrimeCertificate.lean](../GeneralizedGoldbach/SharedPrimeCertificate.lean) |
| 引理 C.1 | `primeTest_sound` | [SharedPrimeCertificate.lean](../GeneralizedGoldbach/SharedPrimeCertificate.lean) |
| 命题 5.1；式 (5.1) | `q3_certificates` | [SmallPrimes.lean](../GeneralizedGoldbach/SmallPrimes.lean) |
| 命题 5.1 | `q5_certificates` | [SmallPrimes.lean](../GeneralizedGoldbach/SmallPrimes.lean) |
| 命题 5.3 | `q7_certificates` | [SmallPrimes.lean](../GeneralizedGoldbach/SmallPrimes.lean) |
| 引理 5.2 | `q7_exception_classification` | [SmallPrimes.lean](../GeneralizedGoldbach/SmallPrimes.lean) |
| 引理 5.2；式 (5.3) | `q7_exception_positive_positive` | [SmallPrimes.lean](../GeneralizedGoldbach/SmallPrimes.lean) |
| 命题 5.1；引理 4.2 | `four_patterns_of_small_certificates` | [SmallPrimes.lean](../GeneralizedGoldbach/SmallPrimes.lean) |
| 命题 5.1 | `four_patterns_of_q3` | [SmallPrimes.lean](../GeneralizedGoldbach/SmallPrimes.lean) |
| 命题 5.1 | `four_patterns_of_q5` | [SmallPrimes.lean](../GeneralizedGoldbach/SmallPrimes.lean) |
| 命题 5.3 | `four_patterns_of_q7` | [SmallPrimes.lean](../GeneralizedGoldbach/SmallPrimes.lean) |
| 命题 5.4 | `four_patterns_of_small_least_prime` | [SmallPrimes.lean](../GeneralizedGoldbach/SmallPrimes.lean) |
| 引理 A.2；式 (1.2) | `representationCount_pos_iff` | [Statements.lean](../GeneralizedGoldbach/Statements.lean) |
| 引理 A.2 | `representation_swap` | [Statements.lean](../GeneralizedGoldbach/Statements.lean) |
| 命题 6.5；式 (6.6) | `odd_gap_of_sufficient_bound` | [SufficientBound.lean](../GeneralizedGoldbach/SufficientBound.lean) |
| 命题 6.5；式 (6.7) | `even_gap_of_sufficient_bound` | [SufficientBound.lean](../GeneralizedGoldbach/SufficientBound.lean) |
| 命题 6.5；式 (6.5) | `four_patterns_of_sufficient_bound` | [SufficientBound.lean](../GeneralizedGoldbach/SufficientBound.lean) |
| 引理 6.1；式 (6.1) | `three_term_sign_identity` | [ThreePoint.lean](../GeneralizedGoldbach/ThreePoint.lean) |
| 引理 6.2 | `exists_progression_point` | [ThreePoint.lean](../GeneralizedGoldbach/ThreePoint.lean) |
| 引理 6.2；式 (6.2) | `three_point_square_class` | [ThreePoint.lean](../GeneralizedGoldbach/ThreePoint.lean) |
| 引理 6.3；式 (6.3) | `exists_small_representative_avoiding_prime` | [ThreePoint.lean](../GeneralizedGoldbach/ThreePoint.lean) |
| 引理 6.4；式 (6.4) | `two_signs_of_sqrt_gap` | [ThreePoint.lean](../GeneralizedGoldbach/ThreePoint.lean) |

## 稳定标签

| 标签 | 编号 | 类型 | LaTeX 源文件 |
| --- | --- | --- | --- |
| `sec:introduction` | 1 | 节 | `latex/sections/01-introduction.tex`（本地） |
| `eq:sign-definition` | 1.1 | 式 | `latex/sections/01-introduction.tex`（本地） |
| `eq:representation-count` | 1.2 | 式 | `latex/sections/01-introduction.tex`（本地） |
| `thm:main` | 1.1 | 定理 | `latex/sections/01-introduction.tex`（本地） |
| `eq:main` | 1.3 | 式 | `latex/sections/01-introduction.tex`（本地） |
| `cor:negative-negative` | 1.2 | 推论 | `latex/sections/01-introduction.tex`（本地） |
| `sec:preliminaries` | 2 | 节 | `latex/sections/02-preliminaries.tex`（本地） |
| `lem:sign-rules` | 2.1 | 引理 | `latex/sections/02-preliminaries.tex`（本地） |
| `eq:support-union` | 2.1 | 式 | `latex/sections/02-preliminaries.tex`（本地） |
| `eq:prime-multiplication` | 2.2 | 式 | `latex/sections/02-preliminaries.tex`（本地） |
| `def:admissible` | 2.2 | 定义 | `latex/sections/02-preliminaries.tex`（本地） |
| `eq:H` | 2.3 | 式 | `latex/sections/02-preliminaries.tex`（本地） |
| `eq:auxiliary-notation` | 2.4 | 式 | `latex/sections/02-preliminaries.tex`（本地） |
| `lem:least-missing` | 2.3 | 引理 | `latex/sections/02-preliminaries.tex`（本地） |
| `eq:prefix-divides` | 2.5 | 式 | `latex/sections/02-preliminaries.tex`（本地） |
| `lem:auxiliary-arithmetic` | 2.4 | 引理 | `latex/sections/02-preliminaries.tex`（本地） |
| `eq:radical-arithmetic` | 2.6 | 式 | `latex/sections/02-preliminaries.tex`（本地） |
| `sec:rigidity` | 3 | 节 | `latex/sections/03-rigidity.tex`（本地） |
| `lem:four-decompositions` | 3.1 | 引理 | `latex/sections/03-rigidity.tex`（本地） |
| `eq:four-decompositions` | 3.1 | 式 | `latex/sections/03-rigidity.tex`（本地） |
| `eq:four-formulas` | 3.2 | 式 | `latex/sections/03-rigidity.tex`（本地） |
| `eq:four-prime-relations` | 3.3 | 式 | `latex/sections/03-rigidity.tex`（本地） |
| `prop:odd-rigidity` | 3.2 | 命题 | `latex/sections/03-rigidity.tex`（本地） |
| `eq:odd-sign-table` | 3.4 | 式 | `latex/sections/03-rigidity.tex`（本地） |
| `prop:even-rigidity` | 3.3 | 命题 | `latex/sections/03-rigidity.tex`（本地） |
| `eq:even-parameter` | 3.5 | 式 | `latex/sections/03-rigidity.tex`（本地） |
| `eq:even-quotient` | 3.6 | 式 | `latex/sections/03-rigidity.tex`（本地） |
| `eq:even-sign-table` | 3.7 | 式 | `latex/sections/03-rigidity.tex`（本地） |
| `cor:parameters-four` | 3.4 | 推论 | `latex/sections/03-rigidity.tex`（本地） |
| `sec:chains` | 4 | 节 | `latex/sections/04-interval-chains.tex`（本地） |
| `def:interval-chain` | 4.1 | 定义 | `latex/sections/04-interval-chains.tex`（本地） |
| `eq:chain-conditions` | 4.1 | 式 | `latex/sections/04-interval-chains.tex`（本地） |
| `lem:chain-scaling` | 4.2 | 引理 | `latex/sections/04-interval-chains.tex`（本地） |
| `eq:scaling-exponent` | 4.2 | 式 | `latex/sections/04-interval-chains.tex`（本地） |
| `eq:scaled-point` | 4.3 | 式 | `latex/sections/04-interval-chains.tex`（本地） |
| `eq:uniform-parameters` | 4.4 | 式 | `latex/sections/04-interval-chains.tex`（本地） |
| `eq:uniform-even-data` | 4.5 | 式 | `latex/sections/04-interval-chains.tex`（本地） |
| `eq:congruence-cancellation` | 4.6 | 式 | `latex/sections/04-interval-chains.tex`（本地） |
| `eq:uniform-odd-data` | 4.7 | 式 | `latex/sections/04-interval-chains.tex`（本地） |
| `prop:uniform-threshold` | 4.3 | 命题 | `latex/sections/04-interval-chains.tex`（本地） |
| `sec:small` | 5 | 节 | `latex/sections/05-small-primes.tex`（本地） |
| `prop:q3-q5` | 5.1 | 命题 | `latex/sections/05-small-primes.tex`（本地） |
| `eq:q3-odd-witnesses` | 5.1 | 式 | `latex/sections/05-small-primes.tex`（本地） |
| `eq:q7-even-class` | 5.2 | 式 | `latex/sections/05-small-primes.tex`（本地） |
| `lem:q7-exceptions` | 5.2 | 引理 | `latex/sections/05-small-primes.tex`（本地） |
| `eq:q7-exception-decompositions` | 5.3 | 式 | `latex/sections/05-small-primes.tex`（本地） |
| `prop:q7` | 5.3 | 命题 | `latex/sections/05-small-primes.tex`（本地） |
| `prop:small-primes` | 5.4 | 命题 | `latex/sections/05-small-primes.tex`（本地） |
| `sec:large` | 6 | 节 | `latex/sections/06-large-primes.tex`（本地） |
| `lem:three-term` | 6.1 | 引理 | `latex/sections/06-large-primes.tex`（本地） |
| `eq:three-term` | 6.1 | 式 | `latex/sections/06-large-primes.tex`（本地） |
| `lem:three-point` | 6.2 | 引理 | `latex/sections/06-large-primes.tex`（本地） |
| `eq:square-class-condition` | 6.2 | 式 | `latex/sections/06-large-primes.tex`（本地） |
| `lem:small-representative` | 6.3 | 引理 | `latex/sections/06-large-primes.tex`（本地） |
| `eq:small-representative` | 6.3 | 式 | `latex/sections/06-large-primes.tex`（本地） |
| `lem:two-signs-gap` | 6.4 | 引理 | `latex/sections/06-large-primes.tex`（本地） |
| `eq:two-signs-gap` | 6.4 | 式 | `latex/sections/06-large-primes.tex`（本地） |
| `sec:tail-sufficient` | 6.2 | 节 | `latex/sections/06-large-primes.tex`（本地） |
| `prop:sufficient-bound` | 6.5 | 命题 | `latex/sections/06-large-primes.tex`（本地） |
| `eq:sufficient-bound` | 6.5 | 式 | `latex/sections/06-large-primes.tex`（本地） |
| `eq:odd-gap-bound` | 6.6 | 式 | `latex/sections/06-large-primes.tex`（本地） |
| `eq:even-gap-bound` | 6.7 | 式 | `latex/sections/06-large-primes.tex`（本地） |
| `sec:original-tail` | 6.3 | 节 | `latex/sections/06-large-primes.tex`（本地） |
| `lem:tail-base-cases` | 6.6 | 引理 | `latex/sections/06-large-primes.tex`（本地） |
| `eq:tail-base-cases` | 6.8 | 式 | `latex/sections/06-large-primes.tex`（本地） |
| `lem:nagura-product` | 6.7 | 引理 | `latex/sections/06-large-primes.tex`（本地） |
| `eq:nagura-product` | 6.9 | 式 | `latex/sections/06-large-primes.tex`（本地） |
| `eq:nagura-step` | 6.10 | 式 | `latex/sections/06-large-primes.tex`（本地） |
| `prop:large-tail` | 6.8 | 命题 | `latex/sections/06-large-primes.tex`（本地） |
| `eq:nagura-polynomial` | 6.11 | 式 | `latex/sections/06-large-primes.tex`（本地） |
| `sec:finite` | 7 | 节 | `latex/sections/07-finite-closure.tex`（本地） |
| `prop:finite-candidates` | 7.1 | 命题 | `latex/sections/07-finite-closure.tex`（本地） |
| `eq:finite-candidate` | 7.1 | 式 | `latex/sections/07-finite-closure.tex`（本地） |
| `eq:candidate-bounds` | 7.2 | 式 | `latex/sections/07-finite-closure.tex`（本地） |
| `prop:candidate-count` | 7.2 | 命题 | `latex/sections/07-finite-closure.tex`（本地） |
| `eq:candidate-count` | 7.3 | 式 | `latex/sections/07-finite-closure.tex`（本地） |
| `tab:finite-candidates` | 1 | 表 | `latex/sections/07-finite-closure.tex`（本地） |
| `prop:finite-witnesses` | 7.3 | 命题 | `latex/sections/07-finite-closure.tex`（本地） |
| `eq:csv-signs` | 7.4 | 式 | `latex/sections/07-finite-closure.tex`（本地） |
| `app:formal` | A | 节 | `latex/sections/appendix-a-formal-structure.tex`（本地） |
| `def:formal-patterns` | A.1 | 定义 | `latex/sections/appendix-a-formal-structure.tex`（本地） |
| `lem:formal-count` | A.2 | 引理 | `latex/sections/appendix-a-formal-structure.tex`（本地） |
| `lem:formal-crt` | A.3 | 引理 | `latex/sections/appendix-a-formal-structure.tex`（本地） |
| `app:bertrand` | B | 节 | `latex/sections/appendix-b-bertrand.tex`（本地） |
| `eq:bertrand-polynomial` | B.1 | 式 | `latex/sections/appendix-b-bertrand.tex`（本地） |
| `lem:bertrand-anchors` | B.1 | 引理 | `latex/sections/appendix-b-bertrand.tex`（本地） |
| `eq:bertrand-anchors` | B.2 | 式 | `latex/sections/appendix-b-bertrand.tex`（本地） |
| `lem:bertrand-finite` | B.2 | 引理 | `latex/sections/appendix-b-bertrand.tex`（本地） |
| `eq:bertrand-finite` | B.3 | 式 | `latex/sections/appendix-b-bertrand.tex`（本地） |
| `lem:bertrand-step` | B.3 | 引理 | `latex/sections/appendix-b-bertrand.tex`（本地） |
| `eq:bertrand-step` | B.4 | 式 | `latex/sections/appendix-b-bertrand.tex`（本地） |
| `prop:bertrand-product` | B.4 | 命题 | `latex/sections/appendix-b-bertrand.tex`（本地） |
| `thm:bertrand-tail` | B.5 | 定理 | `latex/sections/appendix-b-bertrand.tex`（本地） |
| `app:certificates` | C | 节 | `latex/sections/appendix-c-certificates.tex`（本地） |
| `sec:full-certification` | C | 节 | `latex/sections/appendix-c-certificates.tex`（本地） |
| `lem:prime-certificate` | C.1 | 引理 | `latex/sections/appendix-c-certificates.tex`（本地） |
| `lem:factor-certificate` | C.2 | 引理 | `latex/sections/appendix-c-certificates.tex`（本地） |
| `eq:factor-certificate` | C.1 | 式 | `latex/sections/appendix-c-certificates.tex`（本地） |
| `eq:factor-sign` | C.2 | 式 | `latex/sections/appendix-c-certificates.tex`（本地） |
| `lem:range-coverage` | C.3 | 引理 | `latex/sections/appendix-c-certificates.tex`（本地） |
| `eq:range-coverage` | C.3 | 式 | `latex/sections/appendix-c-certificates.tex`（本地） |
| `lem:numeric-chain` | C.4 | 引理 | `latex/sections/appendix-c-certificates.tex`（本地） |
| `prop:uniform-certification` | C.5 | 命题 | `latex/sections/appendix-c-certificates.tex`（本地） |
| `prop:csv-certification` | C.6 | 命题 | `latex/sections/appendix-c-certificates.tex`（本地） |
