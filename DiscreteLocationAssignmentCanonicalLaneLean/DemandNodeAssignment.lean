import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteLocationAssignmentCanonicalLaneLean

structure DemandNodeAssignmentPackage (F : FacilityOpeningCostPackage) where
  demandSet : Type u
  demandQuantity : demandSet → ℝ
  assignmentVariable : demandSet → F.facilitySet → ℝ
  assignmentConstraint : ∀ d, ∑ f, assignmentVariable d f = demandQuantity d
  integralityCondition : ∀ d f, assignmentVariable d f ∈ {0, 1}

structure DemandNodeAssignmentEvidence {F : FacilityOpeningCostPackage} (D : DemandNodeAssignmentPackage F) where
  assignmentConstraintClosed : D.assignmentConstraint
  integralityConditionClosed : D.integralityCondition

def DemandNodeAssignmentClosed {F : FacilityOpeningCostPackage} (D : DemandNodeAssignmentPackage F) : Prop :=
  D.assignmentConstraint ∧ D.integralityCondition

theorem demand_node_assignment_closed_from_evidence {F : FacilityOpeningCostPackage} (D : DemandNodeAssignmentPackage F) (E : DemandNodeAssignmentEvidence D) : DemandNodeAssignmentClosed D := by
  exact And.intro E.assignmentConstraintClosed E.integralityConditionClosed

end DiscreteLocationAssignmentCanonicalLaneLean
end HautevilleHouse