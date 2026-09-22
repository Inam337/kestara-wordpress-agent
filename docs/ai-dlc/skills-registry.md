# Skills Registry

This is the live index of every Kestara skill: which ones exist, what triggers them, what they depend on,
and their status **for the current project**. It is a project-state file (like
`docs/ai-dlc/phase-status.md`) — update it as skills activate and complete, don't just leave it as a
catalog.

See `CLAUDE.md` §39 for how skills are selected, sequenced, and gated, and `templates/skill-template.md` for
the structure every skill file follows.

## How to read this file

- **Phase skills** run in strict phase order (00 → 23) and mirror the existing AI-DLC phases in `CLAUDE.md`
  §4–§27. They are never skipped; a phase with nothing to do is marked "not applicable" with a one-line
  reason, not silently omitted.
- **Capability skills** are not tied to a phase number. They activate the moment their trigger condition is
  first detected (usually during Phase 01 Discovery, Phase 02 Requirements, or Phase 03 Technical
  Decisions), run inline within whichever phase surfaced the need, and must be re-validated before Phase 19
  Final QA / Phase 20 Deployment. A project that never triggers a capability skill's condition simply never
  activates it — that is the expected, common case, not a gap.
- Status values: `not-needed`, `not-yet-evaluated`, `pending` (triggered, not started), `active`,
  `blocked` (see blocker in `docs/ai-dlc/phase-status.md`), `complete`.

## Phase Skills

| # | Skill | Directory | Depends On | Status |
|---|---|---|---|---|
| 00 | Project Initialization | `.claude/skills/phase-00-project-initialization/` | — | not-yet-evaluated |
| 01 | Discovery | `.claude/skills/phase-01-discovery/` | Phase 00 | not-yet-evaluated |
| 02 | Requirements | `.claude/skills/phase-02-requirements/` | Phase 01 | not-yet-evaluated |
| 03 | Technical Decisions | `.claude/skills/phase-03-technical-decisions/` | Gate 1 | not-yet-evaluated |
| 04 | Design Handoff | `.claude/skills/phase-04-design-handoff/` | Gate 2 | not-yet-evaluated |
| 05 | WordPress Foundation | `.claude/skills/phase-05-wordpress-foundation/` | Gate 2 | not-yet-evaluated |
| 06 | Content & Database Architecture | `.claude/skills/phase-06-content-database-architecture/` | Gate 3, Gate 5 | not-yet-evaluated |
| 07 | Plugin Architecture | `.claude/skills/phase-07-plugin-architecture/` | Phase 06 | not-yet-evaluated |
| 08 | Theme Architecture | `.claude/skills/phase-08-theme-architecture/` | Phase 07 | not-yet-evaluated |
| 09 | Design System | `.claude/skills/phase-09-design-system/` | Phase 08 | not-yet-evaluated |
| 10 | Global Components | `.claude/skills/phase-10-global-components/` | Gate 6 | not-yet-evaluated |
| 11 | Page Development | `.claude/skills/phase-11-page-development/` | Gate 7 | not-yet-evaluated |
| 12 | ACF / CMS Development | `.claude/skills/phase-12-acf-cms-development/` | Gate 8 | not-yet-evaluated |
| 13 | SEO | `.claude/skills/phase-13-seo/` | Gate 9 | not-yet-evaluated |
| 14 | Responsive QA | `.claude/skills/phase-14-responsive-qa/` | Gate 10 | not-yet-evaluated |
| 15 | Accessibility | `.claude/skills/phase-15-accessibility/` | Gate 10 | not-yet-evaluated |
| 16 | Cross-Browser QA | `.claude/skills/phase-16-cross-browser-qa/` | Gate 10 | not-yet-evaluated |
| 17 | Performance | `.claude/skills/phase-17-performance/` | Gate 11 | not-yet-evaluated |
| 18 | Security | `.claude/skills/phase-18-security/` | Gate 12 | not-yet-evaluated |
| 19 | Final QA | `.claude/skills/phase-19-final-qa/` | Gate 13 | not-yet-evaluated |
| 20 | Deployment | `.claude/skills/phase-20-deployment/` | Gate 14 | not-yet-evaluated |
| 21 | Production Verification | `.claude/skills/phase-21-production-verification/` | Gate 15 | not-yet-evaluated |
| 22 | Documentation | `.claude/skills/phase-22-documentation/` | Gate 16 | not-yet-evaluated |
| 23 | Maintenance | `.claude/skills/phase-23-maintenance/` | Gate 17 | not-yet-evaluated |

## Capability Skills

These are added as their trigger condition appears in a real project. None ship "always on."

| Skill | Trigger Condition | Depends On | Status | Notes |
|---|---|---|---|---|
| Third-Party API Integration | Requirements/Technical Decisions name any external API or third-party service the WordPress site must talk to | Gate 1 (Requirements confirmed) | not-implemented | Planned next — see `CLAUDE.md` §39.3. General-purpose lifecycle skill; specialized integrations below extend it. |
| Stripe Integration | Payments requirement names Stripe specifically | Third-Party API Integration skill | not-implemented | Build on demand when a project needs it. |
| WooCommerce Setup | E-commerce requirement (Phase 07 Q15) selects WooCommerce | Phase 07 Plugin Architecture | not-implemented | Build on demand when a project needs it. |

Add a row here (as `not-implemented`) the moment a new capability skill is planned but not yet built, so
the registry stays the single place that shows both "what exists" and "what's been requested but not
started yet."

## Change Log

- 2026-09-22 — Registry created alongside the initial 24 phase skills and skill-authoring scaffolding.
  Third-Party API Integration and the two named specializations (Stripe, WooCommerce) recorded as
  `not-implemented` per developer decision to build phase skills first.
