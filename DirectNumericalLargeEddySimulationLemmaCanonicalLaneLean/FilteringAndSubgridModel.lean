import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean

structure FilteringPackage (A : AdmissibleClass) where
  filterFunction : Float → Float
  cutoffScale : Float
  filteredEquation : Prop
  commutationError : Prop

structure SubgridModelPackage (A : AdmissibleClass) where
  eddyViscosity : Float
  smagorinskyConstant : Float
  modelClosure : Prop
  dissipationConsistency : Prop

structure FilteringEvidence (A : AdmissibleClass) (F : FilteringPackage A) where
  filteredEquationClosed : F.filteredEquation
  commutationErrorClosed : F.commutationError

structure SubgridModelEvidence (A : AdmissibleClass) (S : SubgridModelPackage A) where
  modelClosureClosed : S.modelClosure
  dissipationConsistencyClosed : S.dissipationConsistency

def FilteringClosed (A : AdmissibleClass) (F : FilteringPackage A) : Prop :=
  F.filteredEquation ∧ F.commutationError

def SubgridModelClosed (A : AdmissibleClass) (S : SubgridModelPackage A) : Prop :=
  S.modelClosure ∧ S.dissipationConsistency

theorem filtering_closed_from_evidence (A : AdmissibleClass) (F : FilteringPackage A) (E : FilteringEvidence A F) :
    FilteringClosed A F := by
  exact And.intro E.filteredEquationClosed E.commutationErrorClosed

theorem subgrid_model_closed_from_evidence (A : AdmissibleClass) (S : SubgridModelPackage A) (E : SubgridModelEvidence A S) :
    SubgridModelClosed A S := by
  exact And.intro E.modelClosureClosed E.dissipationConsistencyClosed

end DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean
end HautevilleHouse