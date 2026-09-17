# Contributing to Kestara

Kestara is a process framework, not a runtime library — most contributions are improvements to the AI-DLC
phase definitions in `CLAUDE.md`/`AGENTS.md`, the `docs/` templates, the slash commands, or the validation
scripts. Treat changes to the phase methodology with the same care you'd want Kestara to apply to a real
WordPress project: understand why the current wording exists before changing it.

## Workflow

This repository protects `main`. All changes go through a pull request.

```text
Fork
 ↓
Feature branch  (feature/<short-description> or bugfix/<short-description>)
 ↓
Development
 ↓
Validation      (run scripts/validation/check-required-docs.sh; keep CLAUDE.md and AGENTS.md in sync)
 ↓
Pull Request
 ↓
Review
 ↓
Merge
```

1. Fork the repository and clone your fork.
2. Create a branch off `main`: `git checkout -b feature/my-change`.
3. Make your change. If you touch `CLAUDE.md`, mirror the same change in `AGENTS.md` (or vice versa) —
   the two files must never drift out of sync.
4. If you add or rename a phase deliverable, update:
   - the relevant phase section in `CLAUDE.md`/`AGENTS.md`,
   - the seeded template under `docs/`,
   - `scripts/validation/check-required-docs.sh` if it checks for that file.
5. Run `bash scripts/validation/check-required-docs.sh` and confirm it passes.
6. Open a pull request against `main` with a clear description of what changed and why.
7. A maintainer reviews and merges. Direct pushes to `main` are not permitted (see repository branch
   protection settings).

## What to avoid

- Don't add a new required plugin, tool, or framework opinion to the phase questionnaires without a strong
  reason — Kestara's whole premise is *asking* rather than assuming.
- Don't remove a `.gitignore` entry for secrets-shaped files.
- Don't invent new approval gates without also updating the §33 gate list and the phase that gates on it.

## Commit style

Use logical, scoped commits. Prefer several small commits that each make sense on their own over one large
commit that mixes unrelated changes.
