import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteLocationAssignmentCanonicalLaneLean

structure CapacitatedLocationPackage where
  locations : Type u
  customers : Type v
  assignmentVar : locations → customers → ℝ
  capacity : locations → ℕ
  demand : customers → ℕ
  flowConstraint : Prop
  capacityBound : Prop
  integrality : Prop

structure CapacitatedLocationEvidence (C : CapacitatedLocationPackage) where
  flowConstraintClosed : C.flowConstraint
  capacityBoundClosed : C.capacityBound
  integralityClosed : C.integrality

def CapacitatedLocationClosed (C : CapacitatedLocationPackage) : Prop :=
  C.flowConstraint ∧ C.capacityBound ∧ C.integrality

theorem capacitated_location_closed_from_evidence (C : CapacitatedLocationPackage) (E : CapacitatedLocationEvidence C) : CapacitatedLocationClosed C := by
  exact And.intro E.flowConstraintClosed (And.intro E.capacityBoundClosed E.integralityClosed)

end DiscreteLocationAssignmentCanonicalLaneLean
end HautevilleHouse