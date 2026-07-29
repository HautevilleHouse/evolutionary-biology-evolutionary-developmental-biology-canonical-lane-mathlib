import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean

structure DevelopmentalBiologyPackage where
  bodyPlanDefined : Prop
  hoxGeneExpression : Prop
  morphogenGradient : Prop
  patternFormationEq : Prop
  positionalInformation : Prop

structure DevelopmentalBiologyEvidence (D : DevelopmentalBiologyPackage) where
  bodyPlanClosed : D.bodyPlanDefined
  hoxClosed : D.hoxGeneExpression
  patternClosed : D.patternFormationEq

def DevelopmentalBiologyClosed (D : DevelopmentalBiologyPackage) : Prop :=
  D.bodyPlanDefined ∧ D.hoxGeneExpression ∧ D.patternFormationEq

theorem developmental_biology_closed_from_evidence (D : DevelopmentalBiologyPackage)
    (E : DevelopmentalBiologyEvidence D) : DevelopmentalBiologyClosed D := by
  exact And.intro E.bodyPlanClosed (And.intro E.hoxClosed E.patternClosed)

end EvolutionaryBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean
end HautevilleHouse