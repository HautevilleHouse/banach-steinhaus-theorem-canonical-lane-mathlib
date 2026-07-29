import BanachSteinhausTheoremCanonicalLaneLean.BanachSteinhausPackage

namespace HautevilleHouse
namespace BanachSteinhausTheoremCanonicalLaneLean

structure UniformBoundednessEvidence (A : AdmissibleClass) (P : BanachSteinhausPackage A) where
  pointwiseBoundedImpliesUniform : P.pointwiseBound → P.uniformBound
  evidenceProof : pointwiseBoundedImpliesUniform

def UniformBoundednessClosed (A : AdmissibleClass) (P : BanachSteinhausPackage A) : Prop :=
  P.pointwiseBound → P.uniformBound

theorem uniform_boundedness_closed (A : AdmissibleClass) (P : BanachSteinhausPackage A)
    (E : UniformBoundednessEvidence A P) : UniformBoundednessClosed A P :=
  E.evidenceProof

end BanachSteinhausTheoremCanonicalLaneLean
end HautevilleHouse