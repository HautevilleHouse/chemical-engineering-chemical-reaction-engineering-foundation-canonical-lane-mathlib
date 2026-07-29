import ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean.BridgeLemmas

/-!
# Reaction Kinetics Package
-/

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean

structure ReactionKineticsPackage (M : ChemEngAdmittedObject) where
  reactionRateLaw : Prop
  activationEnergy : Prop
  equilibriumConstant : Prop
  massActionModel : Prop
  rateExpressionClosure : Prop

structure ReactionKineticsEvidence (M : ChemEngAdmittedObject) (K : ReactionKineticsPackage M) where
  reactionRateLawClosed : K.reactionRateLaw
  activationEnergyClosed : K.activationEnergy
  equilibriumConstantClosed : K.equilibriumConstant
  massActionModelClosed : K.massActionModel
  rateExpressionClosureClosed : K.rateExpressionClosure

def ReactionKineticsClosed (M : ChemEngAdmittedObject) (K : ReactionKineticsPackage M) : Prop :=
  K.reactionRateLaw ∧ K.activationEnergy ∧ K.equilibriumConstant ∧ K.massActionModel ∧ K.rateExpressionClosure

theorem reaction_kinetics_closed_from_evidence
    (M : ChemEngAdmittedObject) (K : ReactionKineticsPackage M)
    (E : ReactionKineticsEvidence M K) : ReactionKineticsClosed M K := by
  exact And.intro E.reactionRateLawClosed
    (And.intro E.activationEnergyClosed
      (And.intro E.equilibriumConstantClosed
        (And.intro E.massActionModelClosed E.rateExpressionClosureClosed)))

end ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean
end HautevilleHouse