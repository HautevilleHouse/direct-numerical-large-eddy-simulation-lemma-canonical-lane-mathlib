import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean

structure FilteredNavierStokesPackage where
  spatialFilter : Prop
  filteredContinuity : Prop
  filteredMomentum : Prop
  subgridStressTensor : Prop
  closureModel : Prop

structure FilteredNavierStokesEvidence (F : FilteredNavierStokesPackage) where
  spatialFilterClosed : F.spatialFilter
  filteredContinuityClosed : F.filteredContinuity
  filteredMomentumClosed : F.filteredMomentum
  subgridStressTensorClosed : F.subgridStressTensor
  closureModelClosed : F.closureModel

def FilteredNavierStokesClosed (F : FilteredNavierStokesPackage) : Prop :=
  F.spatialFilter ∧ F.filteredContinuity ∧ F.filteredMomentum ∧
  F.subgridStressTensor ∧ F.closureModel

theorem filtered_navier_stokes_closed_from_evidence
    (F : FilteredNavierStokesPackage)
    (E : FilteredNavierStokesEvidence F) :
    FilteredNavierStokesClosed F := by
  exact And.intro E.spatialFilterClosed
    (And.intro E.filteredContinuityClosed
      (And.intro E.filteredMomentumClosed
        (And.intro E.subgridStressTensorClosed
          E.closureModelClosed)))

end DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean
end HautevilleHouse