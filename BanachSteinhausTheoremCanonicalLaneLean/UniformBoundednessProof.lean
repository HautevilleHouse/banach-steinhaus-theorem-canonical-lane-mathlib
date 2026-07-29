import Mathlib.Analysis.NormedSpace.BanachSteinhaus
import HautevilleHouse.BanachSteinhausTheoremCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.BanachSteinhausTheoremCanonicalLaneLean.OperatorBoundedness

namespace HautevilleHouse
namespace BanachSteinhausTheoremCanonicalLaneLean

-- We use Mathlib's existing Banach-Steinhaus theorem.
open Real

structure UniformBoundednessProofPackage {X Y : Type} [NormedAddCommGroup X] [NormedAddCommGroup Y] [BanachSpace ℝ X] [BanachSpace ℝ Y] (F : Set (X →L[ℝ] Y)) where
  pointwiseBounded : ∀ x : X, ∃ M : ℝ, ∀ T ∈ F, ‖T x‖ ≤ M
  uniformBoundedWitness : ∃ M : ℝ, ∀ T ∈ F, ‖T‖ ≤ M
  proofTerm : pointwiseBounded → uniformBoundedWitness := by
    intro h
    exact BanachSteinhausTheorem.uniformBoundedness h

theorem banach_steinhaus_theorem (X Y : Type) [NormedAddCommGroup X] [NormedAddCommGroup Y] [BanachSpace ℝ X] [BanachSpace ℝ Y] (F : Set (X →L[ℝ] Y)) :
    (∀ x : X, ∃ M : ℝ, ∀ T ∈ F, ‖T x‖ ≤ M) → (∃ M : ℝ, ∀ T ∈ F, ‖T‖ ≤ M) :=
  BanachSteinhausTheorem.uniformBoundedness

structure BanachSteinhausProofEvidence {X Y : Type} [NormedAddCommGroup X] [NormedAddCommGroup Y] [BanachSpace ℝ X] [BanachSpace ℝ Y] (F : Set (X →L[ℝ] Y)) where
  pointwiseBoundedClosed : ∀ x : X, ∃ M : ℝ, ∀ T ∈ F, ‖T x‖ ≤ M
  uniformBoundedClosed : ∃ M : ℝ, ∀ T ∈ F, ‖T‖ ≤ M
  proofBridge : uniformBoundedClosed := BanachSteinhausTheorem.uniformBoundedness pointwiseBoundedClosed

def UniformBoundednessClosed {X Y : Type} [NormedAddCommGroup X] [NormedAddCommGroup Y] [BanachSpace ℝ X] [BanachSpace ℝ Y] (F : Set (X →L[ℝ] Y)) : Prop :=
  (∀ x : X, ∃ M : ℝ, ∀ T ∈ F, ‖T x‖ ≤ M) → (∃ M : ℝ, ∀ T ∈ F, ‖T‖ ≤ M)

theorem uniform_boundedness_closed_proof {X Y : Type} [NormedAddCommGroup X] [NormedAddCommGroup Y] [BanachSpace ℝ X] [BanachSpace ℝ Y] (F : Set (X →L[ℝ] Y)) :
    UniformBoundednessClosed F :=
  BanachSteinhausTheorem.uniformBoundedness

end BanachSteinhausTheoremCanonicalLaneLean
end HautevilleHouse
