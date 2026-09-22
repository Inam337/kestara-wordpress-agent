---
name: phase-11-page-development
description: Execute Kestara AI-DLC Phase 11 — Page Development. Build each page, one at a time, from its approved design handoff, wiring frontend and CMS together. Use once Gate 7 (Global components approved) is passed. Runs once per page — track each page's status under docs/pages/<page-slug>.md.
---

# Phase 11 — Page Development

## Purpose

Develop each page from its approved handoff, per `CLAUDE.md` §15, satisfying Approval Gate 8 ("Page
development approved"). This skill runs once per page, never as a blind batch build of every page at once.

## Required Inputs & Prerequisites

- Approval Gate 7 passed (global components built and approved).
- The specific page's design handoff (Phase 04) and content model (Phase 06) available.

## Step-by-Step Workflow

For each page, in order:

1. Ask §15's per-page questions 1–13 one at a time (handoff approved, design reference available, reusable
   components, unique sections, dynamic content, required ACF fields, required assets, responsive rules,
   SEO requirements, accessibility states, interactions, integrations, acceptance criteria).
2. Follow §15's workflow: read handoff → inspect existing components (reuse before building new) → inspect
   design → inspect assets → implement template → implement frontend → connect CMS (coordinate with
   Phase 12 for any new ACF fields this page needs) → responsive implementation → SEO → accessibility →
   test → fix → performance check → review → approve.
3. Document the page's status, decisions, and open issues in `docs/pages/<page-slug>.md`.
4. Move to the next page only after this one is reviewed and approved — never build all pages blindly ahead
   of review.

## Tools & Commands

- `Read` — the page's design handoff, `docs/wordpress/content-model.md`, `docs/design/component-inventory.md`.
- `Write`/`Edit` — the page template, any new template parts, `docs/pages/<page-slug>.md`.
- Browser-based testing (`claude-in-chrome` tools, when available) — to verify the built page against the
  design visually and interactively, not just by reading source.

## Validation & Testing Requirements

- Every unique section is checked against the design reference before being marked done.
- Reused components come from Phase 10's global set — no duplicate one-off component is built for a single
  page without justification.
- Each page's acceptance criteria (from `docs/ai-dlc/acceptance-criteria.md`) are checked off explicitly.

## Expected Outputs

- The implemented page template + frontend + CMS wiring.
- `docs/pages/<page-slug>.md` per page.

## Conditions to Advance (Next Skill)

Approval Gate 8 — "Page development approved" (`CLAUDE.md` §33) — evaluated per page, and collectively
before Phase 12/13 rely on all pages being done. Advance to `phase-12-acf-cms-development` (often
interleaved per-page rather than strictly sequential) once each page passes review.

## Error Handling & Recovery

- A page's design references a component that doesn't exist in Phase 10's global set: stop and decide with
  the developer whether it should be promoted to a global component or built as a page-specific exception —
  don't silently duplicate.
- A page's dynamic content need isn't covered by the Phase 06 content model: flag it back to that model
  rather than hacking around it in the template.
- If a page fails review, record the specific issue in `docs/pages/<page-slug>.md` and in
  `docs/ai-dlc/phase-status.md`, fix, and re-review before moving to the next page.
