---
name: phase-17-performance
description: Execute Kestara AI-DLC Phase 17 — Performance. Measure and optimize Core Web Vitals, images, fonts, CSS/JS, database queries, and third-party scripts without changing approved functionality or design. Use once Approval Gate 11 (Responsive/Accessibility/Cross-Browser QA) passes.
---

# Phase 17 — Performance

## Purpose

Optimize the website without changing approved functionality/design, per `CLAUDE.md` §21, satisfying
Approval Gate 12 ("Performance verified").

## Required Inputs & Prerequisites

- Approval Gate 11 passed (Responsive/Accessibility/Cross-Browser QA).
- The caching/CDN/performance-plugin decisions from Phase 07 (§11.1 Q9–15).

## Step-by-Step Workflow

1. Confirm Gate 11 is passed.
2. Ask §21's questions 1–11 one at a time (performance target, whether PageSpeed Insights is the benchmark,
   Core Web Vitals targets, CDN/server/object caching availability, required third-party scripts/analytics,
   videos, web fonts, performance-sensitive external APIs).
3. Measure baseline: LCP, CLS, INP, FCP, TTFB, render-blocking resources, unused CSS/JS, image size/format,
   font loading, caching behavior, DOM size, third-party script impact, database query count/time.
4. Optimize per §21's list: images (modern formats where appropriate, lazy-load below-the-fold, avoid
   unnecessary preloading), minimize/de-duplicate CSS and JS, optimize database queries and plugin usage,
   optimize fonts, configure caching, reduce third-party impact — while preserving design fidelity and
   approved functionality exactly.
5. Re-measure after each significant optimization to confirm improvement and no regression.

## Tools & Commands

- `claude-in-chrome` browser tools (`read_network_requests`, Lighthouse/PageSpeed if available) — measure
  real page-load behavior, not estimated.
- `Bash` — build-tool commands (minification/bundling) per the Phase 03 asset/build strategy.
- `Bash`/`wp-cli` — inspect/query database performance if slow queries are suspected.
- `Write`/`Edit` — `docs/performance/performance-report.md`.

## Validation & Testing Requirements

- Before/after metrics are recorded for every optimization, not just a final number.
- No optimization changed approved design or functionality — a performance fix that alters visible behavior
  needs developer approval first.
- Core Web Vitals targets (if set in Q3) are actually met, not just "improved."

## Expected Outputs

- `docs/performance/performance-report.md` with before/after results.

## Conditions to Advance (Next Skill)

Approval Gate 12 — "Performance verified" (`CLAUDE.md` §33). Advance to `phase-18-security` once metrics
meet the agreed target.

## Error Handling & Recovery

- An optimization that would change design fidelity (e.g. removing an above-fold hero image for LCP):
  propose it to the developer rather than applying it silently.
- A performance regression introduced by an earlier phase (e.g. an unoptimized plugin from Phase 07):
  report it back rather than working around it with a fragile patch.
- If a target can't be met without a functionality/design trade-off, present the trade-off explicitly and
  get an explicit decision rather than choosing on the developer's behalf.
