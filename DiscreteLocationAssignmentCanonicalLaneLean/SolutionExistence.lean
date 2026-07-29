import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteLocationAssignmentCanonicalLaneLean

structure SolutionExistencePackage (F : FacilityOpeningCostPackage) (D : DemandNodeAssignmentPackage F) (T : TotalCostObjectivePackage F D) where
  feasibleSolution : Prop
  optimalSolution : Prop
  optimalValue : ℝ
  existenceProof : feasibleSolution → optimalSolution
  optimalValueBound : optimalValue ≤ T.totalCost

structure SolutionExistenceEvidence {F : FacilityOpeningCostPackage} {D : DemandNodeAssignmentPackage F} {T : TotalCostObjectivePackage F D} (S : SolutionExistencePackage F D T) where
  existenceProofClosed : S.existenceProof
  optimalValueBoundClosed : S.optimalValueBound

def SolutionExistenceClosed {F : FacilityOpeningCostPackage} {D : DemandNodeAssignmentPackage F} {T : TotalCostObjectivePackage F D} (S : SolutionExistencePackage F D T) : Prop :=
  S.existenceProof ∧ S.optimalValueBound

theorem solution_existence_closed_from_evidence {F : FacilityOpeningCostPackage} {D : DemandNodeAssignmentPackage F} {T : TotalCostObjectivePackage F D} (S : SolutionExistencePackage F D T) (E : SolutionExistenceEvidence S) : SolutionExistenceClosed S := by
  exact And.intro E.existenceProofClosed E.optimalValueBoundClosed

end DiscreteLocationAssignmentCanonicalLaneLean
end HautevilleHouse