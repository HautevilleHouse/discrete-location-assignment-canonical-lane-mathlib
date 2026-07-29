import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteLocationAssignmentCanonicalLaneLean

structure TotalCostObjectivePackage (F : FacilityOpeningCostPackage) (D : DemandNodeAssignmentPackage F) where
  fixedCostTerm : ℝ
  variableCostTerm : ℝ
  totalCost : ℝ
  costDefinition : totalCost = fixedCostTerm + variableCostTerm
  costNonnegative : totalCost ≥ 0

structure TotalCostObjectiveEvidence {F : FacilityOpeningCostPackage} {D : DemandNodeAssignmentPackage F} (T : TotalCostObjectivePackage F D) where
  costDefinitionClosed : T.costDefinition
  costNonnegativeClosed : T.costNonnegative

def TotalCostObjectiveClosed {F : FacilityOpeningCostPackage} {D : DemandNodeAssignmentPackage F} (T : TotalCostObjectivePackage F D) : Prop :=
  T.costDefinition ∧ T.costNonnegative

theorem total_cost_objective_closed_from_evidence {F : FacilityOpeningCostPackage} {D : DemandNodeAssignmentPackage F} (T : TotalCostObjectivePackage F D) (E : TotalCostObjectiveEvidence T) : TotalCostObjectiveClosed T := by
  exact And.intro E.costDefinitionClosed E.costNonnegativeClosed

end DiscreteLocationAssignmentCanonicalLaneLean
end HautevilleHouse