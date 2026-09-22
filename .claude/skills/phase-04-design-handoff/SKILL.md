---
name: phase-04-design-handoff
description: Execute Kestara AI-DLC Phase 04 — Design Handoff. Turn the approved visual design (Figma, Claude/Claude Code HTML handoff, XD, Sketch, screenshots, or an existing live site) into an implementation-ready specification. Use once Gate 2 (Technical decisions approved) is passed, before Global Components/Page Development begin.
---

# Phase 04 — Design Handoff

## Purpose

Turn the approved visual design into an implementation-ready specification, per `CLAUDE.md` §8, satisfying
Gate 4 (design source approved) on entry and Gate 5 (design analysis completed) on exit.

## Required Inputs & Prerequisites

- Gate 2 passed (`docs/architecture/technical-decisions.md` approved).
- Access to the actual design source named in question 2 below.

## Step-by-Step Workflow

1. Confirm Gate 2 is passed.
2. Ask §8's questions 1–18 one at a time (design source location, format, which pages/breakpoints are
   designed, states, fonts/icons/images/SVGs, design system, spacing/breakpoint rules, dark/light modes).
3. Once the design source format (Q2) is known, treat it accordingly:
   - **Figma/XD/Sketch/screenshots/existing live site** — analyze directly per the "Your Actions" list in
     §8 (layout, typography, colors, spacing, containers, grid, breakpoints, components, states,
     interactions, assets, content hierarchy, accessibility implications, dynamic content requirements). An
     existing live site also triggers the §28 migration audit if not already run in Phase 01.
   - **Claude/Claude Code HTML design handoff** — apply §8.1 in full: treat it as a reference
     specification, not production code. Convert inline `style="..."`/`style-hover="..."` into real
     stylesheets and `:hover` rules; unroll the proprietary templating dialect (`<x-dc>`, `<helmet>`,
     `sc-if`, `sc-for`, `{{ }}`, `DCLogic` script blocks) into real conditionals/loops/data models,
     transcribing `data-props`/`renderVals()` copy verbatim; strip tool-authoring artifacts (`support.js`,
     `_ds/...` bundle, embedded SVG provenance metadata); replace the live Google Fonts `<link>` with a
     self-hosted/subsetted equivalent; build shared components (header/nav/footer/loader) once, not per
     `*.dc.html` file. Ask the developer to confirm the handoff folder's own README for project-specific
     tokens/fidelity notes/placeholders, and preserve any literal `[PLACEHOLDER]` values until real ones are
     supplied.
4. Present the design analysis and stop for approval before Global Components (Phase 10) begins.

## Tools & Commands

- `Read`/`Grep`/`Glob` — inspect design handoff files (`*.dc.html`, Figma exports, images) in the repo.
- `WebFetch` — only if the developer provides a live Figma/design-tool link to inspect.
- `Write`/`Edit` — the seven deliverables below.

## Validation & Testing Requirements

- Every Required §8 question is answered or explicitly skipped with a stated reason.
- If the source is a Claude/Claude Code handoff, confirm with the developer that it's being treated as
  reference-only per §8.1 — this must be stated explicitly, not assumed silently.
- No inline `style`/`style-hover`/templating-dialect markup is scheduled for direct reuse in production.
- All `[PLACEHOLDER]` tokens found are inventoried, not silently filled with invented values.

## Expected Outputs

```text
docs/design/design-analysis.md
docs/design/design-system.md
docs/design/component-inventory.md
docs/design/responsive-rules.md
docs/design/interaction-states.md
docs/design/asset-inventory.md
docs/design/page-inventory.md
```

## Conditions to Advance (Next Skill)

Approval Gate 4 ("Design source approved") on entry, Approval Gate 5 ("Design analysis completed") on exit
(`CLAUDE.md` §33). Advance to `phase-05-wordpress-foundation` (parallel track) and eventually
`phase-09-design-system`/`phase-10-global-components` once both gates are satisfied.

## Error Handling & Recovery

- Missing states (hover/focus/loading/error/empty) or missing breakpoints: record as an open gap in
  `docs/design/interaction-states.md` / `docs/design/responsive-rules.md` — never invent the missing states.
- A Claude/Claude Code handoff with ambiguous copy or an unclear repeated-card data model: ask the developer
  rather than paraphrasing or re-inventing the content.
- If Gate 5 approval is withheld, record the specific missing/disputed design element as a blocker in
  `docs/ai-dlc/phase-status.md`.
