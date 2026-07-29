import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean

structure ReactorDesignPackage where
  batchReactor : Type u
  continuousStirredTank : Type v
  plugFlowReactor : Type w
  materialBalance : Prop
  energyBalance : Prop
  designEquation : Prop

structure ReactorDesignEvidence (R : ReactorDesignPackage) where
  materialBalanceClosed : R.materialBalance
  energyBalanceClosed : R.energyBalance
  designEquationClosed : R.designEquation

def ReactorDesignClosed (R : ReactorDesignPackage) : Prop :=
  R.materialBalance ∧ R.energyBalance ∧ R.designEquation

theorem reactor_design_closed_from_evidence (R : ReactorDesignPackage) (E : ReactorDesignEvidence R) : ReactorDesignClosed R := by
  exact And.intro E.materialBalanceClosed (And.intro E.energyBalanceClosed E.designEquationClosed)

end ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean
end HautevilleHouse