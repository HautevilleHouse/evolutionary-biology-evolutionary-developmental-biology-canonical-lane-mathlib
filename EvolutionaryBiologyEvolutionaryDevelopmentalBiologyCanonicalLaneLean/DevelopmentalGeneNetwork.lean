import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean

structure DevelopmentalGeneNetworkPackage where
  geneList : Type u
  regulatoryEdges : Type v
  booleanDynamics : Prop
  attractorsIdentified : Prop
  plasticity : Prop

structure DevelopmentalGeneNetworkEvidence
    (D : DevelopmentalGeneNetworkPackage) where
  booleanDynamicsClosed : D.booleanDynamics
  attractorsIdentifiedClosed : D.attractorsIdentified
  plasticityClosed : D.plasticity

def DevelopmentalGeneNetworkClosed (D : DevelopmentalGeneNetworkPackage) : Prop :=
  D.booleanDynamics ∧ D.attractorsIdentified ∧ D.plasticity

theorem developmental_gene_network_closed_from_evidence
    (D : DevelopmentalGeneNetworkPackage)
    (E : DevelopmentalGeneNetworkEvidence D) :
    DevelopmentalGeneNetworkClosed D :=
  And.intro E.booleanDynamicsClosed
    (And.intro E.attractorsIdentifiedClosed E.plasticityClosed)

end EvolutionaryBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean
end HautevilleHouse