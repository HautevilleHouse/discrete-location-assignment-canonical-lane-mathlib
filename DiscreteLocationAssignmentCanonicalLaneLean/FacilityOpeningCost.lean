import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteLocationAssignmentCanonicalLaneLean

structure FacilityOpeningCostPackage where
  facilitySet : Type u
  openingCost : facilitySet → ℝ
  totalCostConstraint : ℝ
  costNonnegative : ∀ i, openingCost i ≥ 0
  costFinite : ∀ i, openingCost i < ∞

structure FacilityOpeningCostEvidence (F : FacilityOpeningCostPackage) where
  costNonnegativeClosed : F.costNonnegative
  costFiniteClosed : F.costFinite

def FacilityOpeningCostClosed (F : FacilityOpeningCostPackage) : Prop :=
  F.costNonnegative ∧ F.costFinite

theorem facility_opening_cost_closed_from_evidence (F : FacilityOpeningCostPackage) (E : FacilityOpeningCostEvidence F) : FacilityOpeningCostClosed F := by
  exact And.intro E.costNonnegativeClosed E.costFiniteClosed

end DiscreteLocationAssignmentCanonicalLaneLean
end HautevilleHouse