import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean.ConnectionCurvature

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean

structure InvariantDifferentialOperatorsPackage (C : ConnectionCurvaturePackage) where
  differentialOperatorFamily : Type u
  invariantUnderGauge : Prop
  firstOrderOperators : Prop
  secondOrderOperators : Prop
  curvatureCommutation : Prop
  ellipticComponent : Prop

structure InvariantDifferentialOperatorsEvidence {C : ConnectionCurvaturePackage} (O : InvariantDifferentialOperatorsPackage C) where
  invariantUnderGaugeClosed : O.invariantUnderGauge
  firstOrderOperatorsClosed : O.firstOrderOperators
  secondOrderOperatorsClosed : O.secondOrderOperators
  curvatureCommutationClosed : O.curvatureCommutation
  ellipticComponentClosed : O.ellipticComponent

def InvariantDifferentialOperatorsClosed {C : ConnectionCurvaturePackage} (O : InvariantDifferentialOperatorsPackage C) : Prop :=
  O.invariantUnderGauge ∧ O.firstOrderOperators ∧ O.secondOrderOperators ∧ O.curvatureCommutation ∧ O.ellipticComponent

theorem invariant_differential_operators_closed_from_evidence {C : ConnectionCurvaturePackage} (O : InvariantDifferentialOperatorsPackage C) (E : InvariantDifferentialOperatorsEvidence O) :
    InvariantDifferentialOperatorsClosed O := by
  exact And.intro E.invariantUnderGaugeClosed (And.intro E.firstOrderOperatorsClosed (And.intro E.secondOrderOperatorsClosed (And.intro E.curvatureCommutationClosed E.ellipticComponentClosed)))

end DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean
end HautevilleHouse