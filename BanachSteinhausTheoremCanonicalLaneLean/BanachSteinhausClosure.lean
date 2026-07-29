import HautevilleHouse.BanachSteinhausTheoremCanonicalLaneLean.FrechetSpace

namespace HautevilleHouse
namespace BanachSteinhausTheoremCanonicalLaneLean

def ConstrainedBanachSteinhausClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_banach_steinhaus_endgame (A : AdmissibleClass) :
    ConstrainedBanachSteinhausClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BanachSteinhausTheoremCanonicalLaneLean
end HautevilleHouse