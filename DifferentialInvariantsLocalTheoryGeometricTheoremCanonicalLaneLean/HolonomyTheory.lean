import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean

structure HolonomyPackage (M : Type u) [TopologicalSpace M] [ChartedSpace ℂ M] [SmoothManifoldWithCorners ℂ M] where
  holonomyGroup : Type v
  monodromyRepresentation : Type w
  amsboredIndependence : Prop
  curvatureHolonomyCorrespondence : Prop
  localHolonomyClosed : Prop
  looptClassified : Prop

structure HolonomyEvidence {M : Type u} [TopologicalSpace M] [ChartedSpace ℂ M] [SmoothManifoldWithCorners ℂ M] (H : HolonomyPackage M) where
  amsboredIndependenceClosed : H.amsboredIndependence
  curvatureHolonomyCorrespondenceClosed : H.curvatureHolonomyCorrespondence
  localHolonomyClosedClosed : H.localHolonomyClosed
  looptClassifiedClosed : H.looptClassified

def HolonomyClosed {M : Type u} [TopologicalSpace M] [ChartedSpace ℂ M] [SmoothManifoldWithCorners ℂ M] (H : HolonomyPackage M) : Prop :=
  H.amsboredIndependence ∧ H.curvatureHolonomyCorrespondence ∧ H.localHolonomyClosed ∧ H.looptClassified

theorem holonomy_closed_from_evidence {M : Type u} [TopologicalSpace M] [ChartedSpace ℂ M] [SmoothManifoldWithCorners ℂ M]
    (H : HolonomyPackage M) (E : HolonomyEvidence H) : HolonomyClosed H := by
  exact And.intro E.amsboredIndependenceClosed (And.intro E.curvatureHolonomyCorrespondenceClosed (And.intro E.localHolonomyClosedClosed E.looptClassifiedClosed))

end DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean
end HautevilleHouse