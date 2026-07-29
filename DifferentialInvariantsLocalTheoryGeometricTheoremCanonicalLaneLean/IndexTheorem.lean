import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean

structure IndexTheorem (M : Type u) [TopologicalSpace M] [SmoothManifold M] where
  ellipticOperator : Type v
  index : Int
  analyticIndex : Int
  topologicalIndex : Int
  indexEquality : analyticIndex = topologicalIndex

def IndexTheorem.Closed (it : IndexTheorem M) : Prop :=
  it.indexEquality

end DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean
end HautevilleHouse
