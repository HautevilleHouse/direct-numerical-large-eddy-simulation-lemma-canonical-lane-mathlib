import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean

structure SubgridScaleModelPackage where
  sgsStressTensor : Type u
  eddyViscosity : Type v
  smagorinskyConstant : ℝ
  dynamicProcedure : Prop
  stressStrainRelation : Prop

default smagorinskyConstant := 0.17

structure SubgridScaleModelEvidence (S : SubgridScaleModelPackage) where
  dynamicProcedureClosed : S.dynamicProcedure
  stressStrainRelationClosed : S.stressStrainRelation

def SubgridScaleModelClosed (S : SubgridScaleModelPackage) : Prop :=
  S.dynamicProcedure ∧ S.stressStrainRelation

theorem subgrid_scale_model_closed_from_evidence (S : SubgridScaleModelPackage) (E : SubgridScaleModelEvidence S) : SubgridScaleModelClosed S := by
  exact And.intro E.dynamicProcedureClosed E.stressStrainRelationClosed

end DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean
end HautevilleHouse
