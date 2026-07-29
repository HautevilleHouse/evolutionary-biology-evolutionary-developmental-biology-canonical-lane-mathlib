import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean

structure AdmissibleObject where
  population : Type
  fitnessLandscape : Prop
  geneticRegulatoryNetwork : Prop
  developmentalConstraints : Prop
  evoDevoIntegration : Prop

structure AdmissibleClass where
  object : AdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.evoDevoIntegration) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EvolutionaryBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean
end HautevilleHouse