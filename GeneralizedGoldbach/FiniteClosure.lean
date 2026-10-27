module

public import GeneralizedGoldbach.FiniteClosureBasic
public import GeneralizedGoldbach.LargeCertificates.FiniteCertificates

/-!
论文命题 7.3 [prop:finite-witnesses]；
论文命题 C.6 [prop:csv-certification]。
从完整 CSV 覆盖取得三列有限见证，并通过交换异号分解得到第四种有序模式。
-/
@[expose] public section
namespace GeneralizedGoldbach

/-- 论文命题 7.3 [prop:finite-witnesses]；论文命题 C.6 [prop:csv-certification]。
完整乘数区间检查恢复每个有限候选的三个正分解见证。 -/
theorem finite_witness_exists (N q : ℕ) (h : FiniteCandidate N q) :
    Nonempty (FiniteWitness N) := by
  exact LargeCertificates.FiniteCertificates.all N q h

/-- 论文命题 7.3 [prop:finite-witnesses]。 -/
theorem four_patterns_of_finite_candidate (N q : ℕ) (h : FiniteCandidate N q) :
    FourPatternsAt N := by
  obtain ⟨W⟩ := finite_witness_exists N q h
  exact four_patterns_of_finite_witness N W

end GeneralizedGoldbach
