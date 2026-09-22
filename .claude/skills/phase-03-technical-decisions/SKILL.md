---
name: phase-03-technical-decisions
description: Execute Kestara AI-DLC Phase 03 — Technical Decisions. Select and document WordPress version/architecture, frontend architecture fork, CSS/JS strategy, and high-level SEO/caching/forms/translation strategy before Design Handoff and WordPress Foundation begin. Use once Gate 1 (Requirements confirmed) is passed.
---

# Phase 03 — Technical Decisions

## Purpose

Select and document the implementation strategy — WordPress architecture, frontend architecture, asset
strategy, and high-level (not plugin-specific) approach for SEO/caching/forms/translation — before any
architecture work begins, per `CLAUDE.md` §7. Satisfies Approval Gate 2.

## Required Inputs & Prerequisites

- `docs/ai-dlc/requirements.md` confirmed (Gate 1 passed).

## Step-by-Step Workflow

1. Confirm Gate 1 is passed via `docs/ai-dlc/phase-status.md`.
2. Ask the Major Plugin Constraint question (§7, top): are there approved/required/existing/prohibited/
   licensed plugins this project must use or avoid? Record answers now for the detailed Phase 07
   questionnaire later — do not re-ask them there.
3. Ask §7's WordPress questions (1–8), one at a time.
4. Ask §7's Frontend questions (9–10), then **before question 11**, resolve §7.1's Frontend Architecture
   Fork explicitly with the developer (traditional theme vs. decoupled/headless) — this determines what
   questions 11, 18, 19, and 22 even mean. Never guess this.
5. Ask §7's remaining Frontend questions (11–15), informed by the §7.1 answer.
6. Ask §7's Architecture questions (16–24) — for 18/19/22, apply the §7.1 answer; for 19–21/23, capture only
   the high-level strategy, not the specific plugin (that's Phase 07 §11.1).
7. Ask §7's Constraints questions (25–28).
8. If question 4 (classic vs. block theme) and question 3 (Classic editor/Gutenberg/both) are inconsistent,
   flag it and confirm intent before finalizing.

## Tools & Commands

- `WebFetch`/`WebSearch` — only to verify factual claims about a named technology/approach the developer is
  considering, never to invent options.
- `Write`/`Edit` — `docs/architecture/technical-decisions.md`, `docs/architecture/architecture.md`.

## Validation & Testing Requirements

- Every Required §7 question is answered.
- §7.1's fork is resolved explicitly and in writing before questions 11/18/19/22 are treated as answered.
- No more than one CSS framework/approach is selected, per §7's Rule.
- Any unusual combination (e.g. block theme edited only through the classic editor) is flagged and
  confirmed, not silently accepted.

## Expected Outputs

- `docs/architecture/technical-decisions.md`
- `docs/architecture/architecture.md`

## Conditions to Advance (Next Skill)

Approval Gate 2 — "Technical decisions approved" (`CLAUDE.md` §33). Advance to `phase-04-design-handoff` and
`phase-05-wordpress-foundation` (both depend on Gate 2) once the developer approves.

## Error Handling & Recovery

- If the developer is unsure about the §7.1 fork, do not default silently — the fork changes what later
  questions mean; stop and ask directly.
- If a prohibited technology/plugin/framework (Q25–27) conflicts with an earlier requirement, surface the
  conflict before finalizing decisions.
- If Gate 2 approval is withheld, record it as a blocker in `docs/ai-dlc/phase-status.md`; do not begin
  Design Handoff or WordPress Foundation.
