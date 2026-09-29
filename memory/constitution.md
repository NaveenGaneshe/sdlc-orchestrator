# SDLC Orchestrator Constitution

All human contributors and AI agents must follow these principles.

## I. Specification before implementation

Every material change starts with a numbered feature specification in `specs/`. The specification states the problem, intended outcomes, boundaries, scenarios, requirements, and acceptance criteria without prescribing unnecessary implementation details.

## II. The ECC lifecycle is mandatory

Work advances through explicit phases:

1. **Explore:** Inspect relevant code, documentation, constraints, ownership, and dependencies. Resolve or record material unknowns.
2. **Codify:** Capture findings in an approved `spec.md`, then an actionable `plan.md` and `tasks.md`. Decisions must be reviewable outside the agent conversation.
3. **Commit:** Implement only after the specification and plan checkpoints pass. Make small, traceable changes and update status as reality changes.

Agents must not jump directly from a request to code. Urgent exceptions must document why a checkpoint was compressed and who accepted the risk.

## III. Tests drive behavior

For behavioral changes, define a failing test or other reproducible verification before implementation, implement the smallest passing change, then refactor while green. Each task records its test evidence. If automated testing is impractical, document the reason and a repeatable manual check.

## IV. Simplicity over speculation

Choose the smallest design that satisfies approved requirements. Do not add abstractions, configuration, dependencies, or extensibility for hypothetical needs. Reuse established patterns and remove accidental complexity encountered within the change's scope.

## V. Ownership and dependencies are explicit

Every task has an owner and status. Cross-team or cross-repository dependencies identify the owning team, required outcome, current blocking state, and escalation route. Blockers are reported promptly and never hidden behind optimistic status.

## VI. Review is evidence-based

Review changes against the specification, acceptance criteria, plan, tests, security expectations, and dependency contracts. Findings should be concrete and prioritized. Delivery requires traceability from requirements to tasks to verification.

## Checkpoints

| Gate | Required evidence | Exit condition |
| --- | --- | --- |
| Explore → Codify | Context gathered; owners, constraints, and unknowns identified | Problem and boundaries are understood well enough to write the spec |
| Specification | Completed `spec.md` | Acceptance criteria and non-goals are approved; material questions are resolved or assigned |
| Plan | Completed `plan.md`, `tasks.md`, and relevant ownership entries | Design, verification, sequence, owners, and dependencies are approved |
| Commit → Deliver | Implemented tasks and review evidence | Acceptance criteria pass; status and dependency records reflect reality |

Amendments to this constitution require a reviewed specification explaining the motivation, compatibility impact, and migration needed for existing features.
