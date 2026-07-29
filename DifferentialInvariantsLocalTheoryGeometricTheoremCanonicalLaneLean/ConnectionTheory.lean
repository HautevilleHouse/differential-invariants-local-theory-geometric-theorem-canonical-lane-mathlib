import DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean.ManifoldData

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean

structure ConnectionTheoryPackage (M : ManifoldData) where
  tangentBundle : Type u
  connectionForm : Type v
  curvatureForm : Type w
  torsionForm : Type x
  parallelTransport : Prop
  holonomyGroup : Prop
  metricCompatibility : Prop

structure ConnectionTheoryEvidence {M : ManifoldData} (C : ConnectionTheoryPackage M) where
  parallelTransportClosed : C.parallelTransport
  holonomyGroupClosed : C.holonomyGroup
  metricCompatibilityClosed : C.metricCompatibility

def ConnectionTheoryClosed {M : ManifoldData} (C : ConnectionTheoryPackage M) : Prop :=
  C.parallelTransport ∧ C.holonomyGroup ∧ C.metricCompatibility

theorem connection_theory_closed_from_evidence {M : ManifoldData} (C : ConnectionTheoryPackage M) (E : ConnectionTheoryEvidence C) : ConnectionTheoryClosed C := by
  exact And.intro E.parallelTransportClosed (And.intro E.holonomyGroupClosed E.metricCompatibilityClosed)

end DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean
end HautevilleHouse