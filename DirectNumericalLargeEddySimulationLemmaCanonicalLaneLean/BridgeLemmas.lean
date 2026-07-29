import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.resolvedScale ∧ A.object.lesEquation

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.dnsReference

end DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean
end HautevilleHouse