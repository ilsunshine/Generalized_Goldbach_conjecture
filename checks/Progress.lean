import GeneralizedGoldbach
import Lean.Util.CollectAxioms
import Lean.Elab.Command

open Lean Elab Command in
run_elab do
  let names : Array Name := #[
    ``GeneralizedGoldbach.exists_least_missing_odd_prime,
    ``GeneralizedGoldbach.least_missing_implies_admissible,
    ``GeneralizedGoldbach.least_missing_product_dvd,
    ``GeneralizedGoldbach.auxiliary_arithmetic,
    ``GeneralizedGoldbach.auxiliary_radical_dvd_even,
    ``GeneralizedGoldbach.g_eq_one_or_neg_one,
    ``GeneralizedGoldbach.g_eq_neg_one_iff,
    ``GeneralizedGoldbach.g_mul_of_coprime,
    ``GeneralizedGoldbach.g_prime_mul_of_not_dvd,
    ``GeneralizedGoldbach.g_prime_mul_of_dvd,
    ``GeneralizedGoldbach.g_pow,
    ``GeneralizedGoldbach.g_prime_pow_mul_of_dvd,
    ``GeneralizedGoldbach.g_prime_sq_mul,
    ``GeneralizedGoldbach.rad_pos_squarefree_dvd,
    ``GeneralizedGoldbach.prime_dvd_rad_iff,
    ``GeneralizedGoldbach.uniform_certificate_exists,
    ``GeneralizedGoldbach.eligible_residues_inverse_closed,
    ``GeneralizedGoldbach.four_patterns_of_uniform_certificate,
    ``GeneralizedGoldbach.four_patterns_of_uniform_threshold,
    ``GeneralizedGoldbach.finite_candidate_iff_least,
    ``GeneralizedGoldbach.finite_candidate_iff_multiplier,
    ``GeneralizedGoldbach.mem_candidatePairs_iff,
    ``GeneralizedGoldbach.candidate_multiplier_count,
    ``GeneralizedGoldbach.candidate_count_and_bound,
    ``GeneralizedGoldbach.finite_witness_exists,
    ``GeneralizedGoldbach.four_patterns_of_finite_witness,
    ``GeneralizedGoldbach.four_patterns_of_finite_candidate,
    ``GeneralizedGoldbach.exists_four_decomposition,
    ``GeneralizedGoldbach.four_decomposition_formulas,
    ``GeneralizedGoldbach.four_decomposition_prime_relations,
    ``GeneralizedGoldbach.interval_chain_covers,
    ``GeneralizedGoldbach.exists_scaling_exponent,
    ``GeneralizedGoldbach.scaling_chain_extension,
    ``GeneralizedGoldbach.least_prime_cases,
    ``GeneralizedGoldbach.four_patterns_main,
    ``GeneralizedGoldbach.four_patterns_main_expanded,
    ``GeneralizedGoldbach.representationCount_main,
    ``GeneralizedGoldbach.generalized_goldbach,
    ``GeneralizedGoldbach.exists_next_prime,
    ``GeneralizedGoldbach.odd_prime_product_next,
    ``GeneralizedGoldbach.prime_tail_base_cases,
    ``GeneralizedGoldbach.prime_product_bound_step,
    ``GeneralizedGoldbach.prime_product_bound,
    ``GeneralizedGoldbach.sufficient_bound_lt_polynomial,
    ``GeneralizedGoldbach.four_patterns_of_large_least_prime,
    ``GeneralizedGoldbach.odd_parameter_crt,
    ``GeneralizedGoldbach.even_residue_properties,
    ``GeneralizedGoldbach.even_parameter_quotient,
    ``GeneralizedGoldbach.odd_sign_table,
    ``GeneralizedGoldbach.even_sign_table,
    ``GeneralizedGoldbach.odd_missing_pattern_rigidity,
    ``GeneralizedGoldbach.even_missing_pattern_rigidity,
    ``GeneralizedGoldbach.mixed_patterns_of_odd_parameter,
    ``GeneralizedGoldbach.mixed_patterns_of_even_parameter,
    ``GeneralizedGoldbach.four_patterns_of_odd_parameters,
    ``GeneralizedGoldbach.four_patterns_of_even_parameters,
    ``GeneralizedGoldbach.q3_certificates,
    ``GeneralizedGoldbach.q5_certificates,
    ``GeneralizedGoldbach.q7_certificates,
    ``GeneralizedGoldbach.q7_exception_classification,
    ``GeneralizedGoldbach.q7_exception_positive_positive,
    ``GeneralizedGoldbach.four_patterns_of_q3,
    ``GeneralizedGoldbach.four_patterns_of_q5,
    ``GeneralizedGoldbach.four_patterns_of_q7,
    ``GeneralizedGoldbach.four_patterns_of_small_least_prime,
    ``GeneralizedGoldbach.representationCount_pos_iff,
    ``GeneralizedGoldbach.representation_swap,
    ``GeneralizedGoldbach.odd_gap_of_sufficient_bound,
    ``GeneralizedGoldbach.even_gap_of_sufficient_bound,
    ``GeneralizedGoldbach.four_patterns_of_sufficient_bound,
    ``GeneralizedGoldbach.three_term_sign_identity,
    ``GeneralizedGoldbach.three_point_square_class,
    ``GeneralizedGoldbach.exists_small_representative_avoiding_prime,
    ``GeneralizedGoldbach.two_signs_of_sqrt_gap]
  let allowed : Array Name := #[``propext, ``Classical.choice, ``Quot.sound, ``sorryAx]
  let mut records : Array Json := #[]
  let mut clean := 0
  for name in names do
    let dependencies ← collectAxioms name
    let pending := dependencies.contains ``sorryAx
    unless pending do clean := clean + 1
    for dependency in dependencies do
      unless allowed.contains dependency do
        throwError "Unexpected dependency: {name} -> {dependency}"
    records := records.push (Json.mkObj [
      ("name", toJson name.toString),
      ("axiom_clean", toJson (!pending)),
      ("axioms", toJson (dependencies.map Name.toString))])
  let report := Json.mkObj [
    ("original_theorems", toJson (76 : Nat)),
    ("active_theorems", toJson names.size),
    ("retired_unproved", toJson (2 : Nat)),
    ("axiom_clean", toJson clean),
    ("depends_on_placeholders", toJson (names.size - clean)),
    ("theorems", Json.arr records)]
  liftM <| IO.FS.createDirAll "output/verification"
  liftM <| IO.FS.writeFile "output/verification/lean-proof-progress.json" report.pretty
  logInfo m!"Active original statements: {names.size}/76; axiom-clean: {clean}; placeholders: {names.size - clean}; retired unproved: 2."
