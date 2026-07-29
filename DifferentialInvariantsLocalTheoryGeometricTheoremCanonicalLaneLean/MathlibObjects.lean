import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DifferentialInvariantSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  smoothStructure : SmoothManifold (carrier, topology)

structure AdmittedDifferentialInvariantObject where
  space : DifferentialInvariantSpace
  connectionDefined : Prop
  curvatureTensorDefined : Prop
  invariantPolynomial : Type
  invariantDegree : ℕ
  invariantWellDefined : invariantPolynomial → Prop
  conclusion : invariantWellDefined invariantPolynomial

structure EndgameState where
  object : AdmittedDifferentialInvariantObject

def WitnessClosed (O : AdmittedDifferentialInvariantObject) : Prop :=
  O.invariantWellDefined O.invariantPolynomial

end DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean
end HautevilleHouse