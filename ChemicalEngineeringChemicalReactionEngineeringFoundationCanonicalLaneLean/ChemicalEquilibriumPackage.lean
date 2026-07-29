import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean

structure ChemicalEquilibriumPackage where
  equilibriumConstant : Type u
  reactionQuotient : Type v
  gibbsFreeEnergyChange : Type w
  equilibriumComposition : Prop
  leChatelierPrinciple : Prop
  temperatureEffect : Prop
  pressureEffect : Prop

structure ChemicalEquilibriumEvidence (C : ChemicalEquilibriumPackage) where
  equilibriumCompositionClosed : C.equilibriumComposition
  leChatelierPrincipleClosed : C.leChatelierPrinciple
  temperatureEffectClosed : C.temperatureEffect
  pressureEffectClosed : C.pressureEffect

def ChemicalEquilibriumClosed (C : ChemicalEquilibriumPackage) : Prop :=
  C.equilibriumComposition ∧ C.leChatelierPrinciple ∧ C.temperatureEffect ∧ C.pressureEffect

theorem chemical_equilibrium_closed_from_evidence (C : ChemicalEquilibriumPackage) (E : ChemicalEquilibriumEvidence C) :
    ChemicalEquilibriumClosed C := by
  exact And.intro E.equilibriumCompositionClosed
    (And.intro E.leChatelierPrincipleClosed
      (And.intro E.temperatureEffectClosed E.pressureEffectClosed))

end ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean
end HautevilleHouse