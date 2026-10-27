import Supplement.BertrandTail
import GeneralizedGoldbach.PrimeTail
import Lean.Util.CollectAxioms
import Lean.Elab.Command

#print axioms GeneralizedGoldbach.BertrandRoute.anchor_comparisons
#print axioms GeneralizedGoldbach.BertrandRoute.prime_product_bound
#print axioms GeneralizedGoldbach.BertrandRoute.four_patterns_of_large_least_prime

-- 论文定理 B.5 [thm:bertrand-tail]：相同参数、正性来源及结论。
example : ∀ N q : ℕ, GeneralizedGoldbach.IsLeastMissingOddPrime N q →
    61 ≤ q → GeneralizedGoldbach.FourPatternsAt N :=
  GeneralizedGoldbach.BertrandRoute.four_patterns_of_large_least_prime

open Lean Elab Command in
run_elab do
  let env ← getEnv
  let allowed : Array Name := #[``propext, ``Classical.choice, ``Quot.sound]
  let mut count := 0
  for (name, _) in env.constants.toList do
    if (`GeneralizedGoldbach.BertrandRoute).isPrefixOf name then
      count := count + 1
      for dependency in (← collectAxioms name) do
        unless allowed.contains dependency do
          throwError "Unpublishable dependency: {name} -> {dependency}"
  if count < 7 then
    throwError "Expected at least seven supplement declarations, inspected {count}"
  let mut pending := #[``GeneralizedGoldbach.BertrandRoute.four_patterns_of_large_least_prime]
  let mut visited : Std.HashSet Name := {}
  while !pending.isEmpty do
    let name := pending.back!
    pending := pending.pop
    if visited.contains name then continue
    visited := visited.insert name
    if let some ci := env.find? name then
      let valueReferences := match ci with
        | .defnInfo v => v.value.getUsedConstants
        | .thmInfo v => v.value.getUsedConstants
        | .opaqueInfo v => v.value.getUsedConstants
        | .inductInfo v => v.ctors.toArray
        | _ => #[]
      pending := pending ++ ci.type.getUsedConstants ++ valueReferences
  for forbidden in #[`GeneralizedGoldbach.nagura_interval, `GeneralizedGoldbach.nagura_nat,
      ``GeneralizedGoldbach.prime_product_bound, ``GeneralizedGoldbach.four_patterns_of_large_least_prime] do
    if visited.contains forbidden then
      throwError "Old Nagura route is reachable: {forbidden}"
  unless visited.contains ``Nat.exists_prime_lt_and_le_two_mul do
    throwError "The supplement did not actually use Bertrand's theorem"
  logInfo m!"Supplement strict audit: {count} declarations; standard axioms only."
  logInfo m!"Proof dependency closure: {visited.size} constants; Bertrand used, old Nagura route absent."
