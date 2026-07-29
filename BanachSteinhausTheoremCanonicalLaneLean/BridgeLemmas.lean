import HautevilleHouse.BanachSteinhausTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BanachSteinhausTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BanachSteinhausWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.uniformBounded

end BanachSteinhausTheoremCanonicalLaneLean
end HautevilleHouse