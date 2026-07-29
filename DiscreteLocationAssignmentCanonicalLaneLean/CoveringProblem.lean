import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteLocationAssignmentCanonicalLaneLean

structure CoveringPackage where
  facilities : Type u
  demandNodes : Type v
  coverageRadius : ℝ
  covers : facilities → demandNodes → Prop
  selected : facilities → Prop
  coverageConstraint : Prop
  minFacilities : Prop

structure CoveringEvidence (C : CoveringPackage) where
  coverageConstraintClosed : C.coverageConstraint
  minFacilitiesClosed : C.minFacilities

def CoveringClosed (C : CoveringPackage) : Prop :=
  C.coverageConstraint ∧ C.minFacilities

theorem covering_closed_from_evidence (C : CoveringPackage) (E : CoveringEvidence C) : CoveringClosed C := by
  exact And.intro E.coverageConstraintClosed E.minFacilitiesClosed

end DiscreteLocationAssignmentCanonicalLaneLean
end HautevilleHouse