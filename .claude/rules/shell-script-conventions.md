# scripts/ Conventions

Applies to every file under `scripts/validation/`, `scripts/setup/`, and `scripts/deployment/`.

- `#!/usr/bin/env bash` shebang, `set -euo pipefail` (or `set -uo pipefail` when the script deliberately
  must not exit non-zero on a missing-but-optional condition, e.g. a hook — document why inline when you
  deviate).
- `cd "$(dirname "$0")/../.."` (adjust `..` depth to the script's location) at the top, so the script works
  no matter which directory it's invoked from.
- Fail loud and early: check preconditions (required arg, required file) and `exit 1` with a one-line usage
  message before doing anything destructive.
- Never overwrite existing files/directories silently — check `[[ -e "$path" ]]` and refuse, per
  `scripts/setup/bootstrap-project.sh`'s pattern.
- A script that only inspects/reports state (like `scripts/validation/check-required-docs.sh`) must not
  modify anything — keep validation and mutation in separate scripts.
- Keep new scripts under the existing three folders (`validation/`, `setup/`, `deployment/`) by purpose;
  don't create a new top-level `scripts/` subfolder without updating `CLAUDE.md` §32's repository structure.
