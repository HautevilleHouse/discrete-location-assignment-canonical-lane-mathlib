import DiscreteLocationAssignmentCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace DiscreteLocationAssignmentCanonicalLaneLean

def ConstrainedLocationAssignmentClosure (A : AdmissibleClass) : Prop :=
  ConstrainedDiscreteLocationClosure A

theorem constrained_location_assignment_endgame (A : AdmissibleClass) :
    ConstrainedLocationAssignmentClosure A := by
  exact constrained_discrete_location_endgame A

end DiscreteLocationAssignmentCanonicalLaneLean
end HautevilleHouse