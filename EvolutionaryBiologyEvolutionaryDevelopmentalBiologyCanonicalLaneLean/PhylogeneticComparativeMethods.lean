import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean

structure PhylogeneticComparativeMethodsPackage where
  phylogeneticTree : Type
  traitEvolutionModel : Prop
  ancestralStateReconstruction : Prop
  diversificationRates : Prop
  phylogeneticSignal : Prop

structure PhylogeneticComparativeMethodsEvidence (P : PhylogeneticComparativeMethodsPackage) where
  traitEvolutionModelClosed : P.traitEvolutionModel
  ancestralStateReconstructionClosed : P.ancestralStateReconstruction
  diversificationRatesClosed : P.diversificationRates
  phylogeneticSignalClosed : P.phylogeneticSignal

def PhylogeneticComparativeMethodsClosed (P : PhylogeneticComparativeMethodsPackage) : Prop :=
  P.traitEvolutionModel ∧ P.ancestralStateReconstruction ∧ P.diversificationRates ∧ P.phylogeneticSignal

theorem phylogenetic_comparative_methods_closed_from_evidence
    (P : PhylogeneticComparativeMethodsPackage)
    (Ev : PhylogeneticComparativeMethodsEvidence P) : PhylogeneticComparativeMethodsClosed P := by
  exact And.intro Ev.traitEvolutionModelClosed
    (And.intro Ev.ancestralStateReconstructionClosed
      (And.intro Ev.diversificationRatesClosed Ev.phylogeneticSignalClosed))

end EvolutionaryBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean
end HautevilleHouse