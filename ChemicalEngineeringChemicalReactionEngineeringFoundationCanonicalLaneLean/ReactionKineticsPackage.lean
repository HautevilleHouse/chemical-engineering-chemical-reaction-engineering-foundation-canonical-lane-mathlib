import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean

structure ReactionKineticsPackage where
  rateConstant : Type u
  activationEnergy : Type v
  temperature : Type w
  arrheniusPreExponential : Prop
  rateExpression : Prop
  concentrationDependence : Prop
  temperatureDependence : Prop

structure ReactionKineticsEvidence (K : ReactionKineticsPackage) where
  arrheniusPreExponentialClosed : K.arrheniusPreExponential
  rateExpressionClosed : K.rateExpression
  concentrationDependenceClosed : K.concentrationDependence
  temperatureDependenceClosed : K.temperatureDependence

def ReactionKineticsClosed (K : ReactionKineticsPackage) : Prop :=
  K.arrheniusPreExponential ∧ K.rateExpression ∧ K.concentrationDependence ∧ K.temperatureDependence

theorem reaction_kinetics_closed_from_evidence (K : ReactionKineticsPackage) (E : ReactionKineticsEvidence K) :
    ReactionKineticsClosed K := by
  exact And.intro E.arrheniusPreExponentialClosed
    (And.intro E.rateExpressionClosed
      (And.intro E.concentrationDependenceClosed E.temperatureDependenceClosed))

end ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean
end HautevilleHouse