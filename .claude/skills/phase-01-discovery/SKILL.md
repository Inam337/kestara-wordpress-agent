---
name: phase-01-discovery
description: Execute Kestara AI-DLC Phase 01 — Discovery. Understand the business, audience, existing system, content, constraints, and success criteria for the WordPress project. Use once Phase 00 Project Initialization is complete and before Requirements (Phase 02) begins.
---

# Phase 01 — Discovery

## Purpose

Understand the business, audience, existing system, content, constraints, and success criteria behind the
website, per `CLAUDE.md` §5, so that Requirements (Phase 02) is built on real context instead of assumption.

## Required Inputs & Prerequisites

- `docs/ai-dlc/project-initialization.md` complete (Phase 00 done).
- If Phase 00 flagged this as a rebuild/redesign/migration of an existing site, the deeper audit in
  `CLAUDE.md` §28 (Existing Website / Migration Deep Audit) runs as part of this skill's inspection step.

## Step-by-Step Workflow

1. Confirm Phase 00 is complete via `docs/ai-dlc/phase-status.md`.
2. If an existing website is involved, run the §28 audit first: inspect theme, plugins, MU plugins, custom
   code, templates, CSS/JS, images, fonts, uploads, menus, widgets, options, users/roles, CPTs, taxonomies,
   ACF, forms, SEO, redirects, database, cron, REST API, server configuration — before asking §28's
   questions (what must be preserved, what can be removed/refactored, which URLs/structures must remain,
   historical integrations, undocumented customizations, rollback possibility).
3. Ask §5's Business questions (1–10), one at a time.
4. Ask §5's Audience questions (11–14), one at a time.
5. Ask §5's Existing Website questions (15–20), one at a time — skip if this is a greenfield build, saying
   so explicitly.
6. Ask §5's Success questions (21–24), one at a time.
7. Summarize answers before moving to Phase 02, so Requirements can build directly on confirmed discovery
   output rather than re-deriving it.

## Tools & Commands

- `WebFetch`/`WebSearch` — research the business/market/competitors only when the developer points to
  specific sources; never invent market data.
- `Read`/`Grep`/`Glob`/`Bash` — for the §28 existing-site audit when applicable (inspecting theme/plugin
  files, DB exports, cron entries, etc. the developer has provided access to).
- `Write`/`Edit` — record findings into `docs/ai-dlc/discovery.md` and `docs/ai-dlc/scope.md`.

## Validation & Testing Requirements

- Every Required §5 question is answered or recorded as a blocker.
- If an existing site is in scope, the §28 audit is documented before any Requirements decision references
  "what currently works" or "what must not change."
- Critical user journeys and launch blockers (questions 22–23) are explicit, not implied.

## Expected Outputs

- `docs/ai-dlc/discovery.md`
- `docs/ai-dlc/scope.md`

## Conditions to Advance (Next Skill)

No standalone numbered gate — Discovery feeds directly into Gate 1 (Requirements confirmed), satisfied at
the end of `phase-02-requirements`. Advance to `phase-02-requirements` once discovery is documented and
summarized back to the developer.

## Error Handling & Recovery

- Never delete or replace unknown functionality found during the §28 audit without investigation — treat
  unfamiliar existing-site behavior as someone's in-progress work until proven otherwise.
- If "what must not change" (§5 Q17) conflicts with a business goal (§5 Q5), surface the conflict to the
  developer explicitly rather than resolving it yourself.
- If historical SEO value or content/assets to preserve (§5 Q19–20) can't be fully inventoried yet, record
  the gap as an open blocker in `docs/ai-dlc/phase-status.md` rather than guessing what's safe to change.
