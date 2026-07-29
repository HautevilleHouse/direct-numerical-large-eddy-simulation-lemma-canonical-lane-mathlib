import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean

structure GermDifferentialPackage where
  germEquivalence : Type
  differentialStructure : Type
  leibnizRule : Prop
  chainRule : Prop
  localityUnderFilter : Prop

structure GermDifferentialEvidence (G : GermDifferentialPackage) where
  leibnizRuleClosed : G.leibnizRule
  chainRuleClosed : G.chainRule
  localityUnderFilterClosed : G.localityUnderFilter

def GermDifferentialClosed (G : GermDifferentialPackage) : Prop :=
  G.leibnizRule ∧ G.chainRule ∧ G.localityUnderFilter

theorem germ_differential_closed_from_evidence (G : GermDifferentialPackage) (E : GermDifferentialEvidence G) : GermDifferentialClosed G := by
  exact And.intro E.leibnizRuleClosed (And.intro E.chainRuleClosed E.localityUnderFilterClosed)

end DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean
end HautevilleHouse
