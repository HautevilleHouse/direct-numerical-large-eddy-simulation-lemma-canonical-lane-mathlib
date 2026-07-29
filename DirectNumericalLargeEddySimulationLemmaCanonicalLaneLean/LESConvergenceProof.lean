import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean

structure LESConvergencePackage where
  filteredSolution : Type u
  directSolution : Type v
  filterWidthApproachesZero : Prop
  strongConvergenceInNorm : Prop
  errorEstimate : ℝ

structure LESConvergenceEvidence (L : LESConvergencePackage) where
  filterWidthApproachesZeroClosed : L.filterWidthApproachesZero
  strongConvergenceInNormClosed : L.strongConvergenceInNorm

def LESConvergenceClosed (L : LESConvergencePackage) : Prop :=
  L.filterWidthApproachesZero ∧ L.strongConvergenceInNorm

theorem les_convergence_closed_from_evidence (L : LESConvergencePackage) (E : LESConvergenceEvidence L) :
    LESConvergenceClosed L := by
  exact And.intro E.filterWidthApproachesZeroClosed E.strongConvergenceInNormClosed

end DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean
end HautevilleHouse