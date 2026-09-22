---
name: phase-15-accessibility
description: Execute Kestara AI-DLC Phase 15 — Accessibility. Validate accessible interaction and content structure (semantic HTML, keyboard nav, focus states, contrast, ARIA, reduced motion). Use once Gate 10 (SEO verified) is passed, alongside Responsive and Cross-Browser QA.
---

# Phase 15 — Accessibility

## Purpose

Validate accessible interaction and content structure, per `CLAUDE.md` §19, contributing to Approval Gate 11
alongside Phases 14 and 16.

## Required Inputs & Prerequisites

- Approval Gate 10 passed and pages/global components built (Phases 10–11).
- Any accessibility standard/level requirement already captured in Phase 02 (`docs/ai-dlc/requirements.md`
  Q19–20).

## Step-by-Step Workflow

1. Confirm Gate 10 is passed.
2. Ask §19's questions 1–5 one at a time (accessibility standard/level required, specific assistive
   technologies to support, keyboard-only priority, accessibility statement requirement, specified testing
   tools).
3. Check, per §19: semantic HTML, keyboard navigation, focus states, labels, form errors, alt text, heading
   hierarchy, ARIA only when necessary (never as a first resort over semantic HTML), contrast, accessible
   navigation, buttons/links, modal focus management, reduced motion, zoom/reflow behavior.
4. Test keyboard-only navigation through every interactive flow, not just tab-order spot checks.

## Tools & Commands

- `claude-in-chrome` browser tools — actually navigate via keyboard, inspect focus order, check computed
  contrast, rather than inferring from markup alone.
- Automated accessibility checkers the developer specifies (Q5) — e.g. axe, Lighthouse accessibility audit —
  when named; do not assume a specific tool the developer hasn't approved.
- `Write`/`Edit` — `docs/testing/accessibility.md`.

## Validation & Testing Requirements

- Every check item in §19's list has a pass/fail/note per page or component, not a blanket assertion.
- No ARIA attribute is added where correct semantic HTML would already satisfy the requirement (avoid
  ARIA-as-decoration).
- Modal/menu focus trapping and restore-focus-on-close are actually tested, not assumed from the component's
  code alone.

## Expected Outputs

- `docs/testing/accessibility.md`

## Conditions to Advance (Next Skill)

Contributes to Approval Gate 11 (`CLAUDE.md` §33), cumulative with Phases 14 and 16. Advance toward
`phase-17-performance` once all three QA phases pass.

## Error Handling & Recovery

- A missing focus state or broken keyboard trap found during testing: fix and re-test the specific
  interaction, not just the static style.
- An accessibility standard/level that was never specified in Phase 02: ask before assuming WCAG 2.1 AA (or
  any other level) as a default.
- A known accessibility gap accepted for launch must be explicit developer sign-off in
  `docs/testing/accessibility.md`, with severity noted per `CLAUDE.md` §23's launch-blocker rule.
