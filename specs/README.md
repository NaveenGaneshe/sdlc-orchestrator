# Feature specifications

Each material feature lives in a zero-padded, sequential directory:

```text
specs/
└── 001-feature-name/
    ├── spec.md
    ├── plan.md
    ├── tasks.md
    └── ownership.md
```

Use lowercase kebab-case after the three-digit number. Numbers provide a stable local identity; they do not imply priority. Never reuse a number after a feature is retired.

Run `./scripts/new-feature.sh feature-name` from the repository root to copy the templates into the next directory. Progress through `spec.md`, `plan.md`, and `tasks.md` in the ECC order defined by the [constitution](../memory/constitution.md). Use `ownership.md` for feature-specific coordination, or link to a shared ledger maintained by the coordinating team.
