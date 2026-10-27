import GeneralizedGoldbach
import Lean.Util.CollectAxioms
import Lean.Elab.Command

open Lean Elab Command in
run_elab do
  let env ← getEnv
  let allowed : Array Name := #[``propext, ``Classical.choice, ``Quot.sound]
  let mut count := 0
  for (name, _) in env.constants.toList do
    if (`GeneralizedGoldbach).isPrefixOf name then
      count := count + 1
      for dependency in (← collectAxioms name) do
        unless allowed.contains dependency do
          throwError "Unpublishable dependency: {name} -> {dependency}"
  if count == 0 then
    throwError "No project declarations inspected"
  logInfo m!"Strict axiom audit: {count} declarations"
