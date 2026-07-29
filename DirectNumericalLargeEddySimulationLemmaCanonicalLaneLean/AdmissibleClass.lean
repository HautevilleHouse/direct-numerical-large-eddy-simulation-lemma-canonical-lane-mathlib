import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean

structure AdmittedObject where
  flowField : Type
  filteredEquation : Prop
  closureModel : Prop
  resolvedScalesCaptured : Prop
  subgridModelValid : Prop
  conclusion : resolvedScalesCaptured ∧ subgridModelValid

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AdmittedWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def AdmittedWitnessClosed (O : AdmittedObject) : Prop :=
  O.resolvedScalesCaptured ∧ O.subgridModelValid

end DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean
end HautevilleHouse
