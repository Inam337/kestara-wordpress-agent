# Changelog

All notable changes to this project are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

## [Unreleased]

### Changed
- Phase 04 (Design Handoff) question 2 now explicitly distinguishes **Figma** from a **Claude/Claude Code
  HTML design handoff** (e.g. `*.dc.html` prototype files) as separate design-source formats, instead of
  lumping them together.
- Added `CLAUDE.md`/`AGENTS.md` §8.1 — conversion rules specific to Claude/Claude Code HTML handoffs
  (inline styles → real stylesheets, `style-hover` → real `:hover`, unrolling proprietary templating,
  stripping tool-authoring artifacts, self-hosting fonts, deduplicating shared components, preserving
  literal placeholder tokens).
- `docs/design/design-analysis.md` seeded template updated to match, with a new "Claude / Claude Code
  Design Handoff Conversion Notes" checklist section.

## [0.1.0] - 2026-09-17

### Added
- Initial scaffold of the Kestara WordPress AI Engineering Agent.
- `CLAUDE.md` / `AGENTS.md` — full 24-phase AI-DLC operating contract.
- `.claude/commands/`: `/kestara-start`, `/kestara-status`, `/kestara-phase-report`, `/kestara-next-phase`.
- `.claude/agents/kestara-wp-engineer.md` subagent.
- Seeded `docs/` tree covering every phase deliverable defined in the contract.
- `templates/` and `examples/` reference material.
- `scripts/validation`, `scripts/setup`, `scripts/deployment` helper scripts.
- `.github/` PR template, issue templates, and a docs-validation CI workflow.
