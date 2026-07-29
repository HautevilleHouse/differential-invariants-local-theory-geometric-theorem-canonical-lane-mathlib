import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean

structure HolonomyPackage {G : CurvatureInvariantPackage} {C : ConnectionTheoryPackage G} where
  holonomyGroup : Type u
  holonomyAlgebra : Type v
  ambroiseSingerTheorem : Prop
  holonomyReduction : Prop
  curvatureHolonomyRelation : Prop

structure HolonomyEvidence {G : CurvatureInvariantPackage} {C : ConnectionTheoryPackage G} (H : HolonomyPackage G C) where
  holonomyGroupClosed : H.holonomyGroup
  holonomyAlgebraClosed : H.holonomyAlgebra
  ambroiseSingerTheoremClosed : H.ambroiseSingerTheorem
  holonomyReductionClosed : H.holonomyReduction
  curvatureHolonomyRelationClosed : H.curvatureHolonomyRelation

def HolonomyClosed {G : CurvatureInvariantPackage} {C : ConnectionTheoryPackage G} (H : HolonomyPackage G C) : Prop :=
  H.holonomyGroup ∧ H.holonomyAlgebra ∧ H.ambroiseSingerTheorem ∧
  H.holonomyReduction ∧ H.curvatureHolonomyRelation

theorem holonomy_closed_from_evidence {G : CurvatureInvariantPackage} {C : ConnectionTheoryPackage G} (H : HolonomyPackage G C) (E : HolonomyEvidence H) :
    HolonomyClosed H := by
  exact And.intro E.holonomyGroupClosed
    (And.intro E.holonomyAlgebraClosed
      (And.intro E.ambroiseSingerTheoremClosed
        (And.intro E.holonomyReductionClosed E.curvatureHolonomyRelationClosed)))

end DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean
end HautevilleHouse
