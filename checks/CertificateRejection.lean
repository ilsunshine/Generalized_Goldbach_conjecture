import GeneralizedGoldbach.SmallCertificates.Q3

open GeneralizedGoldbach

-- 将第一条合法链的负号改成正号，检查器必然拒绝。
example : ¬ NumericChainValid 3 12 100000 500000 5
    { SmallCertificates.Q3.evenRow0 with sign := 1 } := by
  intro hbad
  have hbadSign := (hbad.2.1 0 (by decide +kernel)).2.2.1
  have hgoodSign := (SmallCertificates.Q3.evenRow0_valid.2.1 0 (by decide +kernel)).2.2.1
  change g (SmallCertificates.Q3.evenRow0.points.getD 0 0) = 1 at hbadSign
  change g (SmallCertificates.Q3.evenRow0.points.getD 0 0) = -1 at hgoodSign
  omega
