import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean

structure FilteredVelocityField where
  resolvedScaleComponent : Type u
  subgridComponent : Type v
  filterKernel : FilteredVelocityField → FilteredVelocityField → Prop
  homogeneityCondition : Prop
  spatialRegularity : Prop

structure FilteredNavierStokesOperator (V : FilteredVelocityField) where
  filteredAdvection : Type
  filteredDiffusion : Type
  filteredPressureGradient : Type
  subgridStressTensor : Type
  filteredEquationSatisfied : Prop
  closureModelRequired : Prop

structure FilteredNavierStokesEvidence (V : FilteredVelocityField) (Op : FilteredNavierStokesOperator V) where
  filteredAdvectionClosed : Op.filteredAdvection
  filteredDiffusionClosed : Op.filteredDiffusion
  filteredPressureGradientClosed : Op.filteredPressureGradient
  subgridStressTensorClosed : Op.subgridStressTensor
  filteredEquationSatisfiedClosed : Op.filteredEquationSatisfied

def FilteredNavierStokesClosed (V : FilteredVelocityField) (Op : FilteredNavierStokesOperator V) : Prop :=
  Op.filteredEquationSatisfied ∧ Op.closureModelRequired

theorem filtered_navier_stokes_closed_from_evidence
    (V : FilteredVelocityField) (Op : FilteredNavierStokesOperator V)
    (E : FilteredNavierStokesEvidence V Op) : FilteredNavierStokesClosed V Op := by
  exact And.intro E.filteredEquationSatisfiedClosed E.closureModelRequired

end DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean
end HautevilleHouse