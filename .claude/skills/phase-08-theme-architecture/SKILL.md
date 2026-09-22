---
name: phase-08-theme-architecture
description: Execute Kestara AI-DLC Phase 08 — Theme Architecture. Define theme structure, template strategy, asset loading, and the separation of concerns between theme and plugins. Use once Phase 07 Plugin Architecture is approved, before the Design System phase.
---

# Phase 08 — Theme Architecture

## Purpose

Define theme structure, template strategy, loading strategy, and separation of concerns between theme and
plugin responsibilities, per `CLAUDE.md` §12, contributing to Approval Gate 6 ("Architecture approved").

## Required Inputs & Prerequisites

- Phase 07 plugin decisions approved (`docs/wordpress/plugin-plan.md`).
- The classic-vs-block theme decision from Phase 03 (`docs/architecture/technical-decisions.md` Q4).

## Step-by-Step Workflow

1. Confirm Phase 07 is complete.
2. Ask §12's questions 1–12 one at a time (classic/block theme, existing/custom theme, required templates,
   global components, reusable sections, archive/detail templates, CSS/JS/PHP organization, asset loading,
   theme-vs-plugin split, what's editable through WordPress).
3. Apply the block-theme or classic-theme structure consistently with Phase 03's decision — a block theme
   means `theme.json`/block patterns/block templates; a classic theme means the classic PHP template
   hierarchy. Do not mix approaches without the developer's explicit confirmation (per §7 Q4's note).
4. Adapt the recommended folder structure in `CLAUDE.md` §12 to the project — do not add structure/
   complexity the project doesn't need.

## Tools & Commands

- `Read` — `docs/architecture/technical-decisions.md`, `docs/wordpress/plugin-plan.md`,
  `docs/design/component-inventory.md`.
- `Write`/`Edit`/`Bash` — scaffold the approved theme directory structure once questions are answered and
  approved (do not scaffold before approval).

## Validation & Testing Requirements

- Theme structure matches the Phase 03 classic-vs-block decision exactly.
- Theme-vs-plugin responsibility split (Q11) is unambiguous — no functionality is duplicated between them.
- Every global/reusable component identified in Phase 04's `component-inventory.md` has a home in the
  planned structure.

## Expected Outputs

- Theme architecture decisions documented in `docs/architecture/architecture.md` (updated).
- The scaffolded theme directory structure itself, once approved.

## Conditions to Advance (Next Skill)

Contributes to Approval Gate 6 — "Architecture approved" (`CLAUDE.md` §33). Advance to
`phase-09-design-system` once theme structure is approved.

## Error Handling & Recovery

- If the developer wants an unusual editor/theme-type combination (e.g. a block theme edited only through
  the classic editor), stop and confirm it's intentional before building around it — do not silently
  "correct" it or silently proceed with an inconsistency.
- If a required template can't be determined from the design/content model yet, ask rather than guess a
  template hierarchy.
- If approval is withheld, record the specific open structural question as a blocker in
  `docs/ai-dlc/phase-status.md`.
