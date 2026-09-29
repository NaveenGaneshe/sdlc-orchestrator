# Anti-over-engineering skill

## Apply when

Choosing a design during **Codify**, implementing during **Commit**, or reviewing either phase.

## Instructions

1. Read the simplicity principle in [`memory/constitution.md`](../memory/constitution.md).
2. Tie every proposed component, abstraction, dependency, option, and extension point to an approved requirement or acceptance criterion.
3. Prefer existing project patterns and platform capabilities.
4. Reject hypothetical configurability, premature generalization, duplicate layers, and unrelated cleanup.
5. Compare the plan with the smallest viable design. Record a more complex alternative only if rejecting it clarifies a consequential decision.
6. During review, request removal of unsupported complexity and verify the simpler design still meets requirements.

The goal is sufficient, maintainable software—not the fewest lines and not a framework for imagined future work.
