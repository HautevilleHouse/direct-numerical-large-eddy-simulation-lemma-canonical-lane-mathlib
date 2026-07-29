import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean

structure MomentumClosurePackage (A : AdmissibleClass) where
  filteredVelocity : Type u
  pressureGradient : Prop
  viscousTerm : Prop
  subgridStress : Prop
  closureRelation : Prop

structure MomentumClosureEvidence (A : AdmissibleClass) (M : MomentumClosurePackage A) where
  filteredVelocityClosed : M.filteredVelocity = M.filteredVelocity
  pressureGradientClosed : M.pressureGradient
  viscousTermClosed : M.viscousTerm
  subgridStressClosed : M.subgridStress
  closureRelationClosed : M.closureRelation

def MomentumClosureClosed (A : AdmissibleClass) (M : MomentumClosurePackage A) : Prop :=
  M.pressureGradient ∧ M.viscousTerm ∧ M.subgridStress ∧ M.closureRelation

theorem momentum_closure_closed_from_evidence (A : AdmissibleClass) (M : MomentumClosurePackage A) (E : MomentumClosureEvidence A M) :
    MomentumClosureClosed A M := by
  exact And.intro E.pressureGradientClosed (And.intro E.viscousTermClosed (And.intro E.subgridStressClosed E.closureRelationClosed))

end DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean
end HautevilleHouse