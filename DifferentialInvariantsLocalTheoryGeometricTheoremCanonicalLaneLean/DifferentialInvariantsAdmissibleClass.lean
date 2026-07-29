import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean

structure DifferentialInvariantObject where
  bundle : Type u
  invariantFlow : Prop
  curvatureConstraint : Prop
  holonomyGroup : Prop
  conclusion : curvatureConstraint ∧ invariantFlow

structure AdmissibleClass where
  object : DifferentialInvariantObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean
end HautevilleHouse
