import HautevilleHouse.BanachSteinhausTheoremCanonicalLaneLean.BanachSteinhausClosure

namespace HautevilleHouse
namespace BanachSteinhausTheoremCanonicalLaneLean

structure BanachSteinhausSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  norm : Type

structure BanachSteinhausAdmittedObject where
  space : BanachSteinhausSpace
  banachSpace : Prop
  familyOfOperators : Prop
  pointwiseBound : Prop
  conclusion : pointwiseBound → (∃ C, ∀ f in family, norm f ≤ C)

structure BanachSteinhausEndgameState where
  object : BanachSteinhausAdmittedObject

def BanachSteinhausWitnessClosed (O : BanachSteinhausAdmittedObject) : Prop :=
  O.pointwiseBound → (∃ C, ∀ f in O.familyOfOperators, O.space.norm f ≤ C)

end BanachSteinhausTheoremCanonicalLaneLean
end HautevilleHouse