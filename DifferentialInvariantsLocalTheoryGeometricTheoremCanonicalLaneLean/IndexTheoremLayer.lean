import HautevilleHouse.DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean.ConnectionTheory

/-!
# Index Theorem Layer Package
-/

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean

structure IndexTheoremLayerPackage {G : DifferentialInvariantSpace}
    {C : CurvatureInvariantPackage G} {CT : ConnectionTheoryPackage C} where
  ellipticComplex : Type
  indexFormula : Type
  topologicalInvariant : Prop
  analyticIndexEqualsTopologicalIndex : Prop
  curvatureDependence : Prop
  integerIndex : Prop

structure IndexTheoremLayerEvidence {G : DifferentialInvariantSpace}
    {C : CurvatureInvariantPackage G} {CT : ConnectionTheoryPackage C}
    (I : IndexTheoremLayerPackage CT) where
  topologicalInvariantClosed : I.topologicalInvariant
  analyticIndexEqualsTopologicalIndexClosed : I.analyticIndexEqualsTopologicalIndex
  curvatureDependenceClosed : I.curvatureDependence
  integerIndexClosed : I.integerIndex

def IndexTheoremLayerClosed {G : DifferentialInvariantSpace}
    {C : CurvatureInvariantPackage G} {CT : ConnectionTheoryPackage C}
    (I : IndexTheoremLayerPackage CT) : Prop :=
  I.topologicalInvariant ∧ I.analyticIndexEqualsTopologicalIndex ∧
  I.curvatureDependence ∧ I.integerIndex

theorem index_theorem_layer_closed_from_evidence
    {G : DifferentialInvariantSpace} {C : CurvatureInvariantPackage G}
    {CT : ConnectionTheoryPackage C} (I : IndexTheoremLayerPackage CT)
    (E : IndexTheoremLayerEvidence I) : IndexTheoremLayerClosed I := by
  exact And.intro E.topologicalInvariantClosed
    (And.intro E.analyticIndexEqualsTopologicalIndexClosed
      (And.intro E.curvatureDependenceClosed E.integerIndexClosed))

end DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean
end HautevilleHouse