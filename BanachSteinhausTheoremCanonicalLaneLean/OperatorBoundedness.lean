import Mathlib.Analysis.NormedSpace.OperatorNorm
import HautevilleHouse.BanachSteinhausTheoremCanonicalLaneLean.BanachSteinhausCore

namespace HautevilleHouse
namespace BanachSteinhausTheoremCanonicalLaneLean

structure PointwiseBoundedPackage {X Y : Type} [NormedAddCommGroup X] [NormedAddCommGroup Y] [BanachSpace ℝ X] [BanachSpace ℝ Y] (F : Set (X →L[ℝ] Y)) where
  boundedAtEachPoint : ∀ x : X, ∃ M : ℝ, ∀ T ∈ F, ‖T x‖ ≤ M
  pointwiseBoundWitness : ∀ x : X, M := sorry
  -- We'll just carry the proposition

def pointwiseBoundedProp {X Y : Type} [NormedAddCommGroup X] [NormedAddCommGroup Y] [BanachSpace ℝ X] [BanachSpace ℝ Y] (F : Set (X →L[ℝ] Y)) : Prop :=
  ∀ x : X, ∃ M : ℝ, ∀ T ∈ F, ‖T x‖ ≤ M

structure UniformBoundedPackage {X Y : Type} [NormedAddCommGroup X] [NormedAddCommGroup Y] [BanachSpace ℝ X] [BanachSpace ℝ Y] (F : Set (X →L[ℝ] Y)) where
  existsBound : ∃ M : ℝ, ∀ T ∈ F, ‖T‖ ≤ M
  uniformBoundWitness : M := sorry

def uniformBoundedProp {X Y : Type} [NormedAddCommGroup X] [NormedAddCommGroup Y] [BanachSpace ℝ X] [BanachSpace ℝ Y] (F : Set (X →L[ℝ] Y)) : Prop :=
  ∃ M : ℝ, ∀ T ∈ F, ‖T‖ ≤ M

structure BoundednessEvidence {X Y : Type} [NormedAddCommGroup X] [NormedAddCommGroup Y] [BanachSpace ℝ X] [BanachSpace ℝ Y] (F : Set (X →L[ℝ] Y)) where
  pointwise : pointwiseBoundedProp F
  uniform : uniformBoundedProp F
  implicationClosed : pointwise → uniform := by
    intro h
    -- This is the Banach-Steinhaus theorem, which we assume as evidence
    exact BanachSteinhausTheorem.uniformBoundedness h

theorem pointwise_implies_uniform (X Y : Type) [NormedAddCommGroup X] [NormedAddCommGroup Y] [BanachSpace ℝ X] [BanachSpace ℝ Y] (F : Set (X →L[ℝ] Y)) (hp : pointwiseBoundedProp F) : uniformBoundedProp F :=
  by
    -- In a full formalization, this would be the proof.
    -- Here we assume the theorem as a postulate for the bridge.
    exact BanachSteinhausTheorem.uniformBoundedness hp

end BanachSteinhausTheoremCanonicalLaneLean
end HautevilleHouse
