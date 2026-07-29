import HautevilleHouse.BanachSteinhausTheoremCanonicalLaneLean.UniformBoundednessPrinciple

namespace HautevilleHouse
namespace BanachSteinhausTheoremCanonicalLaneLean

structure OperatorTopologyPackage (U : UniformBoundednessPrinciplePackage) where
  strongTopology : Type u
  weakTopology : Type v
  strongImpliesWeak : Prop
  weakBoundedness : Prop
  strongBoundedness : Prop

structure OperatorTopologyEvidence {U : UniformBoundednessPrinciplePackage}
    (T : OperatorTopologyPackage U) where
  strongImpliesWeakClosed : T.strongImpliesWeak
  weakBoundednessClosed : T.weakBoundedness
  strongBoundednessClosed : T.strongBoundedness

def OperatorTopologyClosed {U : UniformBoundednessPrinciplePackage}
    (T : OperatorTopologyPackage U) : Prop :=
  T.strongImpliesWeak ∧ T.weakBoundedness ∧ T.strongBoundedness

theorem operator_topology_closed_from_evidence
    {U : UniformBoundednessPrinciplePackage} (T : OperatorTopologyPackage U)
    (E : OperatorTopologyEvidence T) : OperatorTopologyClosed T := by
  exact And.intro E.strongImpliesWeakClosed
    (And.intro E.weakBoundednessClosed E.strongBoundednessClosed)

end BanachSteinhausTheoremCanonicalLaneLean
end HautevilleHouse