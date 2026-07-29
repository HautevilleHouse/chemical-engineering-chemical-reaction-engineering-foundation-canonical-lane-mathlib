import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean

structure TransportPhenomenaPackage where
  momentumTransport : Prop
  energyTransport : Prop
  massTransport : Prop
  constitutiveRelations : Prop
  boundaryLayerModel : Prop
  dimensionlessNumbers : Prop

structure TransportPhenomenaEvidence (T : TransportPhenomenaPackage) where
  momentumTransportClosed : T.momentumTransport
  energyTransportClosed : T.energyTransport
  massTransportClosed : T.massTransport
  constitutiveRelationsClosed : T.constitutiveRelations
  boundaryLayerModelClosed : T.boundaryLayerModel
  dimensionlessNumbersClosed : T.dimensionlessNumbers

def TransportPhenomenaClosed (T : TransportPhenomenaPackage) : Prop :=
  T.momentumTransport ∧ T.energyTransport ∧
  T.massTransport ∧ T.constitutiveRelations ∧
  T.boundaryLayerModel ∧ T.dimensionlessNumbers

theorem transport_phenomena_closed_from_evidence (T : TransportPhenomenaPackage) (E : TransportPhenomenaEvidence T) :
    TransportPhenomenaClosed T := by
  exact And.intro E.momentumTransportClosed
    (And.intro E.energyTransportClosed
      (And.intro E.massTransportClosed
        (And.intro E.constitutiveRelationsClosed
          (And.intro E.boundaryLayerModelClosed
            E.dimensionlessNumbersClosed))))

end ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean
end HautevilleHouse