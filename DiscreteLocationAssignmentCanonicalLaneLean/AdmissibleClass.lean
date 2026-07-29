import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteLocationAssignmentCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure LocationSpace where
  carrier : Type
  metric : TopologicalSpace carrier

structure LocationAdmittedObject where
  space : LocationSpace
  closedFacilitySet : Prop
  completeAssignment : Prop
  optimalCost : ℝ
  conclusion : optimalCost > 0

def LocationWitnessClosed (O : LocationAdmittedObject) : Prop :=
  O.optimalCost > 0

end DiscreteLocationAssignmentCanonicalLaneLean
end HautevilleHouse