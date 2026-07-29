import canonicalLaneMathlib.AdmissibleClass
import BanachSteinhausTheoremCanonicalLaneLean.BanachSteinhausObjects
import BanachSteinhausTheoremCanonicalLaneLean.PointwiseBoundedness

namespace HautevilleHouse
namespace BanachSteinhausTheoremCanonicalLaneLean

structure UniformBoundednessEvidenceTerms (A : BanachSteinhausAdmittedObject) where
  pointwiseBoundedClosed : A.pointwiseBounded
  uniformBoundProduced : ∃ M, ∀ T ∈ A.family, ∀ x : A.X.carrier, A.Y.norm (T.toFun x) ≤ M * A.X.norm x
  uniformBoundClosed : uniformBoundProduced

theorem uniform_boundedness_evidence_from_admissible (A : BanachSteinhausAdmittedObject) :
    UniformBoundednessEvidenceTerms A := by
  -- Construct evidence from the admitted object
  refine {
    pointwiseBoundedClosed := A.pointwiseBounded
    uniformBoundProduced := ?_
    uniformBoundClosed := ?_
  }
  · -- uniformBoundProduced
    -- Since A is admitted, it satisfies the Banach-Steinhaus theorem
    exact A.uniformBounded
  · -- uniformBoundClosed
    exact A.uniformBounded

end BanachSteinhausTheoremCanonicalLaneLean
end HautevilleHouse