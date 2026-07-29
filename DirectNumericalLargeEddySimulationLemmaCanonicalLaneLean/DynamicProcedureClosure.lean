import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean

structure DynamicProcedurePackage where
  testFilter : Type
  germaneIdentity : Type
  LillyIdentity : Prop
  coefficientBoundedness : Prop
  realizabilityCondition : Prop

structure DynamicProcedureEvidence (D : DynamicProcedurePackage) where
  LillyIdentityClosed : D.LillyIdentity
  coefficientBoundednessClosed : D.coefficientBoundedness
  realizabilityConditionClosed : D.realizabilityCondition

def DynamicProcedureClosed (D : DynamicProcedurePackage) : Prop :=
  D.LillyIdentity ∧ D.coefficientBoundedness ∧ D.realizabilityCondition

theorem dynamic_procedure_closed_from_evidence (D : DynamicProcedurePackage) (E : DynamicProcedureEvidence D) : DynamicProcedureClosed D := by
  exact And.intro E.LillyIdentityClosed (And.intro E.coefficientBoundednessClosed E.realizabilityConditionClosed)

end DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean
end HautevilleHouse
