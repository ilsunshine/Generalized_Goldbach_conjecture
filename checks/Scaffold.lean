import GeneralizedGoldbach
import Lean.Util.CollectAxioms
import Lean.Elab.Command

open Lean Elab Command in
run_elab do
  let env ← getEnv
  let allowed : Array Name := #[``propext, ``Classical.choice, ``Quot.sound, ``sorryAx]
  let mut count := 0
  let mut unfinished := 0
  for (name, _) in env.constants.toList do
    if (`GeneralizedGoldbach).isPrefixOf name then
      count := count + 1
      let dependencies ← collectAxioms name
      if dependencies.contains ``sorryAx then
        unfinished := unfinished + 1
      for dependency in dependencies do
        unless allowed.contains dependency do
          throwError "Unexpected scaffold dependency: {name} -> {dependency}"
  if count == 0 then
    throwError "No project declarations inspected"
  logInfo m!"SCAFFOLD: {count} declarations; {unfinished} depend on proof placeholders. NOT a proof."

#check GeneralizedGoldbach.four_patterns_main
#check GeneralizedGoldbach.four_patterns_main_expanded
#check GeneralizedGoldbach.generalized_goldbach
#print axioms GeneralizedGoldbach.omega
#print axioms GeneralizedGoldbach.four_patterns_main
#print axioms GeneralizedGoldbach.generalized_goldbach
#print axioms GeneralizedGoldbach.three_point_square_class
#print axioms GeneralizedGoldbach.scaling_chain_extension
#print axioms GeneralizedGoldbach.four_patterns_of_sufficient_bound
#print axioms GeneralizedGoldbach.uniform_certificate_exists
#print axioms GeneralizedGoldbach.finite_witness_exists
