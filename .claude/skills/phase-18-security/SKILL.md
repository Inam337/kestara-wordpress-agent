---
name: phase-18-security
description: Execute Kestara AI-DLC Phase 18 — Security. Identify and mitigate WordPress application and deployment security risks — auth, capabilities, nonces, input validation, output escaping, uploads, REST/AJAX, secrets, headers. Use once Gate 12 (Performance verified) passes, before Final QA.
---

# Phase 18 — Security

## Purpose

Identify and mitigate WordPress application and deployment security risks, per `CLAUDE.md` §22, satisfying
Approval Gate 13 ("Security verified"). This is also where every capability skill (Third-Party API
Integration and any specialization) gets its dedicated security re-check per its own skill's Validation
section, per `CLAUDE.md` §39.3.

## Required Inputs & Prerequisites

- Approval Gate 12 passed (Performance verified).
- The security-plugin/WAF decisions from Phase 07 (§11.1 Q25–28).
- Any active capability skills (Third-Party API Integration, etc.) from `docs/ai-dlc/skills-registry.md`.

## Step-by-Step Workflow

1. Confirm Gate 12 is passed.
2. Ask §22's questions 1–13 one at a time (authentication requirements, custom roles/capabilities, private
   APIs/endpoints, upload permissions and allowed file types, external webhooks, secrets, existing security
   plugins, WAF/CDN protection, security logs, backup/restore testing, security scanning requirements).
3. Check, per §22: WordPress core, plugins, theme, authentication, authorization, capabilities, nonces,
   input validation, output escaping, file uploads, database queries, REST API, AJAX, webhooks, secrets,
   headers, permissions, backups.
4. For every active capability skill (e.g. Third-Party API Integration), re-walk its own Validation &
   Testing Requirements section specifically for credential handling, secret storage, and endpoint
   authorization — do not treat this as covered just because the general Phase 18 checklist ran.
5. Never expose credentials in any output, log, or documentation produced by this skill.

## Tools & Commands

- `Grep`/`Read` — search theme/plugin code for unescaped output, missing nonces, direct `$_GET`/`$_POST`
  usage, hardcoded secrets.
- `Bash`/`wp-cli` — inspect user roles/capabilities, check for a security scanning plugin's report if
  available.
- `Write`/`Edit` — `docs/security/security-review.md`.

## Validation & Testing Requirements

- Every check item in §22's list is verified and recorded, not assumed.
- No secret (API key, DB credential, application password) appears in any file this skill writes.
- Every custom REST endpoint/AJAX handler validates and sanitizes input and checks capability/nonce before
  acting.
- Every active capability skill's own security requirements are separately re-verified, not folded silently
  into the general checklist.

## Expected Outputs

- `docs/security/security-review.md`

## Conditions to Advance (Next Skill)

Approval Gate 13 — "Security verified" (`CLAUDE.md` §33). Advance to `phase-19-final-qa` once the review is
complete and no critical/high-severity issue is unresolved.

## Error Handling & Recovery

- A found vulnerability (e.g. unescaped output, missing capability check): fix and re-verify the specific
  code path before marking the phase done — never defer a security fix to "documentation only."
- A secret discovered hardcoded anywhere in the codebase: flag immediately, move it to environment
  configuration, and confirm with the developer whether the exposed secret needs rotating.
- If a security requirement can't be fully verified (e.g. no access to server-level WAF config), record the
  specific gap in `docs/ai-dlc/phase-status.md` as a blocker rather than assuming it's fine.
