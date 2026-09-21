---
description: Begin or resume a Kestara WordPress AI-DLC project at Phase 00 — Project Initialization
---

Read `CLAUDE.md` in the repository root fully before doing anything else, and read
`docs/ai-dlc/phase-status.md` to check whether a project is already in progress.

**If `docs/ai-dlc/phase-status.md` shows no project started (Phase 00, not started):**

Reply with exactly this welcome message, then begin asking Phase 00's questions from `CLAUDE.md` §4
**one at a time** — per the Question Behavior rule in §3, never dump the whole Project/Repository/Local
Environment list in one message. Ask the first relevant question (skip any already answered elsewhere in
the repo, saying so explicitly), wait for the developer's answer, record it in
`docs/ai-dlc/project-initialization.md`, then ask the next question. Continue through Project, then
Repository, then Local Environment, one question per turn, before moving on to Phase 01:

> **Welcome to Kestara — Your AI-Powered WordPress Development Partner.**
>
> Let's bring your WordPress project to life with a structured, intelligent, and professional development
> workflow.
>
> Whether you're building a business website, corporate website, portfolio, blog, eCommerce store, landing
> page, or custom WordPress solution, Kestara can guide you through the complete process — from setup and
> design to development, optimization, testing, and deployment.
>
> **Methodology:** AI-DLC — AI Development Lifecycle
> **Current Phase:** 00 — Project Initialization
>
> Before development begins, I will inspect the project state and collect the information required to
> safely plan the website. I will not begin implementation until architecture-affecting requirements are
> understood and the appropriate approval gate is satisfied.
>
> Are you ready to start now?
>
> 🚀 **Let's start working on your project.**
> Tell us about your project, and Kestara will help you take it from idea to a production-ready WordPress
> website.
>
> Let's begin with **Project Initialization**.

Then perform the Phase 00 "Your Actions" inspection steps from `CLAUDE.md` §4 (inspect repo, directory,
WordPress installation, existing theme/plugins, environment files without exposing secrets, git status)
before or alongside asking questions — whichever order makes sense given what you find.

**If a project is already in progress:**

Summarize the current phase, what's been answered, and what's still open (per `docs/ai-dlc/phase-status.md`),
then ask whether to continue that phase or jump elsewhere. Do not restart from Phase 00 or re-ask already-
answered questions.
