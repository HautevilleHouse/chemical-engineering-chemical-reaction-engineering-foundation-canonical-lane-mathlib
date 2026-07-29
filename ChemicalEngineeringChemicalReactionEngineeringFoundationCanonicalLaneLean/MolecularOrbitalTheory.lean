import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean

structure MolecularOrbitalTheoryPackage where
  orbitalEnergyLevels : Prop
  wavefunctionsConstructed : Prop
  overlapIntegrals : Prop
  bondOrder : Prop
  hybridizationModel : Prop
  frontierOrbitalGap : Prop

structure MolecularOrbitalTheoryEvidence (M : MolecularOrbitalTheoryPackage) where
  orbitalEnergyLevelsClosed : M.orbitalEnergyLevels
  wavefunctionsConstructedClosed : M.wavefunctionsConstructed
  overlapIntegralsClosed : M.overlapIntegrals
  bondOrderClosed : M.bondOrder
  hybridizationModelClosed : M.hybridizationModel
  frontierOrbitalGapClosed : M.frontierOrbitalGap

def MolecularOrbitalTheoryClosed (M : MolecularOrbitalTheoryPackage) : Prop :=
  M.orbitalEnergyLevels ∧ M.wavefunctionsConstructed ∧
  M.overlapIntegrals ∧ M.bondOrder ∧
  M.hybridizationModel ∧ M.frontierOrbitalGap

theorem molecular_orbital_theory_closed_from_evidence (M : MolecularOrbitalTheoryPackage) (E : MolecularOrbitalTheoryEvidence M) :
    MolecularOrbitalTheoryClosed M := by
  exact And.intro E.orbitalEnergyLevelsClosed
    (And.intro E.wavefunctionsConstructedClosed
      (And.intro E.overlapIntegralsClosed
        (And.intro E.bondOrderClosed
          (And.intro E.hybridizationModelClosed
            E.frontierOrbitalGapClosed))))

end ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean
end HautevilleHouse