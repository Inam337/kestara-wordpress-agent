---
name: phase-21-production-verification
description: Execute Kestara AI-DLC Phase 21 — Production Verification. Run live smoke tests on the deployed site (HTTPS, redirects, forms, CMS editing, menus, analytics, caching, performance) before declaring deployment complete. Use immediately after Phase 20 Deployment.
---

# Phase 21 — Production Verification

## Purpose

Verify the live website after deployment, per `CLAUDE.md` §25, satisfying Approval Gate 16 ("Production
verification passed").

## Required Inputs & Prerequisites

- Approval Gate 15 passed and the deployment sequence (Phase 20) completed.
- Production URL and access to verify it live.

## Step-by-Step Workflow

1. Confirm deployment (Phase 20) completed.
2. Ask/verify §25's questions 1–18 one at a time (production URL correctness, HTTPS, redirects, homepage,
   primary pages, form delivery, CMS editing, images/media, menus, search/filter, analytics, sitemap,
   robots configuration, canonical URLs, error pages, caching/CDN, performance metrics, server errors).
3. Perform live smoke tests against production directly — not staging, not local — for every item above.
4. Record results in `docs/deployment/production-verification.md` before declaring deployment complete.

## Tools & Commands

- `claude-in-chrome` browser tools — navigate the actual production URL, submit a real test form
  submission if safe to do so, check HTTPS/redirect behavior live.
- `WebFetch` — check `robots.txt`/sitemap XML are served correctly in production.
- `Bash`/`curl` — spot-check HTTP status codes/redirects/headers from production.

## Validation & Testing Requirements

- Every item in §25's list is checked against the live production site, with a recorded result — not
  inferred from the deployment log.
- Any server error, broken form, or missing analytics tag is treated as a launch-blocking issue until fixed
  and re-verified.

## Expected Outputs

- `docs/deployment/production-verification.md`

## Conditions to Advance (Next Skill)

Approval Gate 16 — "Production verification passed" (`CLAUDE.md` §33). Advance to `phase-22-documentation`
once every smoke test passes.

## Error Handling & Recovery

- A production-only failure (something that worked on staging but not production): investigate the
  environment difference (DNS, cache/CDN, server config) rather than assuming it will resolve itself.
- A broken form submission or missing analytics event in production: fix immediately and re-verify — this is
  not deferred to Phase 23 Maintenance.
- If verification can't fully complete (e.g. can't safely test a payment form live), say so explicitly and
  agree with the developer on a safe alternative test method rather than skipping it silently.
