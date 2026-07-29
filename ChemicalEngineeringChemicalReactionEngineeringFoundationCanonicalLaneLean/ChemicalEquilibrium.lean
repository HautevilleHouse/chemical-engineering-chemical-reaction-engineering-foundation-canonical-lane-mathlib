import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean

structure ChemicalEquilibriumPackage where
  equilibriumConstant : Type u
  reactionQuotient : Type v
  leChatelierPrinciple : Prop
  equilibriumComposition : Prop
  temperatureDependence : Prop

structure ChemicalEquilibriumEvidence (C : ChemicalEquilibriumPackage) where
  leChatelierPrincipleClosed : C.leChatelierPrinciple
  equilibriumCompositionClosed : C.equilibriumComposition
  temperatureDependenceClosed : C.temperatureDependence

def ChemicalEquilibriumClosed (C : ChemicalEquilibriumPackage) : Prop :=
  C.leChatelierPrinciple ∧ C.equilibriumComposition ∧ C.temperatureDependence

theorem chemical_equilibrium_closed_from_evidence (C : ChemicalEquilibriumPackage) (E : ChemicalEquilibriumEvidence C) : ChemicalEquilibriumClosed C := by
  exact And.intro E.leChatelierPrincipleClosed (And.intro E.equilibriumCompositionClosed E.temperatureDependenceClosed)

end ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean
end HautevilleHouse