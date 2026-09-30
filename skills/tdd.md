# TDD skill

## Apply when

Implementing or correcting observable behavior during the ECC **Commit** phase.

## Instructions

1. Read [`memory/constitution.md`](../memory/constitution.md) and confirm the specification and plan checkpoints passed.
2. Select one task and identify its linked requirement and acceptance criterion.
3. **Red:** Add the smallest focused test that fails for the intended reason. If automation is impractical, define a repeatable check and document why.
4. **Green:** Make the smallest production change that passes the focused test.
5. **Refactor:** Improve only the changed design while focused and relevant regression tests stay green.
6. Record the test command or evidence in `tasks.md`; do not mark the task done without it.

Avoid broad rewrites, speculative edge cases, and tests coupled to implementation details.
