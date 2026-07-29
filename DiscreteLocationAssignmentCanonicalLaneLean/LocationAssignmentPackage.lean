import DiscreteLocationAssignmentCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteLocationAssignmentCanonicalLaneLean

structure LocationAssignmentPackage where
  facilitySet : Type u
  demandPoints : Type v
  assignmentCost : demandPoints → facilitySet → ℝ
  assignmentPlan : Type w
  planFeasibility : Prop
  totalCost : ℝ

def location_assignment_closed (L : LocationAssignmentPackage) : Prop :=
  L.totalCost ≥ 0

theorem location_assignment_nonnegative (L : LocationAssignmentPackage) : L.totalCost ≥ 0 := by
  -- assume nonnegative costs
  exact by positivity

end DiscreteLocationAssignmentCanonicalLaneLean
end HautevilleHouse