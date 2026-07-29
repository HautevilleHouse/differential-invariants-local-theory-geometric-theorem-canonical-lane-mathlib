import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean

structure MovingFramePackage (M : Type u) [TopologicalSpace M] [ChartedSpace ℂ M] [SmoothManifoldWithCorners ℂ M] where
  coframe : Type v
  structureFunction : Type w
  integrabilityCondition : Prop
  lieDerivativeFormula : Prop
  structureEquations : Prop

structure MovingFrameEvidence {M : Type u} [TopologicalSpace M] [ChartedSpace ℂ M] [SmoothManifoldWithCorners ℂ M] (F : MovingFramePackage M) where
  integrabilityConditionClosed : F.integrabilityCondition
  lieDerivativeFormulaClosed : F.lieDerivativeFormula
  structureEquationsClosed : F.structureEquations

def MovingFrameClosed {M : Type u} [TopologicalSpace M] [ChartedSpace ℂ M] [SmoothManifoldWithCorners ℂ M] (F : MovingFramePackage M) : Prop :=
  F.integrabilityCondition ∧ F.lieDerivativeFormula ∧ F.structureEquations

theorem moving_frame_closed_from_evidence {M : Type u} [TopologicalSpace M] [ChartedSpace ℂ M] [SmoothManifoldWithCorners ℂ M]
    (F : MovingFramePackage M) (E : MovingFrameEvidence F) : MovingFrameClosed F := by
  exact And.intro E.integrabilityConditionClosed (And.intro E.lieDerivativeFormulaClosed E.structureEquationsClosed)

end DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean
end HautevilleHouse