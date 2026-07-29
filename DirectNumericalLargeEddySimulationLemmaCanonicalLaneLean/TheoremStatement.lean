import HautevilleHouse.DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean

structure LESLemmaStatement where
  filteredNavierStokesValid : Prop
  closureModelAccurate : Prop
  resolvedScalesConverge : Prop
  subgridModelErrorBounded : Prop
  statement : resolvedScalesConverge ∧ subgridModelErrorBounded

-- Classical boundary remains open: full analytical proof of LES lemma not formalized.
def classicalSourceBoundaryCarried : Prop :=
  True

end DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean
end HautevilleHouse
