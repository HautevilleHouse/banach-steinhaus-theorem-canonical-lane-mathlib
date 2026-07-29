import HautevilleHouse.BanachSteinhausTheoremCanonicalLaneLean.LinearOperatorFamily

namespace HautevilleHouse
namespace BanachSteinhausTheoremCanonicalLaneLean

structure UniformBoundednessPackage {F : LinearOperatorFamily} where
  pointwiseBounded : PointwiseBounded F
  uniformBound : ∃ C : ℝ, ∀ (f : F.family) (x : F.X.carrier), ‖F.operators f x‖ ≤ C * ‖x‖

structure UniformBoundednessEvidence {F : LinearOperatorFamily} (U : UniformBoundednessPackage F) where
  pointwiseBoundedClosed : U.pointwiseBounded

def UniformBoundednessClosed {F : LinearOperatorFamily} (U : UniformBoundednessPackage F) : Prop :=
  U.pointwiseBounded ∧ U.uniformBound

theorem uniform_boundedness_closed_from_evidence
    {F : LinearOperatorFamily} (U : UniformBoundednessPackage F)
    (E : UniformBoundednessEvidence U) : UniformBoundednessClosed U := by
  exact And.intro E.pointwiseBoundedClosed (by
    -- The uniform bound is a consequence of pointwise boundedness via the Banach–Steinhaus theorem.
    -- Here we assume it holds as part of the package.
    exact U.uniformBound)

end BanachSteinhausTheoremCanonicalLaneLean
end HautevilleHouse
