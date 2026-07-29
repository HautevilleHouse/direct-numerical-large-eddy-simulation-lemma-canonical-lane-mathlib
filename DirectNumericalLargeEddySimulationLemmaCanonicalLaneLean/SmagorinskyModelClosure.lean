import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean

structure SmagorinskyModelPackage where
  eddyViscosity : Type
  mixingLength : Type
  dissipationConsistency : Prop
  scaleSimilarity : Prop
  wallDamping : Prop

structure SmagorinskyModelEvidence (S : SmagorinskyModelPackage) where
  dissipationConsistencyClosed : S.dissipationConsistency
  scaleSimilarityClosed : S.scaleSimilarity
  wallDampingClosed : S.wallDamping

def SmagorinskyModelClosed (S : SmagorinskyModelPackage) : Prop :=
  S.dissipationConsistency ∧ S.scaleSimilarity ∧ S.wallDamping

theorem smagorinsky_model_closed_from_evidence (S : SmagorinskyModelPackage) (E : SmagorinskyModelEvidence S) :
    SmagorinskyModelClosed S := by
  exact And.intro E.dissipationConsistencyClosed (And.intro E.scaleSimilarityClosed E.wallDampingClosed)

end DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean
end HautevilleHouse
