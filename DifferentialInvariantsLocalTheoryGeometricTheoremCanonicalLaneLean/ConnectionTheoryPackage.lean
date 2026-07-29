import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean

structure ConnectionTheoryPackage {G : CurvatureInvariantPackage} where
  leviCivitaConnection : Type v
  covariantDerivative : Type w
  torsionFree : Prop
  metricCompatible : Prop
  parallelTransport : Prop
  holonomyGroup : Prop

structure ConnectionTheoryEvidence {G : CurvatureInvariantPackage} (C : ConnectionTheoryPackage G) where
  torsionFreeClosed : C.torsionFree
  metricCompatibleClosed : C.metricCompatible
  parallelTransportClosed : C.parallelTransport
  holonomyGroupClosed : C.holonomyGroup

def ConnectionTheoryClosed {G : CurvatureInvariantPackage} (C : ConnectionTheoryPackage G) : Prop :=
  C.torsionFree ∧ C.metricCompatible ∧ C.parallelTransport ∧ C.holonomyGroup

theorem connection_theory_closed_from_evidence {G : CurvatureInvariantPackage} (C : ConnectionTheoryPackage G) (E : ConnectionTheoryEvidence C) :
    ConnectionTheoryClosed C := by
  exact And.intro E.torsionFreeClosed
    (And.intro E.metricCompatibleClosed
      (And.intro E.parallelTransportClosed E.holonomyGroupClosed))

end DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean
end HautevilleHouse
