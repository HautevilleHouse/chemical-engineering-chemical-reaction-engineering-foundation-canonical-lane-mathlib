import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean

structure ThermodynamicsPackage where
  gibbsFreeEnergy : Type u
  enthalpy : Type v
  entropy : Type w
  thermodynamicConsistency : Prop
  equilibriumCondition : Prop
  spontaneityCriterion : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  thermodynamicConsistencyClosed : T.thermodynamicConsistency
  equilibriumConditionClosed : T.equilibriumCondition
  spontaneityCriterionClosed : T.spontaneityCriterion

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.thermodynamicConsistency ∧ T.equilibriumCondition ∧ T.spontaneityCriterion

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage) (E : ThermodynamicsEvidence T) : ThermodynamicsClosed T := by
  exact And.intro E.thermodynamicConsistencyClosed (And.intro E.equilibriumConditionClosed E.spontaneityCriterionClosed)

end ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean
end HautevilleHouse