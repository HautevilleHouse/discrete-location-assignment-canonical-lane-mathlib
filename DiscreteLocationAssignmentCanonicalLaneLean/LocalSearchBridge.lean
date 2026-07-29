import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteLocationAssignmentCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DiscretLocationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DiscreteLocationAssignmentCanonicalLaneLean
end HautevilleHouse