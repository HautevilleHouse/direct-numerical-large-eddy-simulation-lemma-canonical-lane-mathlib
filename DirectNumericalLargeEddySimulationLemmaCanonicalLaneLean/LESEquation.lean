import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean.NavierStokesFiltered
import HautevilleHouse.DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean.SubgridScaleModel

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean

structure LESEquationPackage {N : NavierStokesFilteredPackage} (S : SubgridScaleModelPackage) where
  filteredNSClosed : NavierStokesFilteredClosed N
  sgsModelClosed : SubgridScaleModelClosed S
  equationsClosed : Prop
  wellPosedness : Prop

structure LESEquationEvidence {N : NavierStokesFilteredPackage} {S : SubgridScaleModelPackage} (L : LESEquationPackage S) where
  equationsClosedClosed : L.equationsClosed
  wellPosednessClosed : L.wellPosedness

def LESEquationClosed {N : NavierStokesFilteredPackage} {S : SubgridScaleModelPackage} (L : LESEquationPackage S) : Prop :=
  L.equationsClosed ∧ L.wellPosedness

theorem les_equation_closed_from_evidence {N : NavierStokesFilteredPackage} {S : SubgridScaleModelPackage} (L : LESEquationPackage S) (E : LESEquationEvidence L) : LESEquationClosed L := by
  exact And.intro E.equationsClosedClosed E.wellPosednessClosed

end DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean
end HautevilleHouse
