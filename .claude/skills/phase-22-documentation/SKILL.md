---
name: phase-22-documentation
description: Execute Kestara AI-DLC Phase 22 — Documentation. Ensure another developer can understand, maintain, and deploy the project by filling in the required docs/ tree (architecture, design handoff, components, plugins, ACF, SEO, responsive, accessibility, performance, security, testing, deployment, maintenance). Use once Gate 16 (Production verification passed) passes.
---

# Phase 22 — Documentation

## Purpose

Ensure another developer can understand, maintain, and deploy the project, per `CLAUDE.md` §26, satisfying
Approval Gate 17 ("Documentation completed") — the final gate before the project is considered complete.

## Required Inputs & Prerequisites

- Approval Gate 16 passed (Production verification passed).
- Every prior phase's deliverable already exists under `docs/` — this phase consolidates and completes
  them, it does not create parallel documentation.

## Step-by-Step Workflow

1. Confirm Gate 16 is passed.
2. Fill in the required documentation set named in §26 — mirroring this repo's existing `docs/` tree, not
   creating new top-level files: `README.md`, `architecture.md`, `design-handoff.md`, `page-inventory.md`,
   `components.md`, `plugins.md`, `acf.md`, `custom-post-types.md`, `taxonomies.md`, `seo.md`,
   `responsive.md`, `accessibility.md`, `performance.md`, `security.md`, `testing.md`, `deployment.md`,
   `maintenance.md`.
3. Also document: environment setup, required dependencies, configuration, content-editing guide, plugin
   configuration, deployment process, rollback process, known issues, technical debt, future improvements.
4. Cross-check every doc against the actual deliverable it summarizes (e.g. `plugins.md` against
   `docs/wordpress/plugin-plan.md`) — this phase must not introduce information that contradicts the
   phase-specific source of truth.
5. Include every active capability skill (Third-Party API Integration, etc.) in the relevant doc(s), with
   its required credentials/configuration/maintenance notes per its own skill's deliverables.

## Tools & Commands

- `Read` — every phase deliverable under `docs/` produced so far, to consolidate rather than re-derive.
- `Write`/`Edit` — the documentation files listed above.

## Validation & Testing Requirements

- Every required documentation file exists and is filled in, not a stub.
- No documented claim contradicts the phase-specific source doc it summarizes.
- Known issues and technical debt are recorded explicitly, not omitted to appear "done."

## Expected Outputs

The full documentation set named in §26, consolidated and complete.

## Conditions to Advance (Next Skill)

Approval Gate 17 — "Documentation completed" (`CLAUDE.md` §33) — the last gate. Advance to
`phase-23-maintenance` once documentation is complete; per §37, the project itself is only complete once
this and Gate 16 are both done.

## Error Handling & Recovery

- A documentation gap discovered here (e.g. a plugin installed in Phase 07 with no corresponding note in
  `docs/wordpress/plugin-plan.md`): go back and fix the source doc, don't paper over the gap in the
  consolidated documentation.
- If a known issue or piece of technical debt was never explicitly recorded earlier, add it now rather than
  letting documentation quietly omit it.
