import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean.PontryaginChernClasses

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean

structure IndexTheoremLocalPackage (C : ConnectionCurvaturePackage) (P : PontryaginChernClassesPackage C) where
  analyticIndex : Prop
  topologicalIndex : Prop
  indexEquality : Prop
  localIndexDensity : Prop
  integrandClosed : Prop

structure IndexTheoremLocalEvidence {C : ConnectionCurvaturePackage} {P : PontryaginChernClassesPackage C} (I : IndexTheoremLocalPackage C P) where
  analyticIndexClosed : I.analyticIndex
  topologicalIndexClosed : I.topologicalIndex
  indexEqualityClosed : I.indexEquality
  localIndexDensityClosed : I.localIndexDensity
  integrandClosedClosed : I.integrandClosed

def IndexTheoremLocalClosed {C : ConnectionCurvaturePackage} {P : PontryaginChernClassesPackage C} (I : IndexTheoremLocalPackage C P) : Prop :=
  I.analyticIndex ∧ I.topologicalIndex ∧ I.indexEquality ∧ I.localIndexDensity ∧ I.integrandClosed

theorem index_theorem_local_closed_from_evidence {C : ConnectionCurvaturePackage} {P : PontryaginChernClassesPackage C} (I : IndexTheoremLocalPackage C P) (E : IndexTheoremLocalEvidence I) :
    IndexTheoremLocalClosed I := by
  exact And.intro E.analyticIndexClosed (And.intro E.topologicalIndexClosed (And.intro E.indexEqualityClosed (And.intro E.localIndexDensityClosed E.integrandClosedClosed)))

end DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean
end HautevilleHouse