import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean

structure CatalysisModel where
  catalystType : Type
  reactionMechanism : Type
  rateEnhancement : Prop
  selectivity : Prop

structure CatalysisEvidence (C : CatalysisModel) where
  rateEnhancementClosed : C.rateEnhancement
  selectivityClosed : C.selectivity

def CatalysisClosed (C : CatalysisModel) : Prop :=
  C.rateEnhancement ∧ C.selectivity

theorem catalysis_closed_from_evidence (C : CatalysisModel) (E : CatalysisEvidence C) :
    CatalysisClosed C := by
  exact And.intro E.rateEnhancementClosed E.selectivityClosed

end ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean
end HautevilleHouse