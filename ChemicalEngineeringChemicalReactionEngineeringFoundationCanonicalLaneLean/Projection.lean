import ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def chemEngProjection : Projection ChemEngEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem chem_eng_projection_idempotent (x : ChemEngEndgameState) :
    chemEngProjection.toFun (chemEngProjection.toFun x) = chemEngProjection.toFun x := by
  exact chemEngProjection.idempotent x

end ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean
end HautevilleHouse