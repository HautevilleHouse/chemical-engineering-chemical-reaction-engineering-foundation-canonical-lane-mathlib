import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean

structure ThermodynamicsFoundationPackage where
  internalEnergy : Type u
  enthalpy : Type v
  entropy : Type w
  gibbsFreeEnergy : Type x
  firstLaw : Prop
  secondLaw : Prop
  thirdLaw : Prop
  phaseEquilibrium : Prop

structure ThermodynamicsFoundationEvidence (T : ThermodynamicsFoundationPackage) where
  firstLawClosed : T.firstLaw
  secondLawClosed : T.secondLaw
  thirdLawClosed : T.thirdLaw
  phaseEquilibriumClosed : T.phaseEquilibrium

def ThermodynamicsFoundationClosed (T : ThermodynamicsFoundationPackage) : Prop :=
  T.firstLaw ∧ T.secondLaw ∧ T.thirdLaw ∧ T.phaseEquilibrium

theorem thermodynamics_foundation_closed_from_evidence (T : ThermodynamicsFoundationPackage) (E : ThermodynamicsFoundationEvidence T) :
    ThermodynamicsFoundationClosed T := by
  exact And.intro E.firstLawClosed
    (And.intro E.secondLawClosed
      (And.intro E.thirdLawClosed E.phaseEquilibriumClosed))

end ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean
end HautevilleHouse