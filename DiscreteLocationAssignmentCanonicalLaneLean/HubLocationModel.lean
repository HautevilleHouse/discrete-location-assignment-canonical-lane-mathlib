import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteLocationAssignmentCanonicalLaneLean

structure HubLocationPackage where
  hubs : Type u
  spokeNodes : Type v
  flow : spokeNodes → spokeNodes → ℝ
  hubFixedCost : hubs → ℝ
  assignmentCost : spokeNodes → hubs → ℝ
  hubCapacity : hubs → ℕ
  totalCost : Prop
  capacityConstraint : Prop
  flowConservation : Prop

structure HubLocationEvidence (H : HubLocationPackage) where
  totalCostClosed : H.totalCost
  capacityConstraintClosed : H.capacityConstraint
  flowConservationClosed : H.flowConservation

def HubLocationClosed (H : HubLocationPackage) : Prop :=
  H.totalCost ∧ H.capacityConstraint ∧ H.flowConservation

theorem hub_location_closed_from_evidence (H : HubLocationPackage) (E : HubLocationEvidence H) : HubLocationClosed H := by
  exact And.intro E.totalCostClosed (And.intro E.capacityConstraintClosed E.flowConservationClosed)

end DiscreteLocationAssignmentCanonicalLaneLean
end HautevilleHouse