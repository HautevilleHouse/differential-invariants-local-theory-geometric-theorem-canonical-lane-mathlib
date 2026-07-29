import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean

def ConstrainedInvariantClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_invariant_endgame (A : AdmissibleClass) :
    ConstrainedInvariantClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean
end HautevilleHouse
