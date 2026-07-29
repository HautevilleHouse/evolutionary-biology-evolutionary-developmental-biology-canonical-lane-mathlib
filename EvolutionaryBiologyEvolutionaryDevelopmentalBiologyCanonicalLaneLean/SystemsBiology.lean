import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean

structure SystemsBiologyPackage where
  geneRegulatoryNetwork : Prop
  signalTransductionPathway : Prop
  metabolicFlux : Prop
  networkRobustness : Prop
  geneRegulatoryNetworkClosed : geneRegulatoryNetwork
  signalTransductionPathwayClosed : signalTransductionPathway
  metabolicFluxClosed : metabolicFlux
  networkRobustnessClosed : networkRobustness

structure SystemsBiologyEvidence (S : SystemsBiologyPackage) where
  geneRegulatoryNetworkClosed : S.geneRegulatoryNetwork
  signalTransductionPathwayClosed : S.signalTransductionPathway
  metabolicFluxClosed : S.metabolicFlux
  networkRobustnessClosed : S.networkRobustness

def SystemsBiologyClosed (S : SystemsBiologyPackage) : Prop :=
  S.geneRegulatoryNetwork ∧ S.signalTransductionPathway ∧
  S.metabolicFlux ∧ S.networkRobustness

theorem systems_biology_closed_from_evidence (S : SystemsBiologyPackage)
    (E : SystemsBiologyEvidence S) : SystemsBiologyClosed S := by
  exact And.intro E.geneRegulatoryNetworkClosed
    (And.intro E.signalTransductionPathwayClosed
      (And.intro E.metabolicFluxClosed E.networkRobustnessClosed))

end EvolutionaryBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean
end HautevilleHouse