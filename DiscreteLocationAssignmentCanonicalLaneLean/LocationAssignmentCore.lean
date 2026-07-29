import DiscreteLocationAssignmentCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteLocationAssignmentCanonicalLaneLean

structure Facility where
  facilityId : Nat
  capacity : Nat
  openingCost : Nat

structure Customer where
  customerId : Nat
  demand : Nat

structure PotentialLocation where
  locationId : Nat
  fixedCost : Nat

def feasibleLocation (loc : PotentialLocation) (demand : Nat) (capacity : Nat) : Prop :=
  demand ≤ capacity

def validAssignment (C : List Customer) (F : List Facility) (L : List PotentialLocation)
    (assignment : Customer → Facility) : Prop :=
  ∀ c : Customer,
    feasibleLocation (L.get? (assignment c).facilityId) (c.demand) (assignment c).capacity

end DiscreteLocationAssignmentCanonicalLaneLean
end HautevilleHouse