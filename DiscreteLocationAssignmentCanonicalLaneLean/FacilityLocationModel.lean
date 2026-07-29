import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteLocationAssignmentCanonicalLaneLean

structure FacilityLocationPackage where
  facilities : Type u
  clients : Type v
  assignmentCost : facilities → clients → ℝ
  fixedCost : facilities → ℝ
  capacity : facilities → ℕ
  demand : clients → ℕ
  totalCost : Prop
  capacityConstraint : Prop
  demandSatisfied : Prop

structure FacilityLocationEvidence (F : FacilityLocationPackage) where
  totalCostClosed : F.totalCost
  capacityConstraintClosed : F.capacityConstraint
  demandSatisfiedClosed : F.demandSatisfied

def FacilityLocationClosed (F : FacilityLocationPackage) : Prop :=
  F.totalCost ∧ F.capacityConstraint ∧ F.demandSatisfied

theorem facility_location_closed_from_evidence (F : FacilityLocationPackage) (E : FacilityLocationEvidence F) : FacilityLocationClosed F := by
  exact And.intro E.totalCostClosed (And.intro E.capacityConstraintClosed E.demandSatisfiedClosed)

end DiscreteLocationAssignmentCanonicalLaneLean
end HautevilleHouse