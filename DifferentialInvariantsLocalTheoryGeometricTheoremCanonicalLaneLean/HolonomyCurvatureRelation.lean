import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean.ConnectionCurvature

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean

structure HolonomyCurvatureRelationPackage (C : ConnectionCurvaturePackage) where
  holonomyGroup : Type u
  lieAlgebraHolonomy : Type v
  curvatureGenerator : Prop
  ambroseSingerTheorem : Prop
  infinitesimalHolonomy : Prop
  localHolonomyClosed : Prop

structure HolonomyCurvatureRelationEvidence {C : ConnectionCurvaturePackage} (H : HolonomyCurvatureRelationPackage C) where
  curvatureGeneratorClosed : H.curvatureGenerator
  ambroseSingerTheoremClosed : H.ambroseSingerTheorem
  infinitesimalHolonomyClosed : H.infinitesimalHolonomy
  localHolonomyClosedClosed : H.localHolonomyClosed

def HolonomyCurvatureRelationClosed {C : ConnectionCurvaturePackage} (H : HolonomyCurvatureRelationPackage C) : Prop :=
  H.curvatureGenerator ∧ H.ambroseSingerTheorem ∧ H.infinitesimalHolonomy ∧ H.localHolonomyClosed

theorem holonomy_curvature_relation_closed_from_evidence {C : ConnectionCurvaturePackage} (H : HolonomyCurvatureRelationPackage C) (E : HolonomyCurvatureRelationEvidence H) :
    HolonomyCurvatureRelationClosed H := by
  exact And.intro E.curvatureGeneratorClosed (And.intro E.ambroseSingerTheoremClosed (And.intro E.infinitesimalHolonomyClosed E.localHolonomyClosedClosed))

end DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean
end HautevilleHouse