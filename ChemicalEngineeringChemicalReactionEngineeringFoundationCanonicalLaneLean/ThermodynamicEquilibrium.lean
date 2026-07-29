import ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean.ReactionKinetics

/-!
# Thermodynamic Equilibrium Package
-/

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean

structure ThermodynamicEquilibriumPackage (M : ChemEngAdmittedObject) (K : ReactionKineticsPackage M) where
  gibbsFreeEnergy : Prop
  enthalpyChange : Prop
  entropyChange : Prop
  equilibriumCondition : Prop
  vanHoffEquation : Prop

structure ThermodynamicEquilibriumEvidence (M : ChemEngAdmittedObject) (K : ReactionKineticsPackage M)
    (T : ThermodynamicEquilibriumPackage M K) where
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  enthalpyChangeClosed : T.enthalpyChange
  entropyChangeClosed : T.entropyChange
  equilibriumConditionClosed : T.equilibriumCondition
  vanHoffEquationClosed : T.vanHoffEquation

def ThermodynamicEquilibriumClosed (M : ChemEngAdmittedObject) (K : ReactionKineticsPackage M)
    (T : ThermodynamicEquilibriumPackage M K) : Prop :=
  T.gibbsFreeEnergy ∧ T.enthalpyChange ∧ T.entropyChange ∧ T.equilibriumCondition ∧ T.vanHoffEquation

theorem thermodynamic_equilibrium_closed_from_evidence
    (M : ChemEngAdmittedObject) (K : ReactionKineticsPackage M)
    (T : ThermodynamicEquilibriumPackage M K) (E : ThermodynamicEquilibriumEvidence M K T) :
    ThermodynamicEquilibriumClosed M K T := by
  exact And.intro E.gibbsFreeEnergyClosed
    (And.intro E.enthalpyChangeClosed
      (And.intro E.entropyChangeClosed
        (And.intro E.equilibriumConditionClosed E.vanHoffEquationClosed)))

end ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean
end HautevilleHouse