import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean

structure LocalInvariantPackage {G : CurvatureInvariantPackage} {C : ConnectionTheoryPackage G} where
  normalCoordinates : Type u
  geodesicSpray : Type v
  exponentialMap : Type w
  injectivityRadius : Prop
  curvatureDecay : Prop

structure LocalInvariantEvidence {G : CurvatureInvariantPackage} {C : ConnectionTheoryPackage G} (L : LocalInvariantPackage G C) where
  normalCoordinatesClosed : L.normalCoordinates
  geodesicSprayClosed : L.geodesicSpray
  exponentialMapClosed : L.exponentialMap
  injectivityRadiusClosed : L.injectivityRadius
  curvatureDecayClosed : L.curvatureDecay

def LocalInvariantClosed {G : CurvatureInvariantPackage} {C : ConnectionTheoryPackage G} (L : LocalInvariantPackage G C) : Prop :=
  L.normalCoordinates ∧ L.geodesicSpray ∧ L.exponentialMap ∧
  L.injectivityRadius ∧ L.curvatureDecay

theorem local_invariant_closed_from_evidence {G : CurvatureInvariantPackage} {C : ConnectionTheoryPackage G} (L : LocalInvariantPackage G C) (E : LocalInvariantEvidence L) :
    LocalInvariantClosed L := by
  exact And.intro E.normalCoordinatesClosed
    (And.intro E.geodesicSprayClosed
      (And.intro E.exponentialMapClosed
        (And.intro E.injectivityRadiusClosed E.curvatureDecayClosed)))

end DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean
end HautevilleHouse
