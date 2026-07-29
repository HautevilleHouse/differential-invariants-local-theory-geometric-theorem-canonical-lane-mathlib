import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean

structure ConnectionCurvaturePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  tangentBundle : Type v
  connectionForm : Type w
  curvatureTwoForm : Type x
  smoothManifold : Prop
  connectionSmooth : Prop
  curvatureTransformsAsTensor : Prop
  bianchiIdentity : Prop
  structureGroupReduction : Prop

structure ConnectionCurvatureEvidence (C : ConnectionCurvaturePackage) where
  smoothManifoldClosed : C.smoothManifold
  connectionSmoothClosed : C.connectionSmooth
  curvatureTransformsAsTensorClosed : C.curvatureTransformsAsTensor
  bianchiIdentityClosed : C.bianchiIdentity
  structureGroupReductionClosed : C.structureGroupReduction

def ConnectionCurvatureClosed (C : ConnectionCurvaturePackage) : Prop :=
  C.smoothManifold ∧ C.connectionSmooth ∧ C.curvatureTransformsAsTensor ∧ C.bianchiIdentity ∧ C.structureGroupReduction

theorem connection_curvature_closed_from_evidence (C : ConnectionCurvaturePackage) (E : ConnectionCurvatureEvidence C) :
    ConnectionCurvatureClosed C := by
  exact And.intro E.smoothManifoldClosed (And.intro E.connectionSmoothClosed (And.intro E.curvatureTransformsAsTensorClosed (And.intro E.bianchiIdentityClosed E.structureGroupReductionClosed)))

end DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean
end HautevilleHouse