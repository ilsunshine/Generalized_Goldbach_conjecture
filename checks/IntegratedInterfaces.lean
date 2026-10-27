import GeneralizedGoldbach
import Lean.Util.CollectAxioms
import Lean.Elab.Command

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

#print axioms GeneralizedGoldbach.four_patterns_of_large_least_prime
#print axioms GeneralizedGoldbach.prime_product_bound
#print axioms GeneralizedGoldbach.Certified.factorization_sound
#print axioms GeneralizedGoldbach.Certified.numericChainValid_of_certificate
#print axioms GeneralizedGoldbach.Certified.fourPatterns_of_certificate
#print axioms Hex.Nat.natPrime_of_checkPrimeAt
#print axioms GeneralizedGoldbach.four_patterns_main
#print axioms GeneralizedGoldbach.four_patterns_main_expanded
#print axioms GeneralizedGoldbach.generalized_goldbach

open Lean Elab Command in
run_elab do
  let env ← getEnv
  let standard : Array Name := #[``propext, ``Classical.choice, ``Quot.sound]
  let mut cleanCount := 0
  for (name, _) in env.constants.toList do
    if (`GeneralizedGoldbach.BertrandRoute).isPrefixOf name ||
        (`GeneralizedGoldbach.Certified).isPrefixOf name ||
        (`GeneralizedGoldbach.FullCertificate).isPrefixOf name ||
        (`GeneralizedGoldbach.LargeCertificates).isPrefixOf name ||
        (`GeneralizedGoldbach.SmallCertificates).isPrefixOf name ||
        name == ``GeneralizedGoldbach.four_patterns_of_large_least_prime ||
        name == ``GeneralizedGoldbach.prime_product_bound ||
        name == ``Hex.Nat.natPrime_of_checkPrimeAt then
      cleanCount := cleanCount + 1
      for ax in (← collectAxioms name) do
        unless standard.contains ax do
          throwError "Unfinished integrated interface: {name} -> {ax}"
  let mut pending := #[``GeneralizedGoldbach.four_patterns_main]
  let mut visited : Std.HashSet Name := {}
  let mut activeHoles : Array Name := #[]
  while !pending.isEmpty do
    let name := pending.back!
    pending := pending.pop
    if visited.contains name then continue
    visited := visited.insert name
    if let some ci := env.find? name then
      if let .thmInfo v := ci then
        if v.value.getUsedConstants.contains ``sorryAx then
          activeHoles := activeHoles.push name
      let references := match ci with
        | .defnInfo v => v.value.getUsedConstants
        | .thmInfo v => v.value.getUsedConstants
        | .opaqueInfo v => v.value.getUsedConstants
        | .inductInfo v => v.ctors.toArray
        | _ => #[]
      pending := pending ++ ci.type.getUsedConstants ++ references
  for forbidden in #[`GeneralizedGoldbach.nagura_interval, `GeneralizedGoldbach.nagura_nat] do
    if visited.contains forbidden then
      throwError "Main proof still uses the old interval route: {forbidden}"
  for required in #[``Nat.exists_prime_lt_and_le_two_mul,
      ``GeneralizedGoldbach.BertrandRoute.four_patterns_of_large_least_prime,
      ``GeneralizedGoldbach.Certified.numericChainValid_of_certificate,
      ``GeneralizedGoldbach.FullCertificate.CertificateTree.range_sound,
      ``GeneralizedGoldbach.FullCertificate.primeTest_sound,
      ``GeneralizedGoldbach.FullCertificate.uniformOdd_of_table,
      ``GeneralizedGoldbach.FullCertificate.uniformEven_of_table,
      ``GeneralizedGoldbach.FullCertificate.finiteWitness_of_table,
      ``Hex.Nat.natPrime_of_checkPrimeAt] do
    unless visited.contains required do
      throwError "Configured interface is not actually used by the main proof: {required}"
  unless activeHoles.isEmpty do
    throwError "Main proof still has unfinished obligations: {activeHoles}"
  logInfo m!"Integrated interfaces: {cleanCount} declarations; standard axioms only."
  logInfo m!"Main dependency closure: {visited.size} constants; Bertrand and Hex bridge are active."
  logInfo m!"No active proof placeholders; full uniform and CSV certificate interfaces are used."
