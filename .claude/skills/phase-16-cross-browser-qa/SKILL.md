---
name: phase-16-cross-browser-qa
description: Execute Kestara AI-DLC Phase 16 — Cross-Browser QA. Validate behavior across the supported browser matrix (Chrome, Firefox, Edge, Safari where available). Use once Gate 10 (SEO verified) is passed, alongside Responsive and Accessibility QA.
---

# Phase 16 — Cross-Browser QA

## Purpose

Validate behavior across supported browsers, per `CLAUDE.md` §20, contributing to Approval Gate 11 alongside
Phases 14 and 15.

## Required Inputs & Prerequisites

- Approval Gate 10 passed and pages built.
- Any browser support requirement already captured in Phase 02 (`docs/ai-dlc/requirements.md` Q20).

## Step-by-Step Workflow

1. Confirm Gate 10 is passed.
2. Ask §20's questions 1–4 one at a time (required browser versions, mobile browsers that matter, older
   device support, browser-specific integrations).
3. Test against the default matrix (Chrome, Firefox, Edge, Safari where available) or the developer's
   confirmed matrix if different.
4. Check, per §20: layout, typography, JavaScript, forms, navigation, animations, media, sticky/fixed
   elements, CSS compatibility.

## Tools & Commands

- `claude-in-chrome` browser tools — for Chrome/Edge (Chromium-based) verification directly.
- For Firefox/Safari, rely on the developer's own testing or a browser-testing service they name — never
  claim a Safari-specific result without actually verifying it in Safari or an equivalent tool.
- `Write`/`Edit` — `docs/testing/cross-browser-qa.md`.

## Validation & Testing Requirements

- Every browser in the confirmed matrix is actually checked — a claim of "should work everywhere" without
  verification is not acceptable per `CLAUDE.md` §35 ("declare completion without evidence").
- CSS/JS compatibility issues found are fixed or explicitly flagged with a browser-specific known-issue note.

## Expected Outputs

- `docs/testing/cross-browser-qa.md`

## Conditions to Advance (Next Skill)

Contributes to Approval Gate 11 (`CLAUDE.md` §33), cumulative with Phases 14 and 15. Advance toward
`phase-17-performance` once all three QA phases pass.

## Error Handling & Recovery

- A browser this session genuinely cannot test (e.g. no Safari access): say so explicitly rather than
  claiming verification, and ask the developer how they want that gap covered.
- A browser-specific bug found: fix with a browser-safe approach rather than a hack that could break another
  browser in the matrix; re-test the whole matrix after the fix, not just the browser that failed.
- A known cross-browser issue accepted for launch must be explicit developer sign-off in
  `docs/testing/cross-browser-qa.md`.
