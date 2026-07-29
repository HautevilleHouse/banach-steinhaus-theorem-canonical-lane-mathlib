import HautevilleHouse.BanachSteinhausTheoremCanonicalLaneLean.OperatorTopology

namespace HautevilleHouse
namespace BanachSteinhausTheoremCanonicalLaneLean

structure FrechetSpacePackage {U : UniformBoundednessPrinciplePackage}
    (T : OperatorTopologyPackage U) where
  space : Type u
  topology : TopologicalSpace space
  complete : Prop
  metrizable : Prop
  conclusion : complete ∧ metrizable

structure FrechetSpaceEvidence {U : UniformBoundednessPrinciplePackage}
    {T : OperatorTopologyPackage U} (F : FrechetSpacePackage T) where
  completeClosed : F.complete
  metrizableClosed : F.metrizable

def FrechetSpaceClosed {U : UniformBoundednessPrinciplePackage}
    {T : OperatorTopologyPackage U} (F : FrechetSpacePackage T) : Prop :=
  F.complete ∧ F.metrizable

theorem frechet_space_closed_from_evidence
    {U : UniformBoundednessPrinciplePackage} {T : OperatorTopologyPackage U}
    (F : FrechetSpacePackage T) (E : FrechetSpaceEvidence F) :
    FrechetSpaceClosed F := by
  exact And.intro E.completeClosed E.metrizableClosed

end BanachSteinhausTheoremCanonicalLaneLean
end HautevilleHouse