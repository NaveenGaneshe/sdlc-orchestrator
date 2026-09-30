# Harness integration

The repository is the source of truth; harness-specific files are thin adapters. Every adapter should instruct the agent to read [`memory/constitution.md`](../memory/constitution.md), follow the ECC checkpoints, and load the relevant file from [`skills/`](../skills/).

| Harness | Typical repository instructions | Suggested adapter |
| --- | --- | --- |
| Claude Code | `CLAUDE.md`; reusable skills under `.claude/skills/` | Reference the constitution from `CLAUDE.md`; create small skill wrappers whose instructions point to this repository's `skills/*.md`. |
| Codex | `AGENTS.md`; skills may be exposed through the agent environment | Reference the constitution and skill paths from the nearest applicable `AGENTS.md`. |
| Cursor | Project rules under `.cursor/rules/`; commands under `.cursor/commands/` | Add a rule that points to the constitution and create command adapters for the planning/TDD/review workflow. |
| Other harnesses | Repository/system instruction or custom prompt location | Include the bootstrap text below and expose `skills/*.md` as read-only workflow instructions. |

Harness conventions evolve; consult the installed harness documentation for exact discovery paths. Do not duplicate the full constitution into adapters, because copies drift.

## Minimal bootstrap instruction

```text
Before changing code, read memory/constitution.md. Follow Explore, Codify,
and Commit checkpoints. For the current activity, apply the relevant
instruction in skills/ and keep the numbered feature's spec.md, plan.md,
tasks.md, and ownership.md current.
```

## Mapping slash-style workflows

Harnesses that support custom commands can map `/specify` to the Explore and specification checkpoint, `/plan` to the Codify plan, `/tasks` to the owned task breakdown, and `/implement` to the approved Commit phase. Commands should copy from [`templates/`](../templates/) or invoke [`scripts/new-feature.sh`](../scripts/new-feature.sh); they must not skip approval gates.
