---
name: phase-10-global-components
description: Execute Kestara AI-DLC Phase 10 — Global Components. Build the shared UI foundation (header, footer, nav, buttons, cards, forms, modals, states) before page-specific development begins. Use once Gate 6 (Architecture approved) is passed, before Page Development.
---

# Phase 10 — Global Components

## Purpose

Build the shared UI foundation before page-specific implementation, per `CLAUDE.md` §14, satisfying Approval
Gate 7 ("Global components approved") — required before large-scale page development.

## Required Inputs & Prerequisites

- Approval Gate 6 passed (Phases 06–09 complete: content model, plugins, theme architecture, design system).
- `docs/design/component-inventory.md` and `docs/design/interaction-states.md` from Phase 04.

## Step-by-Step Workflow

1. Confirm Gate 6 is passed.
2. Ask §14's questions 1–21 one at a time (header/nav/mobile-menu variants, footer variants, breadcrumbs,
   buttons, cards, forms/inputs/selects, alerts, modals, accordions, tabs, pagination, search, loading/
   empty/error states, cookie/consent UI, accessibility states).
3. Build each shared component once, using the design-system tokens from Phase 09 — never redefine tokens
   locally inside a component.
4. Validate every reusable component across desktop, mobile, keyboard, focus, hover, active, disabled,
   loading, error, and empty states where applicable, per §14's Validation rule.

## Tools & Commands

- `Read` — `docs/design/component-inventory.md`, `docs/design/interaction-states.md`,
  `docs/design/design-system.md`.
- `Write`/`Edit` — theme component files (`template-parts/`, `scripts/components/`, `styles/components/`
  per the Phase 08 structure).
- Browser-based testing (`claude-in-chrome` tools, when available) — to actually verify hover/focus/
  keyboard states rather than assuming CSS/JS is correct from source alone.

## Validation & Testing Requirements

- Every component built is checked against every applicable state in §14's Validation list — not just the
  default/happy-path state.
- No component duplicates another that already exists (per §1's "prefer reusable components" principle).
- Components consume Phase 09 tokens; none hardcode a color/spacing value that exists as a token already.

## Expected Outputs

- Implemented global components in the theme (headers, nav, footer, buttons, cards, forms, modals,
  accordions, tabs, pagination, search, state components).
- Component validation notes (which states were checked) recorded alongside `docs/design/component-inventory.md`.

## Conditions to Advance (Next Skill)

Approval Gate 7 — "Global components approved" (`CLAUDE.md` §33). Advance to `phase-11-page-development`
only after this gate passes — per §14, page development must not begin at scale before it does.

## Error Handling & Recovery

- A component missing a required state (e.g. no documented error state) discovered during build: go back to
  Phase 04's `interaction-states.md` and ask the developer rather than inventing the missing state's design.
- If validating a state (e.g. keyboard focus order) reveals a design gap, report it rather than silently
  picking a "reasonable" behavior.
- If Gate 7 approval is withheld, record which component/state failed review as a blocker in
  `docs/ai-dlc/phase-status.md` and do not start Phase 11 at scale.
