import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean

structure TransportPhenomenaPackage where
  momentumTransfer : Prop
  heatTransfer : Prop
  massTransfer : Prop
  navierStokes : Prop
  fourierLaw : Prop
  fickLaw : Prop
  boundaryLayer : Prop
  dimensionlessNumbers : Prop

structure TransportPhenomenaEvidence (T : TransportPhenomenaPackage) where
  momentumTransferClosed : T.momentumTransfer
  heatTransferClosed : T.heatTransfer
  massTransferClosed : T.massTransfer
  navierStokesClosed : T.navierStokes
  fourierLawClosed : T.fourierLaw
  fickLawClosed : T.fickLaw
  boundaryLayerClosed : T.boundaryLayer
  dimensionlessNumbersClosed : T.dimensionlessNumbers

def TransportPhenomenaClosed (T : TransportPhenomenaPackage) : Prop :=
  T.momentumTransfer ∧ T.heatTransfer ∧ T.massTransfer ∧
  T.navierStokes ∧ T.fourierLaw ∧ T.fickLaw ∧ T.boundaryLayer ∧ T.dimensionlessNumbers

theorem transport_phenomena_closed_from_evidence (T : TransportPhenomenaPackage) (E : TransportPhenomenaEvidence T) :
    TransportPhenomenaClosed T := by
  exact And.intro E.momentumTransferClosed
    (And.intro E.heatTransferClosed
      (And.intro E.massTransferClosed
        (And.intro E.navierStokesClosed
          (And.intro E.fourierLawClosed
            (And.intro E.fickLawClosed
              (And.intro E.boundaryLayerClosed E.dimensionlessNumbersClosed))))))

end ChemicalEngineeringChemicalReactionEngineeringFoundationCanonicalLaneLean
end HautevilleHouse