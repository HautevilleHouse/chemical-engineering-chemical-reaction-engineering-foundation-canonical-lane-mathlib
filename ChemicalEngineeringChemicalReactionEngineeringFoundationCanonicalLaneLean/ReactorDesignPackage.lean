import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean

structure ReactorDesignPackage where
  batchReactorModel : Prop
  continuousStirredTankModel : Prop
  plugFlowModel : Prop
  conversion : Prop
  selectivity : Prop
  yield : Prop
  energyBalance : Prop
  massBalance : Prop

structure ReactorDesignEvidence (R : ReactorDesignPackage) where
  batchReactorModelClosed : R.batchReactorModel
  continuousStirredTankModelClosed : R.continuousStirredTankModel
  plugFlowModelClosed : R.plugFlowModel
  conversionClosed : R.conversion
  selectivityClosed : R.selectivity
  yieldClosed : R.yield
  energyBalanceClosed : R.energyBalance
  massBalanceClosed : R.massBalance

def ReactorDesignClosed (R : ReactorDesignPackage) : Prop :=
  R.batchReactorModel ∧ R.continuousStirredTankModel ∧ R.plugFlowModel ∧
  R.conversion ∧ R.selectivity ∧ R.yield ∧ R.energyBalance ∧ R.massBalance

theorem reactor_design_closed_from_evidence (R : ReactorDesignPackage) (E : ReactorDesignEvidence R) :
    ReactorDesignClosed R := by
  exact And.intro E.batchReactorModelClosed
    (And.intro E.continuousStirredTankModelClosed
      (And.intro E.plugFlowModelClosed
        (And.intro E.conversionClosed
          (And.intro E.selectivityClosed
            (And.intro E.yieldClosed
              (And.intro E.energyBalanceClosed E.massBalanceClosed))))))

end ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean
end HautevilleHouse