import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean

structure GeneRegulatoryNetworkPackage where
  regulatoryGraph : Type
  activationDynamics : Prop
  repressionDynamics : Prop
  steadyStateAttractors : Prop
  topologyStructure : Prop

structure GeneRegulatoryNetworkEvidence (G : GeneRegulatoryNetworkPackage) where
  activationDynamicsClosed : G.activationDynamics
  repressionDynamicsClosed : G.repressionDynamics
  steadyStateAttractorsClosed : G.steadyStateAttractors
  topologyStructureClosed : G.topologyStructure

def GeneRegulatoryNetworkClosed (G : GeneRegulatoryNetworkPackage) : Prop :=
  G.activationDynamics ∧ G.repressionDynamics ∧ G.steadyStateAttractors ∧ G.topologyStructure

theorem gene_regulatory_network_closed_from_evidence (G : GeneRegulatoryNetworkPackage)
    (E : GeneRegulatoryNetworkEvidence G) : GeneRegulatoryNetworkClosed G := by
  exact And.intro E.activationDynamicsClosed
    (And.intro E.repressionDynamicsClosed
      (And.intro E.steadyStateAttractorsClosed E.topologyStructureClosed))

end EvolutionaryBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean
end HautevilleHouse