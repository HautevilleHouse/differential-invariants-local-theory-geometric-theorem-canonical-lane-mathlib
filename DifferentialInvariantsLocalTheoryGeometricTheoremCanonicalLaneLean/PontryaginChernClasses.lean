import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean.ConnectionCurvature

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean

structure PontryaginChernClassesPackage (C : ConnectionCurvaturePackage) where
  pontryaginClass : C.curvatureTwoForm -> Type u
  chernClass : C.curvatureTwoForm -> Type v
  firstPontryagin : Prop
  secondPontryagin : Prop
  firstChern : Prop
  secondChern : Prop
  characteristicFormsClosed : Prop

structure PontryaginChernClassesEvidence {C : ConnectionCurvaturePackage} (P : PontryaginChernClassesPackage C) where
  firstPontryaginClosed : P.firstPontryagin
  secondPontryaginClosed : P.secondPontryagin
  firstChernClosed : P.firstChern
  secondChernClosed : P.secondChern
  characteristicFormsClosedClosed : P.characteristicFormsClosed

def PontryaginChernClassesClosed {C : ConnectionCurvaturePackage} (P : PontryaginChernClassesPackage C) : Prop :=
  P.firstPontryagin ∧ P.secondPontryagin ∧ P.firstChern ∧ P.secondChern ∧ P.characteristicFormsClosed

theorem pontryagin_chern_classes_closed_from_evidence {C : ConnectionCurvaturePackage} (P : PontryaginChernClassesPackage C) (E : PontryaginChernClassesEvidence P) :
    PontryaginChernClassesClosed P := by
  exact And.intro E.firstPontryaginClosed (And.intro E.secondPontryaginClosed (And.intro E.firstChernClosed (And.intro E.secondChernClosed E.characteristicFormsClosedClosed)))

end DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean
end HautevilleHouse