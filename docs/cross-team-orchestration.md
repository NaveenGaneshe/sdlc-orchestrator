# Cross-team orchestration

Cross-team coordination is kept in durable artifacts so it is visible without access to a particular chat or agent harness.

## Ownership ledger

Start with [`templates/ownership-template.md`](../templates/ownership-template.md). A coordinating team may maintain one shared ledger, while a feature may keep `ownership.md` in its numbered directory. Each row names:

- the accountable team and owner;
- the component, specification, repository, or tracking link;
- dependent teams and the exact outcome they require;
- `Clear`, `At risk`, or `Blocked` status;
- a contact and escalation path; and
- the last update date.

The accountable owner updates the row when status changes. Dependent teams link the same dependency from their `plan.md` and task `Depends on` fields rather than copying ambiguous summaries.

## Dependency and status flow

1. During ECC **Explore**, identify upstream and downstream teams, contracts, dates, and owners.
2. During **Codify**, add plan dependency rows and task links. Create or update ownership ledger entries.
3. At the plan checkpoint, owners confirm required outcomes and escalation routes.
4. During **Commit**, task owners update task status; accountable owners update the ledger when a dependency becomes at risk, blocked, or clear.
5. Status reports summarize completed work, next outcomes, and only the blockers needing action, with links to source artifacts.

For dependencies in another repository, use a stable URL to that repository's numbered spec or issue and keep the authoritative status with its owning team.

## Worked example

Team Atlas owns an Orders API change in repository `orders`; Team Beacon owns a Checkout UI in repository `checkout`. Beacon needs Atlas to publish a new `deliveryEstimate` response field before it can complete integration.

Atlas records:

| Team | Component / spec | Owner | Dependent team | Required outcome | Status | Escalation |
| --- | --- | --- | --- | --- | --- | --- |
| Atlas | `orders/specs/014-delivery-estimate` | Orders API lead | Beacon | Versioned API contract and test endpoint | At risk | `#orders-api`, then engineering manager |

Beacon links Atlas's spec from its plan dependency table and marks integration task `T004` as depending on that URL. A schema test can proceed, but `T004` becomes `blocked` if the agreed endpoint date passes. When Atlas publishes the contract and endpoint, Atlas marks the ledger `Clear`; Beacon records the contract version, unblocks `T004`, and continues test-first implementation. There is one authoritative dependency outcome and both teams can report its effect.
