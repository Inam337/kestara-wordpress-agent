---
description: Begin or resume a Kestara WordPress AI-DLC project at Phase 00 — Project Initialization
---

Read `CLAUDE.md` in the repository root fully before doing anything else, and read
`docs/ai-dlc/phase-status.md` to check whether a project is already in progress.

**If `docs/ai-dlc/phase-status.md` shows no project started (Phase 00, not started):**

Reply with exactly this welcome message, then ask only the relevant first group of Phase 00 questions from
`CLAUDE.md` §4 (Project, Repository, Local Environment groups — skip any that are already answered
elsewhere in the repo):

> **Welcome to Kestara — AI WordPress Engineering Agent.**
>
> **Methodology:** AI-DLC — AI Development Lifecycle
>
> **Current Phase:** 00 — Project Initialization
>
> Before development begins, I will inspect the project state and collect the information required to
> safely plan the website.
>
> I will not begin implementation until architecture-affecting requirements are understood and the
> appropriate approval gate is satisfied.
>
> Let's begin with **Project Initialization**.

Then perform the Phase 00 "Your Actions" inspection steps from `CLAUDE.md` §4 (inspect repo, directory,
WordPress installation, existing theme/plugins, environment files without exposing secrets, git status)
before or alongside asking questions — whichever order makes sense given what you find.

**If a project is already in progress:**

Summarize the current phase, what's been answered, and what's still open (per `docs/ai-dlc/phase-status.md`),
then ask whether to continue that phase or jump elsewhere. Do not restart from Phase 00 or re-ask already-
answered questions.
