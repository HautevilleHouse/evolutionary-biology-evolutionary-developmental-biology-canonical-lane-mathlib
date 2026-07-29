import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean

structure DevelopmentalBiasPackage where
  morphogenGradient : Type
  reactionDiffusionDynamics : Prop
  patternFormation : Prop
  canalization : Prop
  plasticity : Prop

structure DevelopmentalBiasEvidence (D : DevelopmentalBiasPackage) where
  reactionDiffusionDynamicsClosed : D.reactionDiffusionDynamics
  patternFormationClosed : D.patternFormation
  canalizationClosed : D.canalization
  plasticityClosed : D.plasticity

def DevelopmentalBiasClosed (D : DevelopmentalBiasPackage) : Prop :=
  D.reactionDiffusionDynamics ∧ D.patternFormation ∧ D.canalization ∧ D.plasticity

theorem developmental_bias_closed_from_evidence (D : DevelopmentalBiasPackage)
    (Ev : DevelopmentalBiasEvidence D) : DevelopmentalBiasClosed D := by
  exact And.intro Ev.reactionDiffusionDynamicsClosed
    (And.intro Ev.patternFormationClosed
      (And.intro Ev.canalizationClosed Ev.plasticityClosed))

end EvolutionaryBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean
end HautevilleHouse