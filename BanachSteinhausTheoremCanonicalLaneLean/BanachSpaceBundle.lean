import HautevilleHouse.BanachSteinhausTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BanachSteinhausTheoremCanonicalLaneLean

structure BanachSpaceBundle where
  baseSpace : BanachSpace
  fiberSpace : BanachSpace
  normOnFiber : baseSpace.carrier → ℝ
  continuousNorm : Continuous normOnFiber

def BanachSpaceBundleClosed (B : BanachSpaceBundle) : Prop :=
  B.continuousNorm

theorem banach_space_bundle_closed (B : BanachSpaceBundle) : BanachSpaceBundleClosed B := by
  exact B.continuousNorm

end BanachSteinhausTheoremCanonicalLaneLean
end HautevilleHouse
