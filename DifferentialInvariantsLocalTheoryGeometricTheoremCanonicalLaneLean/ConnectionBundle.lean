import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean

structure ConnectionBundle (M : Type u) [TopologicalSpace M] [SmoothManifold M] where
  totalSpace : Type v
  projection : totalSpace → M
  fiber : M → Type w
  transitionFunctions : Prop
  smoothStructure : Prop
  linearConnections : Prop
  curvatureForm : Prop
  torsionForm : Prop

def ConnectionBundle.Smooth (b : ConnectionBundle M) : Prop :=
  b.smoothStructure ∧ b.linearConnections

end DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean
end HautevilleHouse
