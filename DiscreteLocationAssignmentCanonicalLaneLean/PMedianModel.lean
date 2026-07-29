import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteLocationAssignmentCanonicalLaneLean

structure PMedianPackage where
  candidates : Type u
  demandPoints : Type v
  distance : candidates → demandPoints → ℝ
  p : ℕ
  pSelected : candidates → Prop
  totalDistance : Prop
  cardinalityConstraint : Prop

structure PMedianEvidence (P : PMedianPackage) where
  totalDistanceClosed : P.totalDistance
  cardinalityConstraintClosed : P.cardinalityConstraint

def PMedianClosed (P : PMedianPackage) : Prop :=
  P.totalDistance ∧ P.cardinalityConstraint

theorem p_median_closed_from_evidence (P : PMedianPackage) (E : PMedianEvidence P) : PMedianClosed P := by
  exact And.intro E.totalDistanceClosed E.cardinalityConstraintClosed

end DiscreteLocationAssignmentCanonicalLaneLean
end HautevilleHouse