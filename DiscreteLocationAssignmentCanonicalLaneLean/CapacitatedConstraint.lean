import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteLocationAssignmentCanonicalLaneLean

structure CapacitatedConstraintPackage (F : FacilityOpeningCostPackage) (D : DemandNodeAssignmentPackage F) where
  facilityCapacity : F.facilitySet → ℝ
  capacityConstraint : ∀ f, ∑ d, D.assignmentVariable d f * D.demandQuantity d ≤ facilityCapacity f
  capacityNonnegative : ∀ f, facilityCapacity f ≥ 0

structure CapacitatedConstraintEvidence {F : FacilityOpeningCostPackage} {D : DemandNodeAssignmentPackage F} (C : CapacitatedConstraintPackage F D) where
  capacityConstraintClosed : C.capacityConstraint
  capacityNonnegativeClosed : C.capacityNonnegative

def CapacitatedConstraintClosed {F : FacilityOpeningCostPackage} {D : DemandNodeAssignmentPackage F} (C : CapacitatedConstraintPackage F D) : Prop :=
  C.capacityConstraint ∧ C.capacityNonnegative

theorem capacitated_constraint_closed_from_evidence {F : FacilityOpeningCostPackage} {D : DemandNodeAssignmentPackage F} (C : CapacitatedConstraintPackage F D) (E : CapacitatedConstraintEvidence C) : CapacitatedConstraintClosed C := by
  exact And.intro E.capacityConstraintClosed E.capacityNonnegativeClosed

end DiscreteLocationAssignmentCanonicalLaneLean
end HautevilleHouse