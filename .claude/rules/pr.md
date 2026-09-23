# PR & Commit Rules

Source of truth: `CONTRIBUTING.md`. This file exists so Claude Code applies that workflow automatically
instead of it being something a contributor has to remember to open and re-read.

- Every change to `main` goes through a pull request from a `feature/<short-description>` or
  `bugfix/<short-description>` branch. No direct pushes to `main`.
- Before opening a PR: run `bash scripts/validation/check-required-docs.sh` and confirm it passes.
- If the change touches `CLAUDE.md`, mirror it in `AGENTS.md` in the same PR (or vice versa) — per
  `CLAUDE.md`'s own header, these two files must never drift out of sync.
- If a phase deliverable is added or renamed, update in the same PR: the phase section in
  `CLAUDE.md`/`AGENTS.md`, the seeded template under `docs/`, and
  `scripts/validation/check-required-docs.sh` if it checks that file.
- Commits: logical and scoped. Several small commits that each stand on their own beat one large commit
  mixing unrelated changes.
- Never commit anything `.gitignore` excludes for secrets — don't remove a secrets-shaped `.gitignore`
  entry to make a commit succeed.
