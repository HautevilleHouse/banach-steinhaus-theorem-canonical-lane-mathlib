import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachSteinhausTheoremCanonicalLaneLean

structure BanachSpace where
  carrier : Type u
  norm : carrier → ℝ
  norm_nonneg : ∀ x, 0 ≤ norm x
  norm_eq_zero_iff : ∀ x, norm x = 0 ↔ x = 0
  norm_triangle : ∀ x y, norm (x + y) ≤ norm x + norm y
  norm_smul : ∀ (α : ℝ) (x : carrier), norm (α • x) = |α| * norm x
  complete : ∀ (f : ℕ → carrier), (∀ ε > 0, ∃ N, ∀ m n ≥ N, norm (f m - f n) < ε) → ∃ L, ∀ ε > 0, ∃ N, ∀ n ≥ N, norm (f n - L) < ε

structure BoundedLinearOperator (X Y : BanachSpace) where
  toFun : X.carrier → Y.carrier
  linear : ∀ x y, toFun (x + y) = toFun x + toFun y ∧ ∀ (α : ℝ) x, toFun (α • x) = α • toFun x
  bounded : ∃ M, ∀ x, Y.norm (toFun x) ≤ M * X.norm x

structure BanachSteinhausAdmittedObject where
  X : BanachSpace
  Y : BanachSpace
  family : Set (BoundedLinearOperator X Y)
  pointwiseBounded : ∀ x : X.carrier, ∃ C, ∀ T ∈ family, Y.norm (T.toFun x) ≤ C

structure BanachSteinhausWitness where
  uniformBound : ℝ
  uniformBoundProperty : ∀ T ∈ family, Y.norm (T.toFun ·) ≤ uniformBound
  conclusion : uniformBoundProperty

def BanachSteinhausWitnessClosed (O : BanachSteinhausAdmittedObject) : Prop :=
  ∃ w : BanachSteinhausWitness, w.uniformBoundProperty = O.pointwiseBounded

end BanachSteinhausTheoremCanonicalLaneLean
end HautevilleHouse
