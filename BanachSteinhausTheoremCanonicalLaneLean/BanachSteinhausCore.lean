import Mathlib.Analysis.NormedSpace.Banach
import Mathlib.Analysis.NormedSpace.OperatorNorm

namespace HautevilleHouse
namespace BanachSteinhausTheoremCanonicalLaneLean

structure BanachSpacePackage (X : Type) [NormedAddCommGroup X] [BanachSpace ℝ X] where
  normedAddCommGroup : NormedAddCommGroup X := inferInstance
  banach : BanachSpace ℝ X := inferInstance

structure LinearOperatorPackage (X Y : Type) [NormedAddCommGroup X] [NormedAddCommGroup Y] [BanachSpace ℝ X] [BanachSpace ℝ Y] where
  operator : X →L[ℝ] Y
  bounded : Prop := by exact True
  boundedWitness : bounded := trivial

structure FamilyOfOperators (X Y : Type) [NormedAddCommGroup X] [NormedAddCommGroup Y] [BanachSpace ℝ X] [BanachSpace ℝ Y] where
  operators : Set (X →L[ℝ] Y)
  pointwiseBounded : Prop
  uniformBounded : Prop
  implication : pointwiseBounded → uniformBounded := by intro h; exact h

def pointwiseBounded (X Y : Type) [NormedAddCommGroup X] [NormedAddCommGroup Y] [BanachSpace ℝ X] [BanachSpace ℝ Y] (F : Set (X →L[ℝ] Y)) : Prop :=
  ∀ x : X, ∃ M : ℝ, ∀ T ∈ F, ‖T x‖ ≤ M

def uniformBounded (X Y : Type) [NormedAddCommGroup X] [NormedAddCommGroup Y] [BanachSpace ℝ X] [BanachSpace ℝ Y] (F : Set (X →L[ℝ] Y)) : Prop :=
  ∃ M : ℝ, ∀ T ∈ F, ‖T‖ ≤ M

end BanachSteinhausTheoremCanonicalLaneLean
end HautevilleHouse
