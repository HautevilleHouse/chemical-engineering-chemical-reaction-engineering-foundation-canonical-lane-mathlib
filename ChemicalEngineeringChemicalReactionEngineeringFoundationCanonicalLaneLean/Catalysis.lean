import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean

structure CatalysisPackage where
  catalystSurface : Type u
  adsorptionIsotherm : Type v
  langmuirHinshelwoodKinetics : Prop
  turnoverFrequency : Prop
  deactivationMechanism : Prop

structure CatalysisEvidence (C : CatalysisPackage) where
  langmuirHinshelwoodKineticsClosed : C.langmuirHinshelwoodKinetics
  turnoverFrequencyClosed : C.turnoverFrequency
  deactivationMechanismClosed : C.deactivationMechanism

def CatalysisClosed (C : CatalysisPackage) : Prop :=
  C.langmuirHinshelwoodKinetics ∧ C.turnoverFrequency ∧ C.deactivationMechanism

theorem catalysis_closed_from_evidence (C : CatalysisPackage) (E : CatalysisEvidence C) : CatalysisClosed C := by
  exact And.intro E.langmuirHinshelwoodKineticsClosed (And.intro E.turnoverFrequencyClosed E.deactivationMechanismClosed)

end ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean
end HautevilleHouse