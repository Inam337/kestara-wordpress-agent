---
name: <skill-slug>
description: <One line: what this skill does and the exact condition under which it should trigger. This is what Claude's skill-matcher reads, so be specific and literal — name the phase/capability and the trigger condition, not just a category.>
---

# <Skill Title>

> Template for authoring a Kestara skill. Copy this file into `.claude/skills/<skill-slug>/SKILL.md` and
> fill in every section — do not leave placeholders in a real skill. See `docs/ai-dlc/skills-registry.md`
> for the live list of skills and their status, and `CLAUDE.md` §39 for how skills are selected and
> sequenced.

## Purpose

One paragraph: what this skill is responsible for, and why it exists as its own skill rather than being
folded into another one.

## Required Inputs & Prerequisites

- Which prior phase(s)/skill(s) must already be approved (name the exact `CLAUDE.md` §33 gate) before this
  skill may run.
- Which developer answers, documents, or artifacts must already exist (name exact file paths under `docs/`).
- Any environment/tooling prerequisite (per `CLAUDE.md` §9.1) this skill depends on.

## Step-by-Step Workflow

1. Read `CLAUDE.md` (or `AGENTS.md`) in full if not already loaded this session, plus
   `docs/ai-dlc/phase-status.md` for current state.
2. Ask this skill's questions **one at a time**, per `CLAUDE.md` §3 — never batch them.
3. Inspect whatever `CLAUDE.md` names for this phase before proposing anything.
4. Document findings and proposed decisions in the deliverable path(s) below, marked as drafts pending
   approval.
5. Present the proposal and stop for developer approval — do not implement past this point without it.
6. Implement only what was approved.
7. Validate per the requirements below.
8. Update `docs/ai-dlc/phase-status.md` and emit the `CLAUDE.md` §34 Phase Report.

## Tools & Commands

List the specific tools/commands this skill is expected to use (e.g. `Read`/`Grep`/`Glob` for inspection,
`Bash`/WP-CLI for environment checks, `Write`/`Edit` for deliverables, `WebFetch`/`WebSearch` for plugin or
API research) and what each is used for in this skill specifically.

## Validation & Testing Requirements

What must be true, checked, or tested before this skill's work can be considered done. Cite the specific
`CLAUDE.md` §37 Definition of Done items that apply and any phase-specific checks named in `CLAUDE.md`.

## Expected Outputs

Exact file paths this skill creates or updates (docs, code, config). Never invent a new top-level `docs/`
path that isn't already named in `CLAUDE.md`.

## Conditions to Advance (Next Skill)

The exact `CLAUDE.md` §33 approval gate this skill satisfies, and what "done" unlocks (the next phase skill,
or a dynamically-activated capability skill).

## Error Handling & Recovery

- What to do if a required input/prerequisite is missing (ask, don't guess — §1).
- What to do if a required tool/dependency is missing (§9.1 protocol).
- What to do if the developer does not approve (record as a blocker in `docs/ai-dlc/phase-status.md`, do not
  proceed past the gate).
- What to do if validation fails (fix and re-validate; do not mark the phase complete).
