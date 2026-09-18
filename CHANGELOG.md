# Changelog

All notable changes to this project are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

## [Unreleased]

### Changed
- **Questions are now asked one at a time, in every phase, starting from `/kestara-start`.** The §3
  Question Behavior rule previously said to "group related questions," which had been read (correctly, per
  the literal wording) as license to present a whole phase's question list in one message. That's now
  explicit: the named groups (e.g. Phase 00's Project/Repository/Local Environment) are for `docs/`
  organization only — in conversation, ask one question, wait for the developer's answer, record it, then
  ask the next. Updated `.claude/commands/kestara-start.md` and `kestara-next-phase.md`, and the §36 first-
  message script, to match.

### Added
- New **§9.1 Missing Dependency / Environment Setup Protocol** (`CLAUDE.md`/`AGENTS.md`) — closes a real
  gap: previously, Phase 00/05 only *asked about and verified* whether WordPress, PHP, MySQL, WP-CLI, or
  Docker/XAMPP/Local were available, with no instruction for what to do if they weren't. Now, whenever any
  phase discovers a required runtime/tool/service is missing, the agent must ask explicit approval before
  installing or configuring it, install/configure only what's approved, verify it actually works, document
  it, and only then proceed — the same shape as the existing Plugin Installation Approval Gate (§11.3), but
  for everything below the plugin layer. Referenced from §1 Core Principles and the Quick Reference.
  `docs/wordpress/foundation.md` seeded template updated with a dependency-tracking table.

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
