import HautevilleHouse.BanachSteinhausTheoremCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace BanachSteinhausTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  banachSteinhausConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  {
    sourceKey := "banach-steinhaus-canonical-lane"
    theoremName := "BanachSteinhausTheorem"
    theoremObject := "Uniform boundedness principle"
    classicalBoundary := "classical source boundary carried by formalization certificate"
    banachSteinhausConstrainedStatement := "Banach-Steinhaus theorem internalized through admissible closure"
    certificateLane := "banach_steinhaus_constrained"
    carriedRemainder := "uniform boundedness closure remains at the theorem boundary"
  }

theorem source_key_defined : sourceTheoremStatement.sourceKey = "banach-steinhaus-canonical-lane" := by
  rfl

end BanachSteinhausTheoremCanonicalLaneLean
end HautevilleHouse