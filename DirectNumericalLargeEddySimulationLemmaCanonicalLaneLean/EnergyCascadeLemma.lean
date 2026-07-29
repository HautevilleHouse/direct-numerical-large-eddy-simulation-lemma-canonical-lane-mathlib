import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean

structure EnergySpectrum where
  resolvedBand : ℝ → ℝ
  subgridBand : ℝ → ℝ
  injectionRange : ℝ
  dissipationRange : ℝ
  inertialSubrange : Prop

structure EnergyCascade (E : EnergySpectrum) where
  fluxThroughWavenumber : ℝ → ℝ
  dissipationRate : ℝ
  k41Scaling : Prop
  kolmogorovConstant : ℝ

structure EnergyCascadeEvidence (E : EnergySpectrum) (C : EnergyCascade E) where
  fluxThroughWavenumberPositive : ∀ k, C.fluxThroughWavenumber k ≥ 0
  dissipationRateFinite : C.dissipationRate < ∞
  k41ScalingClosed : C.k41Scaling

def EnergyCascadeClosed (E : EnergySpectrum) (C : EnergyCascade E) : Prop :=
  (∀ k, C.fluxThroughWavenumber k ≥ 0) ∧ C.dissipationRate < ∞ ∧ C.k41Scaling

theorem energy_cascade_closed_from_evidence
    (E : EnergySpectrum) (C : EnergyCascade E) (Ev : EnergyCascadeEvidence E C) :
    EnergyCascadeClosed E C := by
  exact And.intro Ev.fluxThroughWavenumberPositive
    (And.intro Ev.dissipationRateFinite Ev.k41ScalingClosed)

end DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean
end HautevilleHouse