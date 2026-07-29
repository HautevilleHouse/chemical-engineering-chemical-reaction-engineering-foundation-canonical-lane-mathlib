import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean

structure ThermodynamicsPackage where
  gibbsFreeEnergy : Prop
  enthalpyAndEntropy : Prop
  equilibriumConstant : Prop
  reactionQuotient : Prop
  vanHoffEquation : Prop
  phaseEquilibrium : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  enthalpyAndEntropyClosed : T.enthalpyAndEntropy
  equilibriumConstantClosed : T.equilibriumConstant
  reactionQuotientClosed : T.reactionQuotient
  vanHoffEquationClosed : T.vanHoffEquation
  phaseEquilibriumClosed : T.phaseEquilibrium

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.gibbsFreeEnergy ∧ T.enthalpyAndEntropy ∧
  T.equilibriumConstant ∧ T.reactionQuotient ∧
  T.vanHoffEquation ∧ T.phaseEquilibrium

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage) (E : ThermodynamicsEvidence T) :
    ThermodynamicsClosed T := by
  exact And.intro E.gibbsFreeEnergyClosed
    (And.intro E.enthalpyAndEntropyClosed
      (And.intro E.equilibriumConstantClosed
        (And.intro E.reactionQuotientClosed
          (And.intro E.vanHoffEquationClosed
            E.phaseEquilibriumClosed))))

end ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean
end HautevilleHouse