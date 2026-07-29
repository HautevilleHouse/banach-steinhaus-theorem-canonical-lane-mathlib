import HautevilleHouse.BanachSteinhausTheoremCanonicalLaneLean.BanachSpaceBundle

namespace HautevilleHouse
namespace BanachSteinhausTheoremCanonicalLaneLean

structure LinearOperatorFamily where
  X : BanachSpace
  Y : BanachSpace
  family : Type
  operators : family → (X.carrier → Y.carrier)
  boundedness : ∀ (f : family), ∃ C : ℝ, ∀ (x : X.carrier), ‖operators f x‖ ≤ C * ‖x‖

def LinearOperatorFamilyClosed (F : LinearOperatorFamily) : Prop :=
  ∀ (f : F.family), ∃ C : ℝ, ∀ (x : F.X.carrier), ‖F.operators f x‖ ≤ C * ‖x‖

theorem linear_operator_family_closed (F : LinearOperatorFamily) : LinearOperatorFamilyClosed F := by
  intro f
  exact F.boundedness f

end BanachSteinhausTheoremCanonicalLaneLean
end HautevilleHouse
