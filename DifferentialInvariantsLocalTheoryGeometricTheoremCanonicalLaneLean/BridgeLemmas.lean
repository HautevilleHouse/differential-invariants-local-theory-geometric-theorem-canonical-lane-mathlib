import DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean

def bridgeClosed (A : DifferentialInvariantAdmissibleClass) : Prop :=
  A.curvatureInvariantClosed

theorem bridge_from_admissible_class (A : DifferentialInvariantAdmissibleClass) :
    bridgeClosed A := by
  exact A.curvatureInvariantClosed

end DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean
end HautevilleHouse