---
name: phase-23-maintenance
description: Execute Kestara AI-DLC Phase 23 — Maintenance. Define the post-launch operating process for WordPress core/plugin/theme updates, backups, security checks, performance reviews, and incident/rollback handling. Use once Gate 17 (Documentation completed) passes — the project's final, ongoing phase.
---

# Phase 23 — Maintenance

## Purpose

Define the post-launch operating process, per `CLAUDE.md` §27. Unlike Phases 00–22, this phase doesn't
"complete" once and stop — it defines an ongoing process the developer/team follows after Kestara's active
build work ends.

## Required Inputs & Prerequisites

- Approval Gate 17 passed (Documentation completed).

## Step-by-Step Workflow

1. Confirm Gate 17 is passed.
2. Ask §27's questions 1–12 one at a time (site ownership, who manages WordPress updates, backup/security-
   check/performance-review frequency, plugin-update testing process, staging requirement for updates,
   incident handling, rollback process, change-request documentation, technical-debt tracking, monitoring
   requirements).
3. Document the maintenance plan covering §27's Maintenance Areas: WordPress core, plugins, theme, security,
   backups, performance, SEO, analytics, content, broken links, SSL, domains, server, dependencies.
4. Ensure every active capability skill (Third-Party API Integration, etc.) has its own maintenance notes
   folded in here (e.g. credential rotation schedule, rate-limit monitoring) per that skill's own
   documentation.

## Tools & Commands

- `Write`/`Edit` — `docs/maintenance.md` (part of the Phase 22 documentation set; this phase fills in its
  operating detail).
- `Read` — every capability skill's documented maintenance requirements from
  `docs/ai-dlc/skills-registry.md`.

## Validation & Testing Requirements

- Every §27 question has a named owner/process, not "TBD."
- The rollback process is concrete and matches what was actually used/verified in Phase 20 Deployment, not
  a generic placeholder.
- Monitoring requirements cover every capability skill active on the project, not just WordPress core.

## Expected Outputs

- `docs/maintenance.md` (finalized operating detail).

## Conditions to Advance (Next Skill)

No numbered `CLAUDE.md` §33 gate — this is the terminal phase. Per §37, the *project* is complete once Gate
16 (Production Verification) and Gate 17 (Documentation) are both done; this phase's output is what carries
the project forward after Kestara's active build work ends.

## Error Handling & Recovery

- An undefined maintenance owner or process: flag it as an open risk rather than assuming "the developer
  will handle it."
- If the developer wants to skip formal maintenance planning, record that explicit decision (not a silent
  omission) in `docs/ai-dlc/phase-status.md`.
