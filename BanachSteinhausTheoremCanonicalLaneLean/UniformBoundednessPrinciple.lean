import HautevilleHouse.BanachSteinhausTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BanachSteinhausTheoremCanonicalLaneLean

structure UniformBoundednessPrinciplePackage where
  family : Type u
  operatorFamily : family → (Type v → Type w)
  pointwiseBounded : Prop
  uniformBounded : Prop
  conclusion : uniformBounded

structure UniformBoundednessEvidence (U : UniformBoundednessPrinciplePackage) where
  pointwiseBoundedClosed : U.pointwiseBounded
  uniformBoundedClosed : U.uniformBounded

def UniformBoundednessClosed (U : UniformBoundednessPrinciplePackage) : Prop :=
  U.pointwiseBounded ∧ U.uniformBounded

theorem uniform_boundedness_closed_from_evidence
    (U : UniformBoundednessPrinciplePackage) (E : UniformBoundednessEvidence U) :
    UniformBoundednessClosed U := by
  exact And.intro E.pointwiseBoundedClosed E.uniformBoundedClosed

end BanachSteinhausTheoremCanonicalLaneLean
end HautevilleHouse