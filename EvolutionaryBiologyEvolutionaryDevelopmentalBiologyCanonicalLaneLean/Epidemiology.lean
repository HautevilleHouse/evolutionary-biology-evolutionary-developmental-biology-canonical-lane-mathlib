import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean

structure EpidemiologyPackage where
  susceptibleCompartment : Prop
  infectedCompartment : Prop
  recoveredCompartment : Prop
  transmissionRate : Prop
  recoveryRate : Prop
  basicReproductiveNumber : Prop
  susceptibleCompartmentClosed : susceptibleCompartment
  infectedCompartmentClosed : infectedCompartment
  recoveredCompartmentClosed : recoveredCompartment
  transmissionRateClosed : transmissionRate
  recoveryRateClosed : recoveryRate
  basicReproductiveNumberClosed : basicReproductiveNumber

structure EpidemiologyEvidence (E : EpidemiologyPackage) where
  susceptibleCompartmentClosed : E.susceptibleCompartment
  infectedCompartmentClosed : E.infectedCompartment
  recoveredCompartmentClosed : E.recoveredCompartment
  transmissionRateClosed : E.transmissionRate
  recoveryRateClosed : E.recoveryRate
  basicReproductiveNumberClosed : E.basicReproductiveNumber

def EpidemiologyClosed (E : EpidemiologyPackage) : Prop :=
  E.susceptibleCompartment ∧ E.infectedCompartment ∧ E.recoveredCompartment ∧
  E.transmissionRate ∧ E.recoveryRate ∧ E.basicReproductiveNumber

theorem epidemiology_closed_from_evidence (E : EpidemiologyPackage)
    (Ev : EpidemiologyEvidence E) : EpidemiologyClosed E := by
  exact And.intro Ev.susceptibleCompartmentClosed
    (And.intro Ev.infectedCompartmentClosed
      (And.intro Ev.recoveredCompartmentClosed
        (And.intro Ev.transmissionRateClosed
          (And.intro Ev.recoveryRateClosed Ev.basicReproductiveNumberClosed))))

end EvolutionaryBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean
end HautevilleHouse