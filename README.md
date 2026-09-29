# SDLC Orchestrator

A harness-agnostic workflow for coordinating spec-driven software delivery across teams, repositories, and AI coding agents.

## Philosophy

SDLC Orchestrator combines three ideas:

- **ECC discipline:** Explore the problem and its context, Codify the findings in reviewable artifacts, then Commit to implementation only after an explicit checkpoint.
- **Spec-driven delivery:** Move from specification to plan to tasks to implementation, with durable artifacts rather than prompt-only decisions.
- **Cross-team orchestration:** Record ownership, dependencies, blockers, and escalation paths so related work remains visible across team and repository boundaries.

The [constitution](memory/constitution.md) defines the non-negotiable principles for every contributor and agent.

## Quickstart

1. Read [`memory/constitution.md`](memory/constitution.md).
2. Create a feature workspace:
   ```bash
   ./scripts/new-feature.sh dependency-dashboard
   ```
3. Complete `spec.md` (**Explore**) and obtain specification approval.
4. Complete `plan.md` and `tasks.md` (**Codify**), recording owners and dependencies.
5. Pass the plan checkpoint, then implement tasks test-first (**Commit**).
6. Keep task and ownership status current through review and delivery.

Use the files in [`skills/`](skills/) as reusable agent instructions. See the [harness integration guide](docs/harness-integration.md) for adapter examples.

## Directory map

| Path | Purpose |
| --- | --- |
| `memory/constitution.md` | Governing principles and lifecycle checkpoints |
| `templates/` | Templates for specifications, plans, tasks, and ownership |
| `specs/` | Numbered feature workspaces and durable delivery artifacts |
| `skills/` | Harness-neutral planning, TDD, review, and simplicity instructions |
| `scripts/` | Portable workflow helpers |
| `docs/` | Cross-team orchestration and harness integration guides |

See [`CONTRIBUTING.md`](CONTRIBUTING.md) before proposing changes.
