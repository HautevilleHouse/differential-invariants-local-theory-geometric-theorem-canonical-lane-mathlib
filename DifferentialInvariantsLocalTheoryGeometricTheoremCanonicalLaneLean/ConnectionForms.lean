import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean

structure ConnectionFormPackage (M : Type u) [TopologicalSpace M] [ChartedSpace ℂ M] [SmoothManifoldWithCorners ℂ M] where
  connectionOneForm : Type v
  curvatureTwoForm : Type w
  torsionTwoForm : Type x
  maurerCartanStructure : Prop
  flatConnectionCondition : Prop
  parallelTransportDefined : Prop
  gaugeTransformAction : Prop

structure ConnectionFormEvidence {M : Type u} [TopologicalSpace M] [ChartedSpace ℂ M] [SmoothManifoldWithCorners ℂ M] (C : ConnectionFormPackage M) where
  maurerCartanStructureClosed : C.maurerCartanStructure
  flatConnectionConditionClosed : C.flatConnectionCondition
  parallelTransportDefinedClosed : C.parallelTransportDefined
  gaugeTransformActionClosed : C.gaugeTransformAction

def ConnectionFormClosed {M : Type u} [TopologicalSpace M] [ChartedSpace ℂ M] [SmoothManifoldWithCorners ℂ M] (C : ConnectionFormPackage M) : Prop :=
  C.maurerCartanStructure ∧ C.flatConnectionCondition ∧ C.parallelTransportDefined ∧ C.gaugeTransformAction

theorem connection_form_closed_from_evidence {M : Type u} [TopologicalSpace M] [ChartedSpace ℂ M] [SmoothManifoldWithCorners ℂ M]
    (C : ConnectionFormPackage M) (E : ConnectionFormEvidence C) : ConnectionFormClosed C := by
  exact And.intro E.maurerCartanStructureClosed (And.intro E.flatConnectionConditionClosed (And.intro E.parallelTransportDefinedClosed E.gaugeTransformActionClosed))

end DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean
end HautevilleHouse