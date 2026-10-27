import GeneralizedGoldbach

open GeneralizedGoldbach

-- Closed checks of definitions only. These do not depend on placeholder theorems.
example : omega 4 = 1 := by decide +kernel
example : omega 12 = 2 := by decide +kernel
example : g 4 = -1 := by decide +kernel
example : g 12 = 1 := by decide +kernel
example : g (2 * 2) ≠ g 2 * g 2 := by decide +kernel
example : rad 12 = 6 := by decide +kernel
example : mainThreshold = 100000 := by decide +kernel
example : HasRepresentation 10 (-1) 1 := by
  exact ⟨4, 6, by decide, by decide, by decide, by decide +kernel, by decide +kernel⟩
example : ¬ ExplicitRepresentation 10 0 1 1 := by
  intro h
  exact (Nat.lt_irrefl 0) h.1
example : ¬ ExplicitRepresentation 10 10 1 1 := by
  intro h
  exact (Nat.lt_irrefl 10) h.2.1
example : FourDecompositionParameter 100003 3 4 := by
  unfold FourDecompositionParameter auxT
  decide +kernel
example : AdmissibleAuxiliaryPrime 1 3 := by
  refine ⟨by decide, by decide, by decide, by decide, ?_⟩
  intro p hp hodd hpd
  have hp2 : p = 2 := (Nat.dvd_prime (by decide : Nat.Prime 2)).mp hpd |>.resolve_left hp.ne_one
  subst p
  exact False.elim ((by decide : ¬ Odd (2 : ℕ)) hodd)
