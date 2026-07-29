import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean

structure EvoDevoPrinciplesPackage where
  developmentalBias : Prop
  modularity : Prop
  homology : Prop
  plasticity : Prop
  geneticAssimilation : Prop

structure EvoDevoPrinciplesEvidence (E : EvoDevoPrinciplesPackage) where
  developmentalBiasClosed : E.developmentalBias
  modularityClosed : E.modularity
  homologyClosed : E.homology
  plasticityClosed : E.plasticity
  geneticAssimilationClosed : E.geneticAssimilation

def EvoDevoPrinciplesClosed (E : EvoDevoPrinciplesPackage) : Prop :=
  E.developmentalBias ∧ E.modularity ∧ E.homology ∧ E.plasticity ∧ E.geneticAssimilation

theorem evo_devo_principles_closed_from_evidence (E : EvoDevoPrinciplesPackage)
    (Ev : EvoDevoPrinciplesEvidence E) : EvoDevoPrinciplesClosed E := by
  exact And.intro Ev.developmentalBiasClosed
    (And.intro Ev.modularityClosed
      (And.intro Ev.homologyClosed
        (And.intro Ev.plasticityClosed Ev.geneticAssimilationClosed)))

end EvolutionaryBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean
end HautevilleHouse