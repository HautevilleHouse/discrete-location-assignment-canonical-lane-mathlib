import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteLocationAssignmentCanonicalLaneLean

structure FacilityLocationPackage where
  candidateSites : Type u
  demandPoints : Type v
  assignmentCost : candidateSites → demandPoints → ℝ
  fixedCost : candidateSites → ℝ
  capacity : candidateSites → ℕ
  openSites : Set candidateSites
  assignments : candidateSites → Set demandPoints
  capacityConstraints : Prop
  demandCovered : Prop
  costObjective : Prop

structure FacilityLocationEvidence (F : FacilityLocationPackage) where
  capacityConstraintsClosed : F.capacityConstraints
  demandCoveredClosed : F.demandCovered
  costObjectiveClosed : F.costObjective

def FacilityLocationClosed (F : FacilityLocationPackage) : Prop :=
  F.capacityConstraints ∧ F.demandCovered ∧ F.costObjective

theorem facility_location_closed_from_evidence (F : FacilityLocationPackage)
    (E : FacilityLocationEvidence F) : FacilityLocationClosed F := by
  exact And.intro E.capacityConstraintsClosed
    (And.intro E.demandCoveredClosed E.costObjectiveClosed)

end DiscreteLocationAssignmentCanonicalLaneLean
end HautevilleHouse