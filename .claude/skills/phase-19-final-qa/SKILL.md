---
name: phase-19-final-qa
description: Execute Kestara AI-DLC Phase 19 — Final QA. Perform end-to-end acceptance testing across requirements, pages, CMS, integrations, SEO, responsive/accessibility/browser QA, performance, and security before deployment. Use once Gate 13 (Security verified) passes.
---

# Phase 19 — Final QA

## Purpose

Perform end-to-end acceptance testing before deployment, per `CLAUDE.md` §23, satisfying Approval Gate 14
("Final QA approved"). This is the last gate before Deployment — treat it as a genuine re-verification, not
a rubber stamp on phases already marked done.

## Required Inputs & Prerequisites

- Approval Gate 13 passed (Security verified).
- Every prior phase's deliverable and QA doc available for cross-check.

## Step-by-Step Workflow

1. Confirm Gate 13 is passed.
2. Ask §23's questions 1–8 one at a time (launch acceptance criteria, final approver, critical user
   journeys, integrations to verify, content to verify, browsers/devices to verify, known accepted issues,
   launch-blocker severity threshold).
3. Run the Final Checklist from §23: requirements, pages, navigation, forms, CMS editing, ACF, integrations
   (including every active capability skill), SEO, responsive, accessibility, browser compatibility,
   performance, security, error states, 404, search, redirects, media, analytics, cookies/consent where
   applicable.
4. Cross-check every "known accepted issue" against the launch-blocker severity threshold from Q8 — no
   unresolved critical/high-severity issue proceeds without explicit developer acceptance.

## Tools & Commands

- `claude-in-chrome` browser tools — walk every critical user journey live, not just re-read prior QA docs.
- `Read` — every `docs/testing/*`, `docs/seo/seo-checklist.md`, `docs/security/security-review.md`,
  `docs/performance/performance-report.md`, and `docs/ai-dlc/skills-registry.md` for capability-skill status.
- `Write`/`Edit` — the Final QA record (extend `docs/testing/` with a final sign-off summary, or the
  project's chosen location — do not invent a new top-level docs path).

## Validation & Testing Requirements

- Every critical user journey (Q3) is actually walked end-to-end.
- Every integration, including every active capability skill, is verified working (success path at minimum;
  failure-path testing already done in its own phase/skill is cross-checked, not re-derived).
- No unresolved critical/high-severity issue exists without explicit developer acceptance recorded.

## Expected Outputs

- Final QA sign-off record, referencing every checklist item's pass/fail state.
- `docs/ai-dlc/phase-status.md` updated with the Gate 14 decision.

## Conditions to Advance (Next Skill)

Approval Gate 14 — "Final QA approved" (`CLAUDE.md` §33). Advance to `phase-20-deployment` only once the
developer explicitly approves, per §35's "Deploy without approval" prohibition.

## Error Handling & Recovery

- A checklist item that fails: fix and re-run the full checklist, not just the failed item — a fix can
  regress something else already verified.
- A critical/high-severity issue the developer wants to accept anyway: require an explicit, recorded
  acceptance decision — never treat silence as approval.
- If Gate 14 approval is withheld, record every specific open item as a blocker in
  `docs/ai-dlc/phase-status.md` and do not proceed to Phase 20.
