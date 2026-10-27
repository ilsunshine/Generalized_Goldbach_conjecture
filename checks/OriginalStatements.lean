import GeneralizedGoldbach

open GeneralizedGoldbach

/- 原始 76 项中 74 项保留的完整类型对照；@ 引用必须与原类型定义相等。
两条未形式化的 Nagura 声明已明确归档，见 retired-statements.json。 -/

-- exists_least_missing_odd_prime
example : ∀ (_N : ℕ) (_hN : 0 < _N),
    ∃ q : ℕ, IsLeastMissingOddPrime _N q := @exists_least_missing_odd_prime

-- least_missing_implies_admissible
example : ∀ (_N _q : ℕ)
    (_h : IsLeastMissingOddPrime _N _q),
    AdmissibleAuxiliaryPrime _N _q := @least_missing_implies_admissible

-- least_missing_product_dvd
example : ∀ (_N _q : ℕ)
    (_h : IsLeastMissingOddPrime _N _q),
    oddPrimeProduct _q ∣ _N := @least_missing_product_dvd

-- auxiliary_arithmetic
example : ∀ (_N _q : ℕ) (_h : AdmissibleAuxiliaryPrime _N _q),
    3 ≤ _q ∧ 0 < auxT _q ∧ Even (auxT _q) ∧ 0 < auxD _q ∧
      Even (auxD _q) ∧ Odd (auxD _q / 2) ∧ auxD _q ∣ auxT _q ∧
      Nat.Coprime (auxD _q) _q := @auxiliary_arithmetic

-- auxiliary_radical_dvd_even
example : ∀ (_N _q : ℕ) (_h : AdmissibleAuxiliaryPrime _N _q)
    (_heven : Even _N),
    auxD _q ∣ _N := @auxiliary_radical_dvd_even

-- g_eq_one_or_neg_one
example : ∀ (_n : ℕ),
    g _n = 1 ∨ g _n = -1 := @g_eq_one_or_neg_one

-- g_eq_neg_one_iff
example : ∀ (_n : ℕ),
    g _n = -1 ↔ Odd (omega _n) := @g_eq_neg_one_iff

-- g_mul_of_coprime
example : ∀ (_a _b : ℕ) (_ha : 0 < _a) (_hb : 0 < _b)
    (_hcop : Nat.Coprime _a _b),
    g (_a * _b) = g _a * g _b := @g_mul_of_coprime

-- g_prime_mul_of_not_dvd
example : ∀ (_p _n : ℕ) (_hp : Nat.Prime _p) (_hn : 0 < _n)
    (_hpn : ¬ _p ∣ _n),
    g (_p * _n) = -g _n := @g_prime_mul_of_not_dvd

-- g_prime_mul_of_dvd
example : ∀ (_p _n : ℕ) (_hp : Nat.Prime _p) (_hn : 0 < _n)
    (_hpn : _p ∣ _n),
    g (_p * _n) = g _n := @g_prime_mul_of_dvd

-- g_pow
example : ∀ (_n _k : ℕ) (_hn : 0 < _n) (_hk : 0 < _k),
    g (_n ^ _k) = g _n := @g_pow

-- g_prime_pow_mul_of_dvd
example : ∀ (_p _n _k : ℕ) (_hp : Nat.Prime _p) (_hn : 0 < _n)
    (_hpn : _p ∣ _n),
    g (_p ^ _k * _n) = g _n := @g_prime_pow_mul_of_dvd

-- g_prime_sq_mul
example : ∀ (_p _n : ℕ) (_hp : Nat.Prime _p) (_hn : 0 < _n),
    g (_p ^ 2 * _n) = g (_p * _n) := @g_prime_sq_mul

-- rad_pos_squarefree_dvd
example : ∀ (_n : ℕ) (_hn : 0 < _n),
    0 < rad _n ∧ Squarefree (rad _n) ∧ rad _n ∣ _n ∧ rad _n ≤ _n := @rad_pos_squarefree_dvd

-- prime_dvd_rad_iff
example : ∀ (_p _n : ℕ) (_hp : Nat.Prime _p) (_hn : 0 < _n),
    _p ∣ rad _n ↔ _p ∣ _n := @prime_dvd_rad_iff

-- uniform_certificate_exists
example : ∀ (_q : ℕ) (_hq : _q ∈ auxiliaryPrimeSet),
    UniformCertificate _q := @uniform_certificate_exists

-- eligible_residues_inverse_closed
example : ∀ (_q _ell : ℕ) (_hq : Nat.Prime _q)
    (_hodd : Odd _q) (_hcop : Nat.Coprime _ell (evenModulus _q)),
    InverseClosed (evenModulus _q) _ell (eligibleResidues _q (evenModulus _q) (auxD _q)) := @eligible_residues_inverse_closed

-- four_patterns_of_uniform_certificate
example : ∀ (_N _q : ℕ)
    (_hH : AdmissibleAuxiliaryPrime _N _q) (_hcert : UniformCertificate _q)
    (_hsize : uniformThreshold _q ≤ _N),
    FourPatternsAt _N := @four_patterns_of_uniform_certificate

-- four_patterns_of_uniform_threshold
example : ∀ (_N _q : ℕ)
    (_hH : AdmissibleAuxiliaryPrime _N _q) (_hq : _q ∈ auxiliaryPrimeSet)
    (_hsize : uniformThreshold _q ≤ _N),
    FourPatternsAt _N := @four_patterns_of_uniform_threshold

-- finite_candidate_iff_least
example : ∀ (_N _q : ℕ) (_hq : _q ∈ auxiliaryPrimeSet)
    (_hN : mainThreshold ≤ _N) (_hsize : _N < uniformThreshold _q),
    FiniteCandidate _N _q ↔ IsLeastMissingOddPrime _N _q := @finite_candidate_iff_least

-- finite_candidate_iff_multiplier
example : ∀ (_N _q : ℕ),
    FiniteCandidate _N _q ↔ _q ∈ auxiliaryPrimeSet ∧
      ∃ k ∈ candidateMultipliers _q, _N = oddPrimeProduct _q * k := @finite_candidate_iff_multiplier

-- mem_candidatePairs_iff
example : ∀ (_N _q : ℕ),
    (_N, _q) ∈ candidatePairs ↔ FiniteCandidate _N _q := @mem_candidatePairs_iff

-- candidate_multiplier_count
example : ∀ (_q : ℕ) (_hq : _q ∈ auxiliaryPrimeSet),
    (candidateMultipliers _q).card =
      if candidateLower _q ≤ candidateUpper _q then
        (candidateUpper _q - candidateLower _q + 1) -
          (candidateUpper _q / _q - (candidateLower _q - 1) / _q)
      else 0 := @candidate_multiplier_count

-- candidate_count_and_bound
example : candidatePairs.card = 149753 ∧
      (∀ N q : ℕ, FiniteCandidate N q → N ≤ 3234846615) ∧
      FiniteCandidate 3234846615 31 := @candidate_count_and_bound

-- finite_witness_exists
example : ∀ (_N _q : ℕ) (_h : FiniteCandidate _N _q),
    Nonempty (FiniteWitness _N) := @finite_witness_exists

-- four_patterns_of_finite_witness
example : ∀ (_N : ℕ) (_W : FiniteWitness _N),
    FourPatternsAt _N := @four_patterns_of_finite_witness

-- four_patterns_of_finite_candidate
example : ∀ (_N _q : ℕ) (_h : FiniteCandidate _N _q),
    FourPatternsAt _N := @four_patterns_of_finite_candidate

-- exists_four_decomposition
example : ∀ (_N _q _A : ℕ) (_hq : Nat.Prime _q)
    (_hodd : Odd _q) (_hqN : ¬ _q ∣ _N) (_hA : FourDecompositionParameter _N _q _A),
    Nonempty (FourDecomposition _N _q _A) := @exists_four_decomposition

-- four_decomposition_formulas
example : ∀ (_N _q _A : ℕ) (_hq : 0 < _q)
    (_D : FourDecomposition _N _q _A),
    (_D.u : ℤ) = ((_N : ℤ) - (_A : ℤ)) / (_q : ℤ) ^ 2 ∧
    (_D.v : ℤ) = ((_N : ℤ) + (auxT _q : ℤ) * (_A : ℤ)) / (_q : ℤ) ∧
    (_D.w : ℤ) = ((_N : ℤ) - (auxT _q : ℤ) ^ 2 * (_A : ℤ)) / (_q : ℤ) := @four_decomposition_formulas

