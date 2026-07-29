import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean

structure DifferentialInvariantAdmissibleClass where
  object : AdmittedObject
  curvatureInvariantClosed : Prop
  connectionClosed : Prop
  topologicalObstructionRecorded : Prop
  gateWitness : curvatureInvariantClosed ∨ topologicalObstructionRecorded

def admittedClosure (A : DifferentialInvariantAdmissibleClass) : Prop :=
  A.curvatureInvariantClosed ∧ (A.connectionClosed ∨ A.topologicalObstructionRecorded)

end DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean
end HautevilleHouse