import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean

structure ResolutionCriterionPackage where
  nyquistFrequency : ℝ
  kolmogorovScale : ℝ
  gridSpacing : ℝ
  criterionSatisfied : Prop
  dissipationCapture : Prop

default nyquistFrequency := 0.0

structure ResolutionCriterionEvidence (R : ResolutionCriterionPackage) where
  criterionSatisfiedClosed : R.criterionSatisfied
  dissipationCaptureClosed : R.dissipationCapture

def ResolutionCriterionClosed (R : ResolutionCriterionPackage) : Prop :=
  R.criterionSatisfied ∧ R.dissipationCapture

theorem resolution_criterion_closed_from_evidence (R : ResolutionCriterionPackage) (E : ResolutionCriterionEvidence R) : ResolutionCriterionClosed R := by
  exact And.intro E.criterionSatisfiedClosed E.dissipationCaptureClosed

end DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean
end HautevilleHouse