-- four_decomposition_prime_relations
example : ∀ (_N _q _A : ℕ) (_hq : Nat.Prime _q)
    (_hodd : Odd _q) (_hqN : ¬ _q ∣ _N) (_D : FourDecomposition _N _q _A),
    g (_q ^ 2 * _D.u) = g (_q * _D.u) ∧ ¬ _q ∣ _D.v ∧ ¬ _q ∣ _D.w ∧
      g (_q * _D.w) = -g _D.w := @four_decomposition_prime_relations

-- interval_chain_covers
example : ∀ (_q _m : ℕ) (_hq : 3 ≤ _q) (_hm : 0 < _m)
    (_L _U _X : ℝ) (_r _s : ℤ) (_C : IntervalChain _q _m _L _U _r _s)
    (_hLX : _L ≤ _X) (_hXU : _X ≤ _U),
    HasSignedPoint _m (_X / (_q : ℝ)) (_X / (auxT _q : ℝ)) _r _s := @interval_chain_covers

-- exists_scaling_exponent
example : ∀ (_ell : ℕ) (_hell : 1 < _ell) (_T _X : ℝ)
    (_hT : 0 < _T) (_hX : _T ≤ _X),
    ∃ k : ℕ, _T ≤ _X / (_ell : ℝ) ^ k ∧ _X / (_ell : ℝ) ^ k < (_ell : ℝ) * _T := @exists_scaling_exponent

-- scaling_chain_extension
example : ∀ (_q _m _ell : ℕ) (_hq : 3 ≤ _q) (_hm : 0 < _m)
    (_hell : Nat.Prime _ell) (_hcop : Nat.Coprime _ell _m) (_T : ℝ) (_hT : 0 < _T)
    (_R : Finset ℕ) (_hR : InverseClosed _m _ell _R)
    (_hchains : ∀ _r ∈ _R, ∀ s : ℤ, IsSign s →
      ∃ C : IntervalChain _q _m _T ((_ell : ℝ) * _T) (_r : ℤ) s,
        ∀ i : ℕ, i ≤ C.last → _ell ∣ C.point i),
    ∀ X : ℝ, _T ≤ X → ∀ _r ∈ _R,
      BothSignsInClass _m (X / (_q : ℝ)) (X / (auxT _q : ℝ)) (_r : ℤ) := @scaling_chain_extension

-- least_prime_cases
example : ∀ (_N _q : ℕ) (_h : IsLeastMissingOddPrime _N _q),
    _q ≤ 7 ∨ _q ∈ auxiliaryPrimeSet ∨ 61 ≤ _q := @least_prime_cases

-- four_patterns_main
example : FourPatternsConjecture := @four_patterns_main

-- four_patterns_main_expanded
example : ∀ (_N : ℕ) (_hN : 100000 ≤ _N)
    (_s _t : ℤ) (_hs : IsSign _s) (_ht : IsSign _t),
    ∃ a b : ℕ, 0 < a ∧ 0 < b ∧ _N = a + b ∧ g a = _s ∧ g b = _t := @four_patterns_main_expanded

-- representationCount_main
example : ∀ (_N : ℕ) (_hN : 100000 ≤ _N)
    (_s _t : ℤ) (_hs : IsSign _s) (_ht : IsSign _t),
    0 < representationCount _N _s _t := @representationCount_main

-- generalized_goldbach
example : NegativeNegativeConjecture := @generalized_goldbach

-- exists_next_prime
example : ∀ (_q : ℕ) (_hq : Nat.Prime _q),
    ∃ q' : ℕ, ConsecutivePrimes _q q' := @exists_next_prime

-- odd_prime_product_next
example : ∀ (_q _q' : ℕ) (_hq : 3 ≤ _q)
    (_hnext : ConsecutivePrimes _q _q'),
    oddPrimeProduct _q' = _q * oddPrimeProduct _q := @odd_prime_product_next

-- prime_tail_base_cases
example : oddPrimeProduct 61 = 961380175077106319535 ∧
    sufficientBound 61 7 = 514898337587558400000 ∧
    oddPrimeProduct 67 = 58644190679703485491635 ∧
    sufficientBound 67 5 = 1352644522537268505600 ∧
    25 * oddPrimeProduct 71 = 1152 * 71 ^ 12 + 79325064871285123771842993 := @prime_tail_base_cases

-- prime_product_bound_step
example : ∀ (_q _q' : ℕ) (_hq : 71 ≤ _q)
    (_hnext : ConsecutivePrimes _q _q') (_hgap : 5 * _q' < 6 * _q)
    (_hbound : 1152 * _q ^ 12 < 25 * oddPrimeProduct _q),
    1152 * _q' ^ 12 < 25 * oddPrimeProduct _q' := @prime_product_bound_step

-- prime_product_bound
example : ∀ (_q : ℕ) (_hq : Nat.Prime _q) (_hlarge : 71 ≤ _q),
    1152 * _q ^ 12 < 25 * oddPrimeProduct _q := @prime_product_bound

-- sufficient_bound_lt_polynomial
example : ∀ (_q _p : ℕ) (_hq : 71 ≤ _q)
    (_hqp : _q < _p) (_hgap : 5 * _p < 6 * _q),
    25 * sufficientBound _q _p < 1152 * _q ^ 12 := @sufficient_bound_lt_polynomial

-- four_patterns_of_large_least_prime
example : ∀ (_N _q : ℕ)
    (_hleast : IsLeastMissingOddPrime _N _q) (_hq : 61 ≤ _q),
    FourPatternsAt _N := @four_patterns_of_large_least_prime

-- odd_parameter_crt
example : ∀ (_N _q : ℕ) (_hH : AdmissibleAuxiliaryPrime _N _q),
    ∃ r : ℕ, r < oddModulus _q ∧ auxD _q ∣ r ∧ ¬ _q ∣ r ∧
      ∀ A : ℕ, (auxD _q ∣ A ∧ Nat.ModEq (_q ^ 2) A _N) ↔
        Nat.ModEq (oddModulus _q) A r := @odd_parameter_crt

-- even_residue_properties
example : ∀ (_N _q : ℕ) (_hH : AdmissibleAuxiliaryPrime _N _q)
    (_hN : Even _N),
    ∃ r : ℕ, r < evenModulus _q ∧ auxD _q ∣ r ∧ ¬ _q ∣ r ∧
      Int.ModEq (evenModulus _q : ℤ) (r : ℤ) (evenResidue _N _q) := @even_residue_properties

-- even_parameter_quotient
example : ∀ (_N _q _v : ℕ) (_hH : AdmissibleAuxiliaryPrime _N _q)
    (_hv : EvenRigidityParameter _N _q _v),
    ∃ u : ℕ, 0 < u ∧ _N = auxT _q * _q * u + _v ∧
      Nat.ModEq (auxD _q) u (auxD _q / 2) := @even_parameter_quotient

-- odd_sign_table
example : ∀ (_N _q _A : ℕ) (_hH : AdmissibleAuxiliaryPrime _N _q)
    (_hodd : Odd _N) (_hA : OddRigidityParameter _N _q _A) (_D : FourDecomposition _N _q _A),
    g (auxT _q * _q * _D.u) = -g (_q ^ 2 * _D.u) ∧
      g (auxT _q * _D.v) = -g _D.v ∧ g (auxT _q ^ 2 * _A) = g _A := @odd_sign_table

-- even_sign_table
example : ∀ (_N _q _v : ℕ) (_hH : AdmissibleAuxiliaryPrime _N _q)
    (_heven : Even _N) (_hv : EvenRigidityParameter _N _q _v),
    ∃ A : ℕ, ∃ D : FourDecomposition _N _q A, D.v = _v ∧
      g (auxT _q * _q * D.u) = -g (_q ^ 2 * D.u) ∧
      g (auxT _q * D.v) = g D.v ∧ g (auxT _q ^ 2 * A) = -g A := @even_sign_table

-- odd_missing_pattern_rigidity
example : ∀ (_N _q : ℕ) (_hodd : Odd _N)
    (_hH : AdmissibleAuxiliaryPrime _N _q) (_eps : ℤ) (_heps : IsSign _eps)
    (_hmissing : MissingSameSign _N _eps),
    ∀ A : ℕ, OddRigidityParameter _N _q A → g A = -_eps := @odd_missing_pattern_rigidity

-- even_missing_pattern_rigidity
example : ∀ (_N _q : ℕ) (_heven : Even _N)
    (_hH : AdmissibleAuxiliaryPrime _N _q) (_eps : ℤ) (_heps : IsSign _eps)
    (_hmissing : MissingSameSign _N _eps),
    ∀ v : ℕ, EvenRigidityParameter _N _q v → g v = -_eps := @even_missing_pattern_rigidity

-- mixed_patterns_of_odd_parameter
example : ∀ (_N _q _A : ℕ) (_hodd : Odd _N)
    (_hH : AdmissibleAuxiliaryPrime _N _q) (_hA : OddRigidityParameter _N _q _A),
    HasRepresentation _N 1 (-1) ∧ HasRepresentation _N (-1) 1 := @mixed_patterns_of_odd_parameter

-- mixed_patterns_of_even_parameter
example : ∀ (_N _q _v : ℕ) (_heven : Even _N)
    (_hH : AdmissibleAuxiliaryPrime _N _q) (_hv : EvenRigidityParameter _N _q _v),
    HasRepresentation _N 1 (-1) ∧ HasRepresentation _N (-1) 1 := @mixed_patterns_of_even_parameter

-- four_patterns_of_odd_parameters
example : ∀ (_N _q : ℕ) (_hH : AdmissibleAuxiliaryPrime _N _q)
    (_hodd : Odd _N) (_hparams : ∀ s : ℤ, IsSign s →
      ∃ A : ℕ, OddRigidityParameter _N _q A ∧ g A = s),
    FourPatternsAt _N := @four_patterns_of_odd_parameters

-- four_patterns_of_even_parameters
example : ∀ (_N _q : ℕ) (_hH : AdmissibleAuxiliaryPrime _N _q)
    (_heven : Even _N) (_hparams : ∀ s : ℤ, IsSign s →
      ∃ v : ℕ, EvenRigidityParameter _N _q v ∧ g v = s),
    FourPatternsAt _N := @four_patterns_of_even_parameters

-- q3_certificates
example : SmallEvenCertificate 3 5 ∧ SmallOddCertificate 3 64 := @q3_certificates

-- q5_certificates
example : SmallEvenCertificate 5 3 ∧ SmallOddCertificate 5 312 := @q5_certificates

-- q7_certificates
example : Q7EvenCertificate ∧ Q7OddCertificate := @q7_certificates

-- q7_exception_classification
example : ∀ (_N : ℕ) (_hlo : 100000 ≤ _N) (_hhi : _N ≤ 104760)
    (_hodd : Odd _N) (_hdiv : 15 ∣ _N) (_hres : Nat.ModEq 49 _N 19),
    _N = 100665 ∨ _N = 102135 ∨ _N = 103605 := @q7_exception_classification

-- q7_exception_positive_positive
example : HasRepresentation 100665 1 1 ∧ HasRepresentation 102135 1 1 ∧
      HasRepresentation 103605 1 1 := @q7_exception_positive_positive

-- four_patterns_of_q3
example : ∀ (_N : ℕ) (_hN : mainThreshold ≤ _N) (_hnot : ¬ 3 ∣ _N),
    FourPatternsAt _N := @four_patterns_of_q3

-- four_patterns_of_q5
example : ∀ (_N : ℕ) (_hN : mainThreshold ≤ _N) (_hnot : ¬ 5 ∣ _N),
    FourPatternsAt _N := @four_patterns_of_q5

-- four_patterns_of_q7
example : ∀ (_N : ℕ) (_hN : mainThreshold ≤ _N)
    (_hdiv : 15 ∣ _N) (_hnot : ¬ 7 ∣ _N),
    FourPatternsAt _N := @four_patterns_of_q7

-- four_patterns_of_small_least_prime
example : ∀ (_N _q : ℕ) (_hN : mainThreshold ≤ _N)
    (_hleast : IsLeastMissingOddPrime _N _q) (_hq : _q ≤ 7),
    FourPatternsAt _N := @four_patterns_of_small_least_prime

-- representationCount_pos_iff
example : ∀ (_N : ℕ) (_s _t : ℤ),
    0 < representationCount _N _s _t ↔ HasRepresentation _N _s _t := @representationCount_pos_iff

-- representation_swap
example : ∀ (_N : ℕ) (_s _t : ℤ)
    (_h : HasRepresentation _N _s _t),
    HasRepresentation _N _t _s := @representation_swap

-- odd_gap_of_sufficient_bound
example : ∀ (_N _q _p : ℕ) (_hH : AdmissibleAuxiliaryPrime _N _q)
    (_hp : Nat.Prime _p) (_hsize : sufficientBound _q _p < _N),
    2 * (_q : ℝ) ^ 2 * (_p : ℝ) * Real.sqrt (2 * (oddModulus _q : ℝ)) <
      Real.sqrt ((_N : ℝ) / (auxT _q : ℝ) ^ 2) := @odd_gap_of_sufficient_bound

-- even_gap_of_sufficient_bound
example : ∀ (_N _q _p : ℕ) (_hH : AdmissibleAuxiliaryPrime _N _q)
    (_hp : Nat.Prime _p) (_hsize : sufficientBound _q _p < _N),
    2 * ((auxT _q * _q : ℕ) : ℝ) * (_p : ℝ) * Real.sqrt (2 * (evenModulus _q : ℝ)) <
      Real.sqrt ((_N : ℝ) / (auxT _q : ℝ)) - Real.sqrt ((_N : ℝ) / (_q : ℝ)) := @even_gap_of_sufficient_bound

-- four_patterns_of_sufficient_bound
example : ∀ (_N _q _p : ℕ)
    (_hH : AdmissibleAuxiliaryPrime _N _q) (_hp : Nat.Prime _p)
    (_havoid : ¬ _p ∣ _q * auxT _q) (_hsize : sufficientBound _q _p < _N),
    FourPatternsAt _N := @four_patterns_of_sufficient_bound

-- three_term_sign_identity
example : ∀ (_c _j _k : ℕ) (_hc : 0 < _c) (_hj : 0 < _j)
    (_hk : 0 < _k) (_hcop : Nat.Coprime _j _k),
    g (_c * _j ^ 2) * g (_c * _j * _k) * g (_c * _k ^ 2) = g _c := @three_term_sign_identity

-- three_point_square_class
example : ∀ (_m _c _h _r : ℕ) (_hm : 0 < _m) (_hc : 0 < _c)
    (_L _U : ℝ) (_hL : 0 ≤ _L) (_hLU : _L < _U)
    (_hcop : Nat.Coprime _h (_m / Nat.gcd _c _m))
    (_hcong : Nat.ModEq _m (_c * _h ^ 2) _r)
    (_hgap : 2 * ((_m / Nat.gcd _c _m : ℕ) : ℝ) * Real.sqrt (_c : ℝ) <
      Real.sqrt _U - Real.sqrt _L),
    HasSignedPoint _m _L _U (_r : ℤ) (g _c) := @three_point_square_class

-- exists_small_representative_avoiding_prime
example : ∀ (_m _d _p : ℕ) (_r : ℤ)
    (_hm : 0 < _m) (_hd : 0 < _d) (_hdm : _d ∣ _m) (_hdr : (_d : ℤ) ∣ _r)
    (_hp : Nat.Prime _p) (_hpm : ¬ _p ∣ _m),
    ∃ c : ℕ, 0 < c ∧ c < 2 * _m ∧ _d ∣ c ∧ ¬ _p ∣ c ∧
      Int.ModEq (_m : ℤ) (c : ℤ) _r := @exists_small_representative_avoiding_prime

-- two_signs_of_sqrt_gap
example : ∀ (_m _d _p : ℕ) (_r : ℤ) (_hm : 0 < _m)
    (_hd : 0 < _d) (_hdm : _d ∣ _m) (_hdr : (_d : ℤ) ∣ _r)
    (_hp : Nat.Prime _p) (_hpm : ¬ _p ∣ _m) (_L _U : ℝ) (_hL : 0 ≤ _L) (_hLU : _L < _U)
    (_hgap : 2 * ((_m / _d : ℕ) : ℝ) * (_p : ℝ) * Real.sqrt (2 * (_m : ℝ)) <
      Real.sqrt _U - Real.sqrt _L),
    BothSignsInClass _m _L _U _r := @two_signs_of_sqrt_gap
