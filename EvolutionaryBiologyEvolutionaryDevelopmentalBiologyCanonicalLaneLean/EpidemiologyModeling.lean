import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean

structure EpidemiologyModelingPackage where
  compartmentModel : Type
  transmissionRate : Prop
  recoveryRate : Prop
  basicReproductionNumber : Prop
  epidemicThreshold : Prop

structure EpidemiologyModelingEvidence (E : EpidemiologyModelingPackage) where
  compartmentModelClosed : E.compartmentModel
  transmissionRateClosed : E.transmissionRate
  recoveryRateClosed : E.recoveryRate
  basicReproductionNumberClosed : E.basicReproductionNumber
  epidemicThresholdClosed : E.epidemicThreshold

def EpidemiologyModelingClosed (E : EpidemiologyModelingPackage) : Prop :=
  E.compartmentModel ∧ E.transmissionRate ∧ E.recoveryRate ∧
  E.basicReproductionNumber ∧ E.epidemicThreshold

theorem epidemiology_modeling_closed_from_evidence
    (E : EpidemiologyModelingPackage) (Ev : EpidemiologyModelingEvidence E) :
    EpidemiologyModelingClosed E := by
  exact And.intro Ev.compartmentModelClosed
    (And.intro Ev.transmissionRateClosed
      (And.intro Ev.recoveryRateClosed
        (And.intro Ev.basicReproductionNumberClosed Ev.epidemicThresholdClosed)))

end EvolutionaryBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean
end HautevilleHouse
