---
name: phase-20-deployment
description: Execute Kestara AI-DLC Phase 20 — Deployment. Deploy safely from staging to production following the backup → verify → deploy → migrate → smoke-test sequence. Use once Gate 14 (Final QA approved) passes, and only with explicit developer approval to deploy.
---

# Phase 20 — Deployment

## Purpose

Deploy safely from staging to production, per `CLAUDE.md` §24, satisfying Approval Gate 15 ("Deployment
approved"). Never deploy without explicit approval — this is one of the highest-blast-radius actions in the
whole lifecycle.

## Required Inputs & Prerequisites

- Approval Gate 14 passed (Final QA approved).
- Staging and production environment details, deployment method, and rollback plan all answered below.

## Step-by-Step Workflow

1. Confirm Gate 14 is passed.
2. Ask §24's questions 1–20 one at a time (staging/production location, hosting provider, deployment
   method — FTP/SFTP/cPanel/SSH/WP-CLI, database/media/domain migration needs, SSL readiness, backup
   completeness, rollback plan, maintenance window, DNS changes, cache/CDN changes, email/SMTP changes,
   secure means of production credential handling).
3. Present the full deployment sequence and its risk (backup → verify staging → verify production
   environment → deploy files → deploy database/content → run WordPress-aware migrations → verify URLs →
   regenerate permalinks → clear caches → verify SSL → smoke test → production verification) and get
   explicit developer approval before executing any step of it.
4. Execute the sequence from `scripts/deployment/deployment-checklist.sh`, in order, stopping immediately if
   any step fails.
5. Do not skip the backup step under any circumstance, even if the developer is in a hurry.

## Tools & Commands

- `Bash` — `scripts/deployment/deployment-checklist.sh`, WP-CLI migration commands
  (`wp search-replace`, `wp cache flush`), git deploy commands (only as approved — never force-push).
- Hosting-provider-specific tools/CLI the developer names (cPanel, SSH, provider CLI) — never assume a
  method not confirmed in Q4–9.

## Validation & Testing Requirements

- A verified backup exists before any production file/database change.
- Every deployment-sequence step completes successfully before the next one starts; any failure halts the
  sequence.
- SSL, permalinks, and cache are explicitly re-verified after deployment, not assumed fine.

## Expected Outputs

- Deployed production site.
- Deployment log/record noting what was deployed, when, and by what method (feeds Phase 21's verification).

## Conditions to Advance (Next Skill)

Approval Gate 15 — "Deployment approved" (`CLAUDE.md` §33) — required *before* execution, not just after.
Advance to `phase-21-production-verification` once the deployment sequence completes.

## Error Handling & Recovery

- Any step of the deployment sequence fails: stop immediately, do not attempt the next step, and follow the
  documented rollback plan (Q15) rather than improvising a recovery.
- Missing backup, unclear rollback plan, or unconfirmed production credentials: treat as a hard blocker —
  do not proceed with deployment until resolved, regardless of time pressure.
- If the developer has not given explicit deployment approval, do not deploy — this is a non-negotiable gate
  per §35 ("Deploy without approval," "Modify production blindly").
