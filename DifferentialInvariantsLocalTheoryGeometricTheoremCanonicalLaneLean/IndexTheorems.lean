import DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean.CurvatureInvariants

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean

structure IndexTheoremPackage {C : ConnectionTheoryPackage} (K : CurvatureInvariantPackage C) where
  eulerCharacteristic : ℤ
  signature : ℤ
  genus : ℤ
  analyticIndex : Prop
  topologicalIndex : Prop
  indexMatch : Prop

structure IndexTheoremEvidence {C : ConnectionTheoryPackage} {K : CurvatureInvariantPackage C} (I : IndexTheoremPackage K) where
  analyticIndexClosed : I.analyticIndex
  topologicalIndexClosed : I.topologicalIndex
  indexMatchClosed : I.indexMatch

def IndexTheoremClosed {C : ConnectionTheoryPackage} {K : CurvatureInvariantPackage C} (I : IndexTheoremPackage K) : Prop :=
  I.analyticIndex ∧ I.topologicalIndex ∧ I.indexMatch

theorem index_theorem_closed_from_evidence {C : ConnectionTheoryPackage} {K : CurvatureInvariantPackage C} (I : IndexTheoremPackage K) (E : IndexTheoremEvidence I) : IndexTheoremClosed I := by
  exact And.intro E.analyticIndexClosed (And.intro E.topologicalIndexClosed E.indexMatchClosed)

end DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean
end HautevilleHouse