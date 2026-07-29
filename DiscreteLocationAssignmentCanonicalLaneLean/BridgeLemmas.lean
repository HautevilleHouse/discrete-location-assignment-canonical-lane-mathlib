import DiscreteLocationAssignmentCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteLocationAssignmentCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AssignmentSatisfied A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.assignmentValid

end DiscreteLocationAssignmentCanonicalLaneLean
end HautevilleHouse