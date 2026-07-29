import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean

def ProjectionClosed (obj : DifferentialInvariantObject) : Prop :=
  obj.curvatureConstraint ∧ obj.invariantFlow

theorem projection_idempotent (obj : DifferentialInvariantObject) :
    ProjectionClosed obj := by
  exact And.intro obj.conclusion.1 obj.conclusion.2

end DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean
end HautevilleHouse
