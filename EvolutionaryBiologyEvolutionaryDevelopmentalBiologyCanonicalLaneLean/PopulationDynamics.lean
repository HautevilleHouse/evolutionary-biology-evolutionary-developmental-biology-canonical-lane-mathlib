import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean

structure PopulationDynamicsPackage where
  carryingCapacity : Prop
  growthRate : Prop
  logisticEquation : Prop
  equilibriumStability : Prop
  carryingCapacityClosed : carryingCapacity
  growthRateClosed : growthRate
  logisticEquationClosed : logisticEquation
  equilibriumStabilityClosed : equilibriumStability

structure PopulationDynamicsEvidence (P : PopulationDynamicsPackage) where
  carryingCapacityClosed : P.carryingCapacity
  growthRateClosed : P.growthRate
  logisticEquationClosed : P.logisticEquation
  equilibriumStabilityClosed : P.equilibriumStability

def PopulationDynamicsClosed (P : PopulationDynamicsPackage) : Prop :=
  P.carryingCapacity ∧ P.growthRate ∧ P.logisticEquation ∧ P.equilibriumStability

theorem population_dynamics_closed_from_evidence (P : PopulationDynamicsPackage)
    (E : PopulationDynamicsEvidence P) : PopulationDynamicsClosed P := by
  exact And.intro E.carryingCapacityClosed
    (And.intro E.growthRateClosed
      (And.intro E.logisticEquationClosed E.equilibriumStabilityClosed))

end EvolutionaryBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean
end HautevilleHouse