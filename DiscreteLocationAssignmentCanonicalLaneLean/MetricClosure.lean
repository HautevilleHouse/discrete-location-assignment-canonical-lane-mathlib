import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteLocationAssignmentCanonicalLaneLean

structure MetricClosurePackage where
  metricSpaceType : Type u
  distanceFunction : metricSpaceType → metricSpaceType → ℝ
  triangleInequality : Prop
  symmetry : Prop
  positivity : Prop
  closureProperty : Prop

structure MetricClosureEvidence (M : MetricClosurePackage) where
  triangleInequalityClosed : M.triangleInequality
  symmetryClosed : M.symmetry
  positivityClosed : M.positivity
  closurePropertyClosed : M.closureProperty

def MetricClosureClosed (M : MetricClosurePackage) : Prop :=
  M.triangleInequality ∧ M.symmetry ∧ M.positivity ∧ M.closureProperty

theorem metric_closure_closed_from_evidence (M : MetricClosurePackage)
    (E : MetricClosureEvidence M) : MetricClosureClosed M := by
  exact And.intro E.triangleInequalityClosed
    (And.intro E.symmetryClosed
      (And.intro E.positivityClosed E.closurePropertyClosed))

end DiscreteLocationAssignmentCanonicalLaneLean
end HautevilleHouse