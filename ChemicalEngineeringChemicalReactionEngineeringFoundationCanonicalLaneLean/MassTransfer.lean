import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean

structure MassTransferPackage where
  diffusionCoefficient : ℝ
  concentrationGradient : ℝ
  flux : ℝ
  ficksFirstLaw : flux = -diffusionCoefficient * concentrationGradient

structure MassTransferEvidence (M : MassTransferPackage) where
  diffusionCoefficientPositive : M.diffusionCoefficient > 0
  concentrationGradientFinite : M.concentrationGradient < ∞
  fluxFinite : M.flux < ∞
  ficksFirstLawClosed : M.ficksFirstLaw

def MassTransferClosed (M : MassTransferPackage) : Prop :=
  M.diffusionCoefficient > 0 ∧ M.concentrationGradient < ∞ ∧ M.flux < ∞ ∧ M.ficksFirstLaw

theorem mass_transfer_closed_from_evidence
    (M : MassTransferPackage) (E : MassTransferEvidence M) :
    MassTransferClosed M := by
  exact And.intro E.diffusionCoefficientPositive (And.intro E.concentrationGradientFinite (And.intro E.fluxFinite E.ficksFirstLawClosed))

end ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean
end HautevilleHouse
