---
name: phase-00-project-initialization
description: Execute Kestara AI-DLC Phase 00 — Project Initialization. Establish workspace, repository, and local environment state for a brand-new or freshly-cloned Kestara project. Use at the very start of a session when docs/ai-dlc/phase-status.md shows Phase 00 not started or not complete, or when the developer runs /kestara-start.
---

# Phase 00 — Project Initialization

## Purpose

Establish the project workspace, source-control state, environment status, and initial project context
before any other phase begins, per `CLAUDE.md` §4. Nothing in this lifecycle proceeds until this phase's
inspection and questions are done — this skill is the entry point for every project.

## Required Inputs & Prerequisites

- None from prior phases — this is the first skill in the lifecycle.
- Requires read access to the repository root, its `.git` metadata, and the local filesystem, so the
  inspection steps below can run before any question is asked.

## Step-by-Step Workflow

1. Read `CLAUDE.md` in full, then `docs/ai-dlc/phase-status.md` — if it shows a project already in
   progress, summarize state and ask whether to resume rather than restarting (per `.claude/commands/kestara-start.md`).
2. If no project is in progress, emit the exact §36 welcome message.
3. Run the "Your Actions" inspection from `CLAUDE.md` §4 before or alongside questions: inspect the
   repository, the directory, detect a WordPress installation, detect an existing theme/plugins, detect
   environment files without exposing secrets, and inspect `git status`. Never modify files before this is
   done.
4. Ask §4's Project questions (1–8), one at a time, recording each answer in
   `docs/ai-dlc/project-initialization.md` as it's given.
5. Ask §4's Repository questions (9–14), one at a time.
6. Ask §4's Local Environment questions (15–19), one at a time.
7. Skip any question already answered by inspection (e.g. repo URL from `git remote`) — say so explicitly
   rather than re-asking.
8. If this is a rebuild/redesign/migration/enhancement of an existing site (question 4), flag that the
   Phase 01 Discovery skill will need the deeper migration audit in `CLAUDE.md` §28.

## Tools & Commands

- `Bash`/`git` — `git status`, `git remote -v`, `git branch`, `git log` for repository state.
- `Glob`/`Grep`/`Read` — detect an existing WordPress install (`wp-config.php`, `wp-content/`), existing
  theme/plugin directories, `.env*` files (names only — never read/print secret values).
- `Write`/`Edit` — record answers into `docs/ai-dlc/project-initialization.md`.

## Validation & Testing Requirements

- Every Required question in §4 is either answered or explicitly recorded as a blocker.
- Inspection findings (repo state, environment, existing WP install) are documented before any
  implementation step, per `CLAUDE.md` §35's inspection-before-modification rule.
- No secret values were printed or committed while detecting environment files.

## Expected Outputs

- `docs/ai-dlc/project-initialization.md`
- `docs/ai-dlc/phase-status.md` updated to reflect Phase 00 status and any open blockers.

## Conditions to Advance (Next Skill)

Phase 00 has no numbered `CLAUDE.md` §33 gate of its own — it is a prerequisite phase. Advance to
`phase-01-discovery` once all Required questions are answered/recorded and inspection is complete, per the
Definition of Done in `CLAUDE.md` §37.

## Error Handling & Recovery

- Missing WordPress/PHP/MySQL/WP-CLI/Docker or other environment dependencies discovered here: follow the
  §9.1 protocol (ask approval → install/configure → verify → document) rather than assuming or silently
  proceeding.
- Unclear or conflicting repository state (e.g. uncommitted changes, unfamiliar branches): investigate
  before touching anything, per the "Executing actions with care" guidance — never discard or overwrite
  what you find.
- If the developer can't answer a Required question yet, record it as an open blocker in
  `docs/ai-dlc/phase-status.md` and continue with what's known; do not invent a placeholder answer.
