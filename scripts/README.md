# Scripts

## Create a feature workspace

From the repository root:

```bash
./scripts/new-feature.sh feature-name
```

The name must use lowercase kebab-case. The script finds the highest existing three-digit feature number, creates the next `specs/NNN-feature-name/` directory, and copies the spec, plan, tasks, and ownership templates. It does not overwrite existing work.
