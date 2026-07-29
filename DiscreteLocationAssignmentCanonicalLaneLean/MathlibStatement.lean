import DiscreteLocationAssignmentCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace DiscreteLocationAssignmentCanonicalLaneLean

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibProofObligation : MathlibProofObligation := {
  sourceKey := "discrete-location-assignment-canonical-lane",
  theoremObject := "Discrete Location Assignment",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "theorem-specific Mathlib endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
}

theorem theorem_specific_endgame_pilot_checked :
    ∀ A : AdmissibleClass, ConstrainedAssignmentClosure A := by
  intro A
  exact constrained_assignment_endgame A

end DiscreteLocationAssignmentCanonicalLaneLean
end HautevilleHouse