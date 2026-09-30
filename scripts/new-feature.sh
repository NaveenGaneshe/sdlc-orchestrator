#!/usr/bin/env bash
set -euo pipefail

usage() {
  echo "Usage: $0 <lowercase-kebab-case-feature-name>" >&2
}

if [[ $# -ne 1 || ! "$1" =~ ^[a-z0-9]+(-[a-z0-9]+)*$ ]]; then
  usage
  exit 1
fi

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
repo_root="$(cd "$script_dir/.." && pwd)"
specs_dir="$repo_root/specs"
templates_dir="$repo_root/templates"
max=0

for directory in "$specs_dir"/[0-9][0-9][0-9]-*; do
  [[ -d "$directory" ]] || continue
  prefix="$(basename "$directory")"
  prefix="${prefix%%-*}"
  number=$((10#$prefix))
  (( number > max )) && max=$number
done

next=$((max + 1))
if (( next > 999 )); then
  echo "Error: feature number exceeds the three-digit convention." >&2
  exit 1
fi

printf -v number "%03d" "$next"
feature_dir="$specs_dir/$number-$1"

if [[ -e "$feature_dir" ]]; then
  echo "Error: $feature_dir already exists." >&2
  exit 1
fi

mkdir "$feature_dir"
cp "$templates_dir/spec-template.md" "$feature_dir/spec.md"
cp "$templates_dir/plan-template.md" "$feature_dir/plan.md"
cp "$templates_dir/tasks-template.md" "$feature_dir/tasks.md"
cp "$templates_dir/ownership-template.md" "$feature_dir/ownership.md"

echo "Created ${feature_dir#"$repo_root/"}"
