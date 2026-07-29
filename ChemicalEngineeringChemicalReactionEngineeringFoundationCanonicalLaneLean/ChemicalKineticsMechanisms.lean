import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean

structure ChemicalKineticsMechanismsPackage where
  elementaryReactions : Prop
  rateLawsDerived : Prop
  activationEnergies : Prop
  reactionPathways : Prop
  steadyStateApproximation : Prop
  chainReactions : Prop

structure ChemicalKineticsMechanismsEvidence (C : ChemicalKineticsMechanismsPackage) where
  elementaryReactionsClosed : C.elementaryReactions
  rateLawsDerivedClosed : C.rateLawsDerived
  activationEnergiesClosed : C.activationEnergies
  reactionPathwaysClosed : C.reactionPathways
  steadyStateApproximationClosed : C.steadyStateApproximation
  chainReactionsClosed : C.chainReactions

def ChemicalKineticsMechanismsClosed (C : ChemicalKineticsMechanismsPackage) : Prop :=
  C.elementaryReactions ∧ C.rateLawsDerived ∧
  C.activationEnergies ∧ C.reactionPathways ∧
  C.steadyStateApproximation ∧ C.chainReactions

theorem chemical_kinetics_mechanisms_closed_from_evidence (C : ChemicalKineticsMechanismsPackage) (E : ChemicalKineticsMechanismsEvidence C) :
    ChemicalKineticsMechanismsClosed C := by
  exact And.intro E.elementaryReactionsClosed
    (And.intro E.rateLawsDerivedClosed
      (And.intro E.activationEnergiesClosed
        (And.intro E.reactionPathwaysClosed
          (And.intro E.steadyStateApproximationClosed
            E.chainReactionsClosed))))

end ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean
end HautevilleHouse