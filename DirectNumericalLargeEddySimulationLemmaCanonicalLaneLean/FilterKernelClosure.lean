import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean

structure FilterKernelPackage where
  kernelFunction : Type
  cutoffScale : Type
  commutationWithDerivative : Prop
  localizationProperty : Prop
  positivityPreserving : Prop

structure FilterKernelEvidence (F : FilterKernelPackage) where
  commutationWithDerivativeClosed : F.commutationWithDerivative
  localizationPropertyClosed : F.localizationProperty
  positivityPreservingClosed : F.positivityPreserving

def FilterKernelClosed (F : FilterKernelPackage) : Prop :=
  F.commutationWithDerivative ∧ F.localizationProperty ∧ F.positivityPreserving

theorem filter_kernel_closed_from_evidence (F : FilterKernelPackage) (E : FilterKernelEvidence F) : FilterKernelClosed F := by
  exact And.intro E.communicationWithDerivativeClosed
    (And.intro E.localizationPropertyClosed E.positivityPreservingClosed)

end DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean
end HautevilleHouse
