---
name: phase-09-design-system
description: Execute Kestara AI-DLC Phase 09 — Design System. Translate approved design decisions (colors, typography, spacing, components, states) into reusable implementation tokens. Use once Phase 08 Theme Architecture is approved, before Global Components development begins.
---

# Phase 09 — Design System

## Purpose

Translate design decisions into reusable implementation tokens/components, per `CLAUDE.md` §13, finalizing
Approval Gate 6 ("Architecture approved") after Phases 06–08.

## Required Inputs & Prerequisites

- Phase 08 theme architecture approved.
- `docs/design/design-system.md` and `docs/design/design-analysis.md` from Phase 04.

## Step-by-Step Workflow

1. Confirm Phase 08 is complete.
2. Ask §13's questions 1–23 one at a time (colors, typography family/weights/scale, line heights, spacing
   scale, container widths, breakpoints, border radius/borders/shadows, buttons/forms/cards/navigation/
   icons, focus states, motion/easing, dark/light modes).
3. Cross-check every answer against what Phase 04's design analysis already captured — this phase converts
   analysis into implementation-ready tokens, it does not re-derive the design from scratch.
4. Ensure no page-specific styling redefines these global tokens unnecessarily (per §13's closing rule).

## Tools & Commands

- `Read` — `docs/design/design-system.md`, `docs/design/design-analysis.md`, `docs/design/responsive-rules.md`.
- `Write`/`Edit` — the tokens file(s) below, plus the actual token implementation (CSS custom properties,
  `theme.json`, Tailwind config, or the project's chosen approach from Phase 03).

## Validation & Testing Requirements

- Every token (color, type scale, spacing, breakpoint) traces back to an approved design source — none are
  invented.
- Dark/light mode tokens (if required, Q23) are defined for both states, not just one.
- Focus-state tokens (Q21) exist and will satisfy the later Accessibility phase, not deferred to it.

## Expected Outputs

- `docs/design/design-system.md` (tokens live here, or split into `docs/design/tokens.md` if large enough
  to warrant it).
- The implemented token layer in the theme (CSS variables / `theme.json` / build config per Phase 03's
  chosen approach).

## Conditions to Advance (Next Skill)

Finalizes Approval Gate 6 — "Architecture approved" (`CLAUDE.md` §33), cumulative with Phases 06–08. Advance
to `phase-10-global-components` once tokens are approved.

## Error Handling & Recovery

- A design token that's ambiguous or missing from the Phase 04 analysis: ask the developer or point back to
  the design source — never invent a color/spacing value to fill the gap.
- If a later phase needs a token that doesn't exist yet, add it here (Phase 09) rather than letting a page
  redefine it locally, to avoid the token system drifting inconsistent.
- If approval is withheld, record the specific token/decision in question as a blocker in
  `docs/ai-dlc/phase-status.md`.
