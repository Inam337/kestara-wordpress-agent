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
- Broader pass over all 24 phases for the same class of under-specified question. Fixed in Phase 03
  (Technical Decisions, `CLAUDE.md`/`AGENTS.md` §7):
  - Q3/Q4 (editor/theme model) now flag that classic-editor+classic-theme and Gutenberg+block-theme are the
    two coherent pairings, and block themes imply a different Phase 08 architecture (`theme.json`/patterns)
    entirely.
  - Q9 (CSS approach) now enumerates Custom CSS / Tailwind / Bootstrap with the concrete implication of
    each (naming convention, build pipeline, self-host-vs-CDN + unused-CSS risk) instead of a flat list.
  - New **§7.1 Frontend Architecture Fork** — traditional server-rendered WordPress vs. decoupled/headless
    — must be resolved before Q11 (JS framework), Q18 (data-fetching), Q19 (form strategy), or Q22
    (asset/build strategy) are answered, since those questions mean different things depending on it.
  - Q15 (font strategy), Q19–23 (form/SEO/caching/translation strategy) now state their scope explicitly
    and cross-reference where the *specific* plugin gets chosen (Phase 07 §11.1), removing the ambiguity
    between "high-level approach here" vs. "specific tool there."
  - `docs/architecture/technical-decisions.md` seeded template updated to match.
  - Phase 13 (SEO) Q11 "Schema types?" now lists concrete examples (Organization, LocalBusiness,
    Article/BlogPosting, Product, FAQPage, BreadcrumbList, Review/AggregateRating, Event) instead of being
    fully open-ended; `docs/seo/seo-checklist.md` updated to match.

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
