import HautevilleHouse.BanachSteinhausTheoremCanonicalLaneLean.LinearOperatorFamily

namespace HautevilleHouse
namespace BanachSteinhausTheoremCanonicalLaneLean

structure PointwiseBounded {F : LinearOperatorFamily} where
  boundedAtEachPoint : ∀ x : F.X.carrier, ∃ M : ℝ, ∀ f : F.family, ‖F.operators f x‖ ≤ M

def PointwiseBoundedClosed {F : LinearOperatorFamily} (P : PointwiseBounded F) : Prop :=
  ∀ x : F.X.carrier, ∃ M : ℝ, ∀ f : F.family, ‖F.operators f x‖ ≤ M

theorem pointwise_bounded_closed {F : LinearOperatorFamily} (P : PointwiseBounded F) : PointwiseBoundedClosed P := by
  exact P.boundedAtEachPoint

end BanachSteinhausTheoremCanonicalLaneLean
end HautevilleHouse
