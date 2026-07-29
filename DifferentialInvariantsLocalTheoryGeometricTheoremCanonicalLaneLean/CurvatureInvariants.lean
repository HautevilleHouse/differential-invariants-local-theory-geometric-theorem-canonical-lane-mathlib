import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean

structure CurvatureInvariants where
  riemannCurvatureTensor : Type u
  ricciCurvature : Type v
  scalarCurvature : Type w
  sectionalCurvature : Type x
  curvatureIdentities : Prop
  einsteinCondition : Prop
  constantSectionalCurvature : Prop

def CurvatureInvariants.Computed (c : CurvatureInvariants) : Prop :=
  c.curvatureIdentities

end DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean
end HautevilleHouse
