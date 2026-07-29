import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteLocationAssignmentCanonicalLaneLean

structure LagrangianRelaxationPackage where
  originalProblem : FacilityLocationPackage
  multipliers : Type u
  relaxedAssignmentCost : originalProblem.candidateSites → originalProblem.demandPoints → ℝ
  subproblemSolved : Prop
  dualBound : ℝ
  optimalityGap : ℝ

structure LagrangianRelaxationEvidence (L : LagrangianRelaxationPackage) where
  subproblemSolvedClosed : L.subproblemSolved
  dualBoundValid : L.dualBound ≥ 0
  optimalityGapFinite : L.optimalityGap < ∞

def LagrangianRelaxationClosed (L : LagrangianRelaxationPackage) : Prop :=
  L.subproblemSolved ∧ L.dualBound ≥ 0 ∧ L.optimalityGap < ∞

theorem lagrangian_relaxation_closed_from_evidence (L : LagrangianRelaxationPackage)
    (E : LagrangianRelaxationEvidence L) : LagrangianRelaxationClosed L := by
  exact And.intro E.subproblemSolvedClosed
    (And.intro E.dualBoundValid E.optimalityGapFinite)

end DiscreteLocationAssignmentCanonicalLaneLean
end HautevilleHouse