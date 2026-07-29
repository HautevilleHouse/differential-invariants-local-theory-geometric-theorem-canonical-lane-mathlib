import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean

structure IndexTheoremPackage {G : CurvatureInvariantPackage} {C : ConnectionTheoryPackage G} where
  ellipticOperator : Type u
  fredholmIndex : Prop
  topologicalIndex : Prop
  indexEqualsEulerCharacteristic : Prop
  signatureFormula : Prop

structure IndexTheoremEvidence {G : CurvatureInvariantPackage} {C : ConnectionTheoryPackage G} (I : IndexTheoremPackage G C) where
  ellipticOperatorClosed : I.ellipticOperator
  fredholmIndexClosed : I.fredholmIndex
  topologicalIndexClosed : I.topologicalIndex
  indexEqualsEulerCharacteristicClosed : I.indexEqualsEulerCharacteristic
  signatureFormulaClosed : I.signatureFormula

def IndexTheoremClosed {G : CurvatureInvariantPackage} {C : ConnectionTheoryPackage G} (I : IndexTheoremPackage G C) : Prop :=
  I.ellipticOperator ∧ I.fredholmIndex ∧ I.topologicalIndex ∧
  I.indexEqualsEulerCharacteristic ∧ I.signatureFormula

theorem index_theorem_closed_from_evidence {G : CurvatureInvariantPackage} {C : ConnectionTheoryPackage G} (I : IndexTheoremPackage G C) (E : IndexTheoremEvidence I) :
    IndexTheoremClosed I := by
  exact And.intro E.ellipticOperatorClosed
    (And.intro E.fredholmIndexClosed
      (And.intro E.topologicalIndexClosed
        (And.intro E.indexEqualsEulerCharacteristicClosed E.signatureFormulaClosed)))

end DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean
end HautevilleHouse
