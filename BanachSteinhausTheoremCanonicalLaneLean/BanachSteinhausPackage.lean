import canonicalLaneMathlib.AdmissibleClass
import BanachSteinhausTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BanachSteinhausTheoremCanonicalLaneLean

structure BanachSteinhausPackage (A : AdmissibleClass) where
  banachSpaces : Prop
  familyOfOperators : Prop
  pointwiseBound : Prop
  uniformBound : Prop
  banachSpacesProof : banachSpaces
  familyOfOperatorsProof : familyOfOperators
  pointwiseBoundProof : pointwiseBound
  uniformBoundProof : uniformBound

def BanachSteinhausPackageClosed (A : AdmissibleClass) (P : BanachSteinhausPackage A) : Prop :=
  P.banachSpaces ∧ P.familyOfOperators ∧ P.pointwiseBound ∧ P.uniformBound

theorem banach_steinhaus_package_closed (A : AdmissibleClass) (P : BanachSteinhausPackage A) :
    BanachSteinhausPackageClosed A P :=
  And.intro P.banachSpacesProof (And.intro P.familyOfOperatorsProof (And.intro P.pointwiseBoundProof P.uniformBoundProof))

end BanachSteinhausTheoremCanonicalLaneLean
end HautevilleHouse