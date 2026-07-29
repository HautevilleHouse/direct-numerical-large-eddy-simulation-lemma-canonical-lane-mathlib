import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean.LESEquation

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean

structure NumericalSchemePackage {N : NavierStokesFilteredPackage} {S : SubgridScaleModelPackage} {L : LESEquationPackage S} where
  spatialDiscretization : Type u
  timeIntegration : Type v
  stability : Prop
  accuracy : Prop
  convergence : Prop

structure NumericalSchemeEvidence {N : NavierStokesFilteredPackage} {S : SubgridScaleModelPackage} {L : LESEquationPackage S} (M : NumericalSchemePackage L) where
  stabilityClosed : M.stability
  accuracyClosed : M.accuracy
  convergenceClosed : M.convergence

def NumericalSchemeClosed {N : NavierStokesFilteredPackage} {S : SubgridScaleModelPackage} {L : LESEquationPackage S} (M : NumericalSchemePackage L) : Prop :=
  M.stability ∧ M.accuracy ∧ M.convergence

theorem numerical_scheme_closed_from_evidence {N : NavierStokesFilteredPackage} {S : SubgridScaleModelPackage} {L : LESEquationPackage S} (M : NumericalSchemePackage L) (E : NumericalSchemeEvidence M) : NumericalSchemeClosed M := by
  exact And.intro E.stabilityClosed (And.intro E.accuracyClosed E.convergenceClosed)

end DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean
end HautevilleHouse
