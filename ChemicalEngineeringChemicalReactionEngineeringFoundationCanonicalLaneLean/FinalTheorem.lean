import ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean

def ConstrainedChemEngClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_chem_eng_endgame (A : AdmissibleClass) :
    ConstrainedChemEngClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean
end HautevilleHouse