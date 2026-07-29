import canonicalLaneMathlib.AdmissibleClass
import BanachSteinhausTheoremCanonicalLaneLean.BanachSteinhausObjects

namespace HautevilleHouse
namespace BanachSteinhausTheoremCanonicalLaneLean

structure BanachSteinhausStatement where
  sourceKey : String
  theoremName : String
  statement : String
  classicalBoundary : String
  carriedRemainder : String

def sourceBanachSteinhausStatement : BanachSteinhausStatement :=
  { sourceKey := "Banach-Steinhaus",
    theoremName := "Banach-Steinhaus Theorem (Uniform Boundedness Principle)",
    statement := "For a family of bounded linear operators from a Banach space to a normed space, pointwise boundedness implies uniform boundedness.",
    classicalBoundary := "The completeness of the domain Banach space is used.",
    carriedRemainder := "The uniform bound is not constructive." }

theorem banach_steinhaus_statement_imported : sourceBanachSteinhausStatement.sourceKey = "Banach-Steinhaus" := by rfl

end BanachSteinhausTheoremCanonicalLaneLean
end HautevilleHouse
