import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean

structure MolecularOrbitalTheoryPackage where
  hamiltonian : Type u
  orbitalBasis : Type v
  linearCombination : Prop
  secularEquation : Prop
  homoEnergy : Prop
  lumoEnergy : Prop
  overlapMatrix : Prop

structure MolecularOrbitalEvidence (M : MolecularOrbitalTheoryPackage) where
  linearCombinationClosed : M.linearCombination
  secularEquationClosed : M.secularEquation
  homoEnergyClosed : M.homoEnergy
  lumoEnergyClosed : M.lumoEnergy
  overlapMatrixClosed : M.overlapMatrix

def MolecularOrbitalClosed (M : MolecularOrbitalTheoryPackage) : Prop :=
  M.linearCombination ∧ M.secularEquation ∧ M.homoEnergy ∧ M.lumoEnergy ∧ M.overlapMatrix

theorem molecular_orbital_closed_from_evidence (M : MolecularOrbitalTheoryPackage) (E : MolecularOrbitalEvidence M) :
    MolecularOrbitalClosed M := by
  exact And.intro E.linearCombinationClosed
    (And.intro E.secularEquationClosed
      (And.intro E.homoEnergyClosed
        (And.intro E.lumoEnergyClosed E.overlapMatrixClosed)))

end ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean
end HautevilleHouse