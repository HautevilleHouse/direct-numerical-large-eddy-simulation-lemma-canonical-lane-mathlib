import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean

structure LargeEddySimulationLemma (V : FilteredVelocityField) (M : SubgridScaleModel V) where
  filteredEquationClosed : FilteredNavierStokesClosed V (default)
  subgridModelClosed : SubgridScaleModelClosed V M
  energyCascadeClosed : EnergyCascadeClosed (default) (default)
  resolutionRequirement : ℕ → Prop
  commutationError : Prop

def LargeEddySimulationLemmaClosed (V : FilteredVelocityField) (M : SubgridScaleModel V)
    (L : LargeEddySimulationLemma V M) : Prop :=
  L.filteredEquationClosed ∧ L.subgridModelClosed ∧ L.energyCascadeClosed ∧ L.commutationError

theorem large_eddy_simulation_lemma_closed (V : FilteredVelocityField) (M : SubgridScaleModel V)
    (L : LargeEddySimulationLemma V M) : LargeEddySimulationLemmaClosed V M L := by
  exact And.intro L.filteredEquationClosed
    (And.intro L.subgridModelClosed (And.intro L.energyCascadeClosed L.commutationError))

end DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean
end HautevilleHouse