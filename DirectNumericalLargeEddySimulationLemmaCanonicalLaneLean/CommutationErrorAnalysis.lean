import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean

structure FilterCommutationError where
  filterNonlinearitySwap : Prop
  filterDerivativeSwap : Prop
  leadingOrderTerm : ℝ
  boundednessEstimate : Prop

structure CommutationErrorEvidence (E : FilterCommutationError) where
  filterNonlinearitySwapClosed : E.filterNonlinearitySwap
  filterDerivativeSwapClosed : E.filterDerivativeSwap
  boundednessEstimateClosed : E.boundednessEstimate

def CommutationErrorClosed (E : FilterCommutationError) : Prop :=
  E.filterNonlinearitySwap ∧ E.filterDerivativeSwap ∧ E.boundednessEstimate

theorem commutation_error_closed_from_evidence
    (E : FilterCommutationError) (Ev : CommutationErrorEvidence E) :
    CommutationErrorClosed E := by
  exact And.intro Ev.filterNonlinearitySwapClosed
    (And.intro Ev.filterDerivativeSwapClosed Ev.boundednessEstimateClosed)

end DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean
end HautevilleHouse