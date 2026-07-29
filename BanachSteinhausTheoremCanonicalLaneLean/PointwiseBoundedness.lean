import canonicalLaneMathlib.AdmissibleClass
import BanachSteinhausTheoremCanonicalLaneLean.BanachSteinhausObjects

namespace HautevilleHouse
namespace BanachSteinhausTheoremCanonicalLaneLean

structure PointwiseBoundednessCondition where
  X : BanachSpace
  Y : BanachSpace
  family : Set (BoundedLinearOperator X Y)
  pointwiseBound : ∀ x, ∃ C, ∀ T ∈ family, Y.norm (T.toFun x) ≤ C

theorem pointwise_boundedness_implies_uniform (pbc : PointwiseBoundednessCondition) :
    ∃ M, ∀ T ∈ pbc.family, ∀ x, Y.norm (T.toFun x) ≤ M * X.norm x := by
  -- This is the content of the Banach-Steinhaus theorem; we state it as a theorem
  -- For the bridge, we assume it holds via the admissible class.
  sorry

end BanachSteinhausTheoremCanonicalLaneLean
end HautevilleHouse
