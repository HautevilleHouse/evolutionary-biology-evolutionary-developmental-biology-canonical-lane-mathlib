import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean

structure EpidemiologyPackage where
  susceptible : ℕ → ℝ
  infected : ℕ → ℝ
  recovered : ℕ → ℝ
  transmissionRate : ℝ
  recoveryRate : ℝ
  basicReproductiveNumber : ℝ
  endemicEquilibriumStable : Prop

structure EpidemiologyEvidence (E : EpidemiologyPackage) where
  endemicStableClosed : E.endemicEquilibriumStable
  basicReproNumberClosed : E.basicReproductiveNumber ≥ 1

def EpidemiologyClosed (E : EpidemiologyPackage) : Prop :=
  E.endemicEquilibriumStable ∧ (E.basicReproductiveNumber ≥ 1)

theorem epidemiology_closed_from_evidence (E : EpidemiologyPackage)
    (Ev : EpidemiologyEvidence E) : EpidemiologyClosed E := by
  exact And.intro Ev.endemicStableClosed Ev.basicReproNumberClosed

end EvolutionaryBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean
end HautevilleHouse