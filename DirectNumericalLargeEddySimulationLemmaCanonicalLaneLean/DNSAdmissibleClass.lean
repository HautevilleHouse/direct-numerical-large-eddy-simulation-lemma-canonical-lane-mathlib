import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean

structure DNSAdmittedObject where
  flow : Type
  filterWidth : Float
  resolvedScale : Prop
  subgridModel : Prop
  lesEquation : Prop
  dnsReference : Prop

structure AdmissibleClass where
  object : DNSAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.resolvedScale ∧ A.object.lesEquation) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean
end HautevilleHouse