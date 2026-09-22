---
name: phase-14-responsive-qa
description: Execute Kestara AI-DLC Phase 14 — Responsive QA. Verify the implementation across the minimum required viewport set (320–1920px). Use once Gate 10 (SEO verified) is passed, alongside Accessibility and Cross-Browser QA.
---

# Phase 14 — Responsive QA

## Purpose

Ensure the implementation works across required viewport sizes, per `CLAUDE.md` §18, contributing to
Approval Gate 11 ("Responsive/accessibility/browser QA passed") alongside Phases 15 and 16.

## Required Inputs & Prerequisites

- Approval Gate 10 passed (SEO verified) and pages built (Phase 11).
- `docs/design/responsive-rules.md` from Phase 04.

## Step-by-Step Workflow

1. Confirm Gate 10 is passed.
2. Ask §18's questions 1–9 one at a time (priority devices, distinct tablet layouts, components that change
   structure, elements that reorder/hide, image crop/aspect-ratio changes, navigation changes, touch
   interaction requirements, landscape orientation requirements).
3. Test every page at the minimum viewport set: `320 375 390 430 768 820 1024 1280 1440 1920`.
4. Check, per §18: navigation, typography, images, grids, cards, forms, buttons, spacing, overflow, mobile
   menu, footer, sticky elements, modals — at each viewport, not just visually skimmed at one.

## Tools & Commands

- `claude-in-chrome` browser tools (`resize_window`, `computer`, screenshots) — actually resize and inspect
  the live page at each viewport rather than inferring behavior from CSS source alone.
- `Read` — `docs/design/responsive-rules.md` as the source of truth for expected behavior per breakpoint.
- `Write`/`Edit` — `docs/testing/responsive-qa.md`.

## Validation & Testing Requirements

- Every viewport in the minimum set is actually tested, not sampled/skipped.
- Every check item in §18's list has a pass/fail/note recorded per page, not a blanket "looks fine."
- Any deviation from `docs/design/responsive-rules.md` is either fixed or explicitly flagged as a known
  issue with developer sign-off.

## Expected Outputs

- `docs/testing/responsive-qa.md`

## Conditions to Advance (Next Skill)

Contributes to Approval Gate 11 (`CLAUDE.md` §33), cumulative with Phases 15–16. Advance toward
`phase-17-performance` once all three QA phases pass.

## Error Handling & Recovery

- A layout break at a specific viewport: fix and re-test that viewport specifically, don't assume a fix at
  one breakpoint holds at all others.
- A responsive rule that was never actually specified in Phase 04: ask the developer for the intended
  behavior rather than inventing a "reasonable" breakpoint behavior.
- If a known issue is accepted rather than fixed, it must be explicit developer sign-off recorded in
  `docs/testing/responsive-qa.md`, not a silent skip.
