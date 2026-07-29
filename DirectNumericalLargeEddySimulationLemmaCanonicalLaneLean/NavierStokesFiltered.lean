import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean

structure NavierStokesFilteredPackage where
  filterWidth : ℝ
  filteredVelocity : Type u
  filteredPressure : Type v
  residualStressTensor : Type w
  filteredContinuity : Prop
  filteredMomentum : Prop
  filterCommutesWithDerivatives : Prop

structure NavierStokesFilteredEvidence (N : NavierStokesFilteredPackage) where
  filteredContinuityClosed : N.filteredContinuity
  filteredMomentumClosed : N.filteredMomentum
  filterCommutesWithDerivativesClosed : N.filterCommutesWithDerivatives

def NavierStokesFilteredClosed (N : NavierStokesFilteredPackage) : Prop :=
  N.filteredContinuity ∧ N.filteredMomentum ∧ N.filterCommutesWithDerivatives

theorem navier_stokes_filtered_closed_from_evidence (N : NavierStokesFilteredPackage) (E : NavierStokesFilteredEvidence N) : NavierStokesFilteredClosed N := by
  exact And.intro E.filteredContinuityClosed (And.intro E.filteredMomentumClosed E.filterCommutesWithDerivativesClosed)

end DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean
end HautevilleHouse
