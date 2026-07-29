import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean.ConnectionCurvature

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean

structure MovingFrameInvariantsPackage (C : ConnectionCurvaturePackage) where
  coframe : Type u
  structureEquations : Prop
  cartanInvariants : Prop
  infinitesimalAction : Prop
  symmetryReduction : Prop
  invariantsGenerate : Prop

structure MovingFrameInvariantsEvidence {C : ConnectionCurvaturePackage} (M : MovingFrameInvariantsPackage C) where
  structureEquationsClosed : M.structureEquations
  cartanInvariantsClosed : M.cartanInvariants
  infinitesimalActionClosed : M.infinitesimalAction
  symmetryReductionClosed : M.symmetryReduction
  invariantsGenerateClosed : M.invariantsGenerate

def MovingFrameInvariantsClosed {C : ConnectionCurvaturePackage} (M : MovingFrameInvariantsPackage C) : Prop :=
  M.structureEquations ∧ M.cartanInvariants ∧ M.infinitesimalAction ∧ M.symmetryReduction ∧ M.invariantsGenerate

theorem moving_frame_invariants_closed_from_evidence {C : ConnectionCurvaturePackage} (M : MovingFrameInvariantsPackage C) (E : MovingFrameInvariantsEvidence M) :
    MovingFrameInvariantsClosed M := by
  exact And.intro E.structureEquationsClosed (And.intro E.cartanInvariantsClosed (And.intro E.infinitesimalActionClosed (And.intro E.symmetryReductionClosed E.invariantsGenerateClosed)))

end DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean
end HautevilleHouse