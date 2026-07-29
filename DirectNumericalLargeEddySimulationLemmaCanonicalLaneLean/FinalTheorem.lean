import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean

open HautevilleHouse.DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean

def ConstrainedLESClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_les_endgame (A : AdmissibleClass) :
    ConstrainedLESClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean
end HautevilleHouse