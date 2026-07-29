import Mathlib.Analysis.NormedSpace.Banach

namespace HautevilleHouse
namespace BanachSteinhausTheoremCanonicalLaneLean

structure BanachSteinhausAdmittedObject where
  indexType : Type
  domain : Type
  codomain : Type
  [domainNormedAddCommGroup : NormedAddCommGroup domain]
  [domainBanachSpace : BanachSpace domain]
  [codomainNormedAddCommGroup : NormedAddCommGroup codomain]
  [codomainBanachSpace : BanachSpace codomain]
  operators : indexType → domain →L[ℝ] codomain
  pointwiseBounded : ∀ x : domain, ∃ C : ℝ, ∀ i : indexType, ‖operators i x‖ ≤ C
  uniformBounded : ∃ C : ℝ, ∀ i : indexType, ‖operators i‖ ≤ C

def BanachSteinhausWitnessClosed (O : BanachSteinhausAdmittedObject) : Prop :=
  O.uniformBounded

structure AdmissibleClass where
  object : BanachSteinhausAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BanachSteinhausWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BanachSteinhausTheoremCanonicalLaneLean
end HautevilleHouse