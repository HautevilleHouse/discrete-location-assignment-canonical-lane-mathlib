import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteLocationAssignmentCanonicalLaneLean

def ConstrainedLocationAssignmentClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_location_assignment_endgame (A : AdmissibleClass) : ConstrainedLocationAssignmentClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DiscreteLocationAssignmentCanonicalLaneLean
end HautevilleHouse