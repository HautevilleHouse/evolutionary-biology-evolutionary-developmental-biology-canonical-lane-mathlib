import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.evoDevoIntegration

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.evoDevoIntegration

end EvolutionaryBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean
end HautevilleHouse