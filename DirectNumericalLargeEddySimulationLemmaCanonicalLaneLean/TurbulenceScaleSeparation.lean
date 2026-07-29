import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean

structure TurbulenceScaleSeparationPackage where
  integralLengthScale : Prop
  taylorMicroScale : Prop
  kolmogorovLengthScale : Prop
  scaleSeparationRatio : Prop
  resolutionRequirement : Prop

structure TurbulenceScaleSeparationEvidence (P : TurbulenceScaleSeparationPackage) where
  integralLengthScaleClosed : P.integralLengthScale
  taylorMicroScaleClosed : P.taylorMicroScale
  kolmogorovLengthScaleClosed : P.kolmogorovLengthScale
  scaleSeparationRatioClosed : P.scaleSeparationRatio
  resolutionRequirementClosed : P.resolutionRequirement

def TurbulenceScaleSeparationClosed (P : TurbulenceScaleSeparationPackage) : Prop :=
  P.integralLengthScale ∧ P.taylorMicroScale ∧ P.kolmogorovLengthScale ∧
  P.scaleSeparationRatio ∧ P.resolutionRequirement

theorem turbulence_scale_separation_closed_from_evidence
    (P : TurbulenceScaleSeparationPackage)
    (E : TurbulenceScaleSeparationEvidence P) :
    TurbulenceScaleSeparationClosed P := by
  exact And.intro E.integralLengthScaleClosed
    (And.intro E.taylorMicroScaleClosed
      (And.intro E.kolmogorovLengthScaleClosed
        (And.intro E.scaleSeparationRatioClosed
          E.resolutionRequirementClosed)))

end DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean
end HautevilleHouse