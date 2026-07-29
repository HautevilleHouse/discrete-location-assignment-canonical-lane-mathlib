import DiscreteLocationAssignmentCanonicalLaneLean.LocationAssignmentCore

namespace HautevilleHouse
namespace DiscreteLocationAssignmentCanonicalLaneLean

structure AssignmentSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure AssignmentAdmittedObject where
  space : AssignmentSpace
  facilities : List Facility
  customers : List Customer
  locations : List PotentialLocation
  assignment : Customer → Facility
  assignmentValid : validAssignment customers facilities locations assignment

def AssignmentSatisfied (O : AssignmentAdmittedObject) : Prop :=
  O.assignmentValid

end DiscreteLocationAssignmentCanonicalLaneLean
end HautevilleHouse