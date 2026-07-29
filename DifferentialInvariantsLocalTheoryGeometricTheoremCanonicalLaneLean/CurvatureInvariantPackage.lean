import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean

structure CurvatureInvariantPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  metric : Type v
  riemannTensor : Type w
  ricciTensor : Type x
  scalarCurvature : Type y
  smoothFourManifold : Prop
  metricSmooth : Prop
  riemannTensorSymmetries : Prop
  bianchiIdentities : Prop
  ricciContractionLaw : Prop
  scalarTraceLaw : Prop

structure CurvatureInvariantEvidence (G : CurvatureInvariantPackage) where
  smoothFourManifoldClosed : G.smoothFourManifold
  metricSmoothClosed : G.metricSmooth
  riemannTensorSymmetriesClosed : G.riemannTensorSymmetries
  bianchiIdentitiesClosed : G.bianchiIdentities
  ricciContractionLawClosed : G.ricciContractionLaw
  scalarTraceLawClosed : G.scalarTraceLaw

def CurvatureInvariantClosed (G : CurvatureInvariantPackage) : Prop :=
  G.smoothFourManifold ∧ G.metricSmooth ∧ G.riemannTensorSymmetries ∧
  G.bianchiIdentities ∧ G.ricciContractionLaw ∧ G.scalarTraceLaw

theorem curvature_invariant_closed_from_evidence (G : CurvatureInvariantPackage) (E : CurvatureInvariantEvidence G) :
    CurvatureInvariantClosed G := by
  exact And.intro E.smoothFourManifoldClosed
    (And.intro E.metricSmoothClosed
      (And.intro E.riemannTensorSymmetriesClosed
        (And.intro E.bianchiIdentitiesClosed
          (And.intro E.ricciContractionLawClosed E.scalarTraceLawClosed))))

end DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean
end HautevilleHouse
