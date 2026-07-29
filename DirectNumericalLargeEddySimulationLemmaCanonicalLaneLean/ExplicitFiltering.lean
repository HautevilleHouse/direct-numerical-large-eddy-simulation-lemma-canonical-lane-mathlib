import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean

structure ExplicitFilterPackage where
  filterKernel : Type u
  cutoffWavenumber : ℝ
  filterOperation : Type v
  commutationError : Prop
  locality : Prop

structure ExplicitFilterEvidence (F : ExplicitFilterPackage) where
  commutationErrorClosed : F.commutationError
  localityClosed : F.locality

def ExplicitFilterClosed (F : ExplicitFilterPackage) : Prop :=
  F.commutationError ∧ F.locality

theorem explicit_filter_closed_from_evidence (F : ExplicitFilterPackage) (E : ExplicitFilterEvidence F) : ExplicitFilterClosed F := by
  exact And.intro E.commutationErrorClosed E.localityClosed

end DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean
end HautevilleHouse
