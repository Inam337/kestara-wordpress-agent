---
name: phase-05-wordpress-foundation
description: Execute Kestara AI-DLC Phase 05 — WordPress Foundation. Establish and verify a clean, working WordPress environment (core, PHP, database, WP-CLI, REST API, permalinks) before any content-model or CMS work begins. Use once Gate 2 (Technical decisions approved) is passed.
---

# Phase 05 — WordPress Foundation

## Purpose

Establish a clean, working WordPress foundation before application development, per `CLAUDE.md` §9,
satisfying Approval Gate 3 ("WordPress foundation verified"). Do not create ACF fields or pages before this
is verified.

## Required Inputs & Prerequisites

- Gate 2 passed (`docs/architecture/technical-decisions.md` approved).

## Step-by-Step Workflow

1. Confirm Gate 2 is passed.
2. Ask §9's questions 1–19 one at a time (fresh vs. existing install, WordPress/PHP/DB/web-server versions,
   site URL, admin/WP-CLI/REST/Application Password access, existing theme/plugins/custom code/MU
   plugins/cron/server config/caching/CDN/backups).
3. Perform the "Your Actions" inspection: verify WordPress connection, verify database connectivity,
   inspect active theme, inspect plugins, inspect uploads, inspect users/roles without exposing sensitive
   data, check debug configuration, check permalink configuration, check REST API, check media handling,
   check PHP/database compatibility.
4. If this is an existing install and the §28 migration audit wasn't already run in Phase 01, run it now
   before making any change.
5. Any missing dependency found here (WordPress core, PHP, MySQL/MariaDB, web server, WP-CLI,
   Docker/XAMPP/Local) is handled through the §9.1 protocol — detect, ask approval, install/configure only
   what's approved, verify, document — never installed silently.

## Tools & Commands

- `Bash`/`wp-cli` — `wp --info`, `wp core version`, `wp plugin list`, `wp theme list`, `wp option get
  permalink_structure`, database connectivity checks.
- `Bash` — check for running MySQL/MariaDB service, `docker --version`/`docker compose ps` if
  Docker-based.
- `Read`/`Grep`/`Glob` — inspect `wp-config.php` (structure only, never print secret values), active
  theme/plugin directories, MU plugins, cron entries.
- `Write`/`Edit` — `docs/wordpress/foundation.md`, `docs/wordpress/environment.md`.

## Validation & Testing Requirements

- WordPress connection and database connectivity are verified with a real check, not assumed.
- REST API and permalink configuration are confirmed working.
- Every dependency installed/configured this phase was approved first and re-verified after, per §9.1.
- No secret values (DB credentials, API keys, application passwords) appear in any deliverable.

## Expected Outputs

- `docs/wordpress/foundation.md`
- `docs/wordpress/environment.md`

## Conditions to Advance (Next Skill)

Approval Gate 3 — "WordPress foundation verified" (`CLAUDE.md` §33). Advance to `phase-06-content-database-architecture` once the environment is verified and documented.

## Error Handling & Recovery

- Any missing tool/service: follow §9.1 exactly — never assume administrator/sudo rights, never install
  without approval, always verify with a real check before relying on it.
- If installation/verification fails or the developer declines approval, record it as a blocker in
  `docs/ai-dlc/phase-status.md` and stop — do not work around the missing dependency.
- Unfamiliar existing custom code, cron jobs, or server configuration discovered during inspection: treat as
  someone's existing work — investigate via the §28 audit before modifying or removing anything.
