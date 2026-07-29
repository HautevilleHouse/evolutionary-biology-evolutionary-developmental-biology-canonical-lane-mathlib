import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean

structure EvolutionaryGamePackage where
  payoffMatrix : Type
  replicatorDynamics : Prop
  evolutionaryStableStrategy : Prop
  nashEquilibrium : Prop
  payoffDefined : Type → Prop
  replicatorDynamicsClosed : replicatorDynamics
  evolutionaryStableStrategyClosed : evolutionaryStableStrategy
  nashEquilibriumClosed : nashEquilibrium

structure EvolutionaryGameEvidence (G : EvolutionaryGamePackage) where
  replicatorDynamicsClosed : G.replicatorDynamics
  evolutionaryStableStrategyClosed : G.evolutionaryStableStrategy
  nashEquilibriumClosed : G.nashEquilibrium

def EvolutionaryGameClosed (G : EvolutionaryGamePackage) : Prop :=
  G.replicatorDynamics ∧ G.evolutionaryStableStrategy ∧ G.nashEquilibrium

theorem evolutionary_game_closed_from_evidence (G : EvolutionaryGamePackage)
    (E : EvolutionaryGameEvidence G) : EvolutionaryGameClosed G := by
  exact And.intro E.replicatorDynamicsClosed
    (And.intro E.evolutionaryStableStrategyClosed E.nashEquilibriumClosed)

end EvolutionaryBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean
end HautevilleHouse