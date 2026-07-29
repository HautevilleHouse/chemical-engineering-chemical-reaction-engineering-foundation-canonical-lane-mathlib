import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean

structure CatalysisAndReactorDesignPackage where
  catalystActivity : Prop
  selectivity : Prop
  reactorTypeModeled : Prop
  massAndHeatTransfer : Prop
  residenceTimeDistribution : Prop
  scaleUpCriteria : Prop

structure CatalysisAndReactorDesignEvidence (C : CatalysisAndReactorDesignPackage) where
  catalystActivityClosed : C.catalystActivity
  selectivityClosed : C.selectivity
  reactorTypeModeledClosed : C.reactorTypeModeled
  massAndHeatTransferClosed : C.massAndHeatTransfer
  residenceTimeDistributionClosed : C.residenceTimeDistribution
  scaleUpCriteriaClosed : C.scaleUpCriteria

def CatalysisAndReactorDesignClosed (C : CatalysisAndReactorDesignPackage) : Prop :=
  C.catalystActivity ∧ C.selectivity ∧
  C.reactorTypeModeled ∧ C.massAndHeatTransfer ∧
  C.residenceTimeDistribution ∧ C.scaleUpCriteria

theorem catalysis_and_reactor_design_closed_from_evidence (C : CatalysisAndReactorDesignPackage) (E : CatalysisAndReactorDesignEvidence C) :
    CatalysisAndReactorDesignClosed C := by
  exact And.intro E.catalystActivityClosed
    (And.intro E.selectivityClosed
      (And.intro E.reactorTypeModeledClosed
        (And.intro E.massAndHeatTransferClosed
          (And.intro E.residenceTimeDistributionClosed
            E.scaleUpCriteriaClosed))))

end ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean
end HautevilleHouse