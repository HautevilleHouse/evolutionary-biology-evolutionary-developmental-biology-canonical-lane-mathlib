import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean

open PopulationDynamicsBridge

structure EvolutionaryGamePackage (P : PopulationDynamicsPackage) where
  strategySet : Type u
  payoffMatrix : Type v
  replicatorEquation : Prop
  nashEquilibrium : Prop
  essStability : Prop

structure EvolutionaryGameEvidence {P : PopulationDynamicsPackage}
    (G : EvolutionaryGamePackage P) where
  replicatorEquationClosed : G.replicatorEquation
  nashEquilibriumClosed : G.nashEquilibrium
  essStabilityClosed : G.essStability

def EvolutionaryGameClosed {P : PopulationDynamicsPackage}
    (G : EvolutionaryGamePackage P) : Prop :=
  G.replicatorEquation ∧ G.nashEquilibrium ∧ G.essStability

theorem evolutionary_game_closed_from_evidence {P : PopulationDynamicsPackage}
    (G : EvolutionaryGamePackage P) (E : EvolutionaryGameEvidence G) :
    EvolutionaryGameClosed G :=
  And.intro E.replicatorEquationClosed
    (And.intro E.nashEquilibriumClosed E.essStabilityClosed)

end EvolutionaryBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean
end HautevilleHouse