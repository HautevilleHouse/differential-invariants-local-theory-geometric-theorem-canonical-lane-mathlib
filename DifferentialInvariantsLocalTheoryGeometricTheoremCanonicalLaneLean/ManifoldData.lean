import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean

structure ManifoldData where
  carrier : Type u
  topology : TopologicalSpace carrier
  smoothStructure : Prop
  dimension : ℕ
  orientable : Prop
  closed : Prop

def ManifoldDataAdmissible (M : ManifoldData) : Prop :=
  M.smoothStructure ∧ M.closed

end DifferentialInvariantsLocalTheoryGeometricTheoremCanonicalLaneLean
end HautevilleHouse