---
name: phase-02-requirements
description: Execute Kestara AI-DLC Phase 02 — Requirements. Convert Discovery output into explicit, testable functional, content, non-functional, and constraint requirements with acceptance criteria. Use once Phase 01 Discovery is documented, before Technical Decisions (Phase 03) begins.
---

# Phase 02 — Requirements

## Purpose

Convert discovery into explicit, testable requirements per `CLAUDE.md` §6, satisfying Approval Gate 1
("Requirements confirmed"). This is also the point at which any Third-Party API Integration (or other
capability skill) trigger condition is most likely to first appear — watch answers for it, per `CLAUDE.md`
§39.3.

## Required Inputs & Prerequisites

- `docs/ai-dlc/discovery.md` and `docs/ai-dlc/scope.md` complete (Phase 01 done).

## Step-by-Step Workflow

1. Confirm Phase 01 is complete via `docs/ai-dlc/phase-status.md`.
2. Ask §6's Functional questions (1–10), one at a time. If any answer names an external API/service/SaaS
   the site must talk to, or a specific product like Stripe/WooCommerce, flag it as a capability-skill
   trigger candidate per `CLAUDE.md` §39.3 — confirm with the developer before marking it `pending` in
   `docs/ai-dlc/skills-registry.md`.
3. Ask §6's Content questions (11–17), one at a time.
4. Ask §6's Non-functional questions (18–24), one at a time.
5. Ask §6's Constraints questions (25–30), one at a time.
6. Write every important requirement's acceptance criteria using `templates/acceptance-criteria.md`.
7. Present the full requirements summary and stop — Gate 1 requires explicit developer confirmation before
   Phase 03 begins.

## Tools & Commands

- `Write`/`Edit` — `docs/ai-dlc/requirements.md`, `docs/ai-dlc/acceptance-criteria.md`,
  `docs/ai-dlc/scope.md`, and `docs/ai-dlc/skills-registry.md` (for any newly-triggered capability skill).
- `Read` — `templates/acceptance-criteria.md` and `templates/requirement.md` as the format to follow.

## Validation & Testing Requirements

- Every Required §6 question is answered or recorded as a blocker.
- Every important requirement has acceptance criteria (`CLAUDE.md` §37 Definition of Done: "Required
  questions answered" + "Decisions documented").
- Must-have vs. optional features (Q2) and in-scope vs. out-of-scope (Q24, cross-checked against
  `docs/ai-dlc/scope.md`) are unambiguous.
- Any capability-skill trigger candidate identified this phase is either confirmed with the developer and
  logged in `docs/ai-dlc/skills-registry.md`, or explicitly ruled out.

## Expected Outputs

- `docs/ai-dlc/requirements.md`
- `docs/ai-dlc/acceptance-criteria.md`
- `docs/ai-dlc/scope.md` (updated)
- `docs/ai-dlc/skills-registry.md` (updated if a capability skill was triggered)

## Conditions to Advance (Next Skill)

Approval Gate 1 — "Requirements confirmed" (`CLAUDE.md` §33). Advance to `phase-03-technical-decisions` only
after the developer explicitly confirms the requirements summary.

## Error Handling & Recovery

- If a requirement implies architecture, security, content-structure, SEO, migration, performance, or
  deployment impact and the developer hasn't clarified it, ask — never assume, per `CLAUDE.md` §1.
- If the developer's answers conflict with an "out of scope" item from Discovery, surface the conflict
  before writing it into `requirements.md`.
- If Gate 1 approval is withheld, record the open question as a blocker in `docs/ai-dlc/phase-status.md` and
  do not proceed into Phase 03.
