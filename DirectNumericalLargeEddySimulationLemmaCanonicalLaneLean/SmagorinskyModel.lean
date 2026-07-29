import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean

structure SmagorinskyModelPackage where
  eddyViscosityAssumption : Prop
  smagorinskyConstant : Prop
  filteredStrainRateTensor : Prop
  subgridDissipation : Prop
  modelConsistency : Prop

structure SmagorinskyModelEvidence (S : SmagorinskyModelPackage) where
  eddyViscosityAssumptionClosed : S.eddyViscosityAssumption
  smagorinskyConstantClosed : S.smagorinskyConstant
  filteredStrainRateTensorClosed : S.filteredStrainRateTensor
  subgridDissipationClosed : S.subgridDissipation
  modelConsistencyClosed : S.modelConsistency

def SmagorinskyModelClosed (S : SmagorinskyModelPackage) : Prop :=
  S.eddyViscosityAssumption ∧ S.smagorinskyConstant ∧
  S.filteredStrainRateTensor ∧ S.subgridDissipation ∧ S.modelConsistency

theorem smagorinsky_model_closed_from_evidence
    (S : SmagorinskyModelPackage)
    (E : SmagorinskyModelEvidence S) :
    SmagorinskyModelClosed S := by
  exact And.intro E.eddyViscosityAssumptionClosed
    (And.intro E.smagorinskyConstantClosed
      (And.intro E.filteredStrainRateTensorClosed
        (And.intro E.subgridDissipationClosed
          E.modelConsistencyClosed)))

end DirectNumericalLargeEddySimulationLemmaCanonicalLaneLean
end HautevilleHouse