---
name: phase-07-plugin-architecture
description: Execute Kestara AI-DLC Phase 07 — Plugin Architecture. Run the full plugin-selection questionnaire, build the plugin decision matrix, get the installation approval gate satisfied, and install/configure only approved plugins. Use once the Phase 06 content model exists, before Theme Architecture begins. Also the phase where an e-commerce (WooCommerce) requirement is confirmed as a plugin decision.
---

# Phase 07 — Plugin Architecture

## Purpose

Select only the plugins necessary for the approved requirements, per `CLAUDE.md` §11, contributing to
Approval Gate 6 ("Architecture approved"). This is the most error-prone phase to rush — §11.3's Plugin
Installation Approval Gate exists specifically to prevent unapproved architecture/security/licensing impact.

## Required Inputs & Prerequisites

- `docs/wordpress/content-model.md` (Phase 06) complete.
- Any plugin constraints already captured in Phase 03 (`docs/architecture/technical-decisions.md`).

## Step-by-Step Workflow

1. Confirm Phase 06 is complete.
2. Ask §11's Developer Questions (1–17), one at a time.
3. Run the full §11.1 Major Plugin Selection Questionnaire (questions 1–52) across every category: Core
   CMS/ACF, SEO, Performance/Caching, Forms, Gallery/Media, Security, Backup/Recovery, Analytics, Image
   Optimization, Multilingual, Redirects, Other. Skip a category only when it's demonstrably irrelevant, and
   say so explicitly.
4. If any answer in §11.1 (e.g. Q15/21 e-commerce, or a named external service) implies WooCommerce, Stripe,
   or another named integration, treat it as a capability-skill trigger per `CLAUDE.md` §39.3 and log it in
   `docs/ai-dlc/skills-registry.md` before continuing.
5. Build the Plugin Decision Matrix (`templates/plugin-decision-matrix.md`) — one row per candidate plugin,
   classified per §11.4 (Developer-Required / Existing / Recommended / Optional / Prohibited /
   Plugin-Free Implementation).
6. Present the matrix and the §11.3 Plugin Installation Approval Gate details (purpose, version, why
   required, alternative, performance/security/data impact, license, conflicts, removal plan) for every
   plugin that materially affects architecture, content, database, performance, security, SEO, or licensing.
7. Install/configure only what's approved. Validate for conflicts.
8. Update plugin documentation.

## Tools & Commands

- `WebFetch`/`WebSearch` — research a candidate plugin's maintenance status, changelog, known conflicts —
  never invent plugin capabilities.
- `Bash`/`wp-cli` — `wp plugin install`, `wp plugin activate`, `wp plugin list` (only after approval).
- `Write`/`Edit` — `docs/wordpress/plugin-plan.md`, the decision matrix, `docs/ai-dlc/skills-registry.md`.

## Validation & Testing Requirements

- No plugin is installed without passing the §11.3 gate individually.
- The decision matrix considers requirement coverage, existing functionality, maintenance, compatibility,
  security, performance, licensing, migration impact, conflicts, duplication, and long-term maintainability
  — not just "does it work."
- Installed plugins are validated for conflicts before the phase is marked complete.
- No plugin was chosen "because it's commonly used" without a requirement backing it (§11's Rule, §11.4).

## Expected Outputs

- `docs/wordpress/plugin-plan.md`
- Completed plugin decision matrix (per `templates/plugin-decision-matrix.md`)
- `docs/ai-dlc/skills-registry.md` updated for any triggered capability skill (Third-Party API Integration,
  Stripe, WooCommerce, etc.)

## Conditions to Advance (Next Skill)

Contributes to Approval Gate 6 — "Architecture approved" (`CLAUDE.md` §33), plus its own internal "Phase 07
approval" per §11's flow diagram. Advance to `phase-08-theme-architecture` once every plugin passes its
individual §11.3 gate.

## Error Handling & Recovery

- A plugin that would duplicate existing theme/core/server functionality: flag as Plugin-Free
  Implementation candidate rather than installing it by default.
- A prohibited plugin (§11.4) surfaces again later in the project: refuse and point back to the recorded
  decision rather than re-litigating it silently.
- If a plugin installation causes a conflict or breaks an existing feature, roll back per its documented
  removal/rollback plan and report it — do not leave the site in a broken state while investigating.
- If §11.3 approval is withheld for a plugin, mark it `Pending` in the matrix and do not install it; record
  the open decision in `docs/ai-dlc/phase-status.md`.
