import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteLocationAssignmentCanonicalLaneLean

structure ApproximationGuaranteePackage where
  algorithmType : String
  approximationRatio : ℝ
  runtimeComplexity : String
  ratioProved : Prop
  runtimeProved : Prop
  worstCaseExample : Prop

structure ApproximationGuaranteeEvidence (G : ApproximationGuaranteePackage) where
  ratioProvedClosed : G.ratioProved
  runtimeProvedClosed : G.runtimeProved
  worstCaseExampleClosed : G.worstCaseExample

def ApproximationGuaranteeClosed (G : ApproximationGuaranteePackage) : Prop :=
  G.ratioProved ∧ G.runtimeProved ∧ G.worstCaseExample

theorem approximation_guarantee_closed_from_evidence (G : ApproximationGuaranteePackage)
    (E : ApproximationGuaranteeEvidence G) : ApproximationGuaranteeClosed G := by
  exact And.intro E.ratioProvedClosed
    (And.intro E.runtimeProvedClosed E.worstCaseExampleClosed)

end DiscreteLocationAssignmentCanonicalLaneLean
end HautevilleHouse