import ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ChemEngSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ChemEngAdmittedObject where
  space : ChemEngSpace
  closedSystem : Prop
  isReactionNetwork : Prop
  equilibriumModel : Type
  equilibriumTopology : TopologicalSpace equilibriumModel
  reachesEquilibrium : Prop
  conclusion : reachesEquilibrium

structure ChemEngEndgameState where
  object : ChemEngAdmittedObject

def ChemEngWitnessClosed (O : ChemEngAdmittedObject) : Prop :=
  O.reachesEquilibrium

end ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean
end HautevilleHouse