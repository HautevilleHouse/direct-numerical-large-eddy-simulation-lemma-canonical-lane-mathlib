import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean

structure ResolvedSubgridDecompositionPackage where
  resolvedField : Type
  subgridField : Type
  decompositionOrthogonality : Prop
  energyConservation : Prop
  interactionTerms : Prop

structure ResolvedSubgridDecompositionEvidence (R : ResolvedSubgridDecompositionPackage) where
  decompositionOrthogonalityClosed : R.decompositionOrthogonality
  energyConservationClosed : R.energyConservation
  interactionTermsClosed : R.interactionTerms

def ResolvedSubgridDecompositionClosed (R : ResolvedSubgridDecompositionPackage) : Prop :=
  R.decompositionOrthogonality ∧ R.energyConservation ∧ R.interactionTerms

theorem resolved_subgrid_decomposition_closed_from_evidence
    (R : ResolvedSubgridDecompositionPackage) (E : ResolvedSubgridDecompositionEvidence R) :
    ResolvedSubgridDecompositionClosed R := by
  exact And.intro E.decompositionOrthogonalityClosed (And.intro E.energyConservationClosed E.interactionTermsClosed)

end DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean
end HautevilleHouse
