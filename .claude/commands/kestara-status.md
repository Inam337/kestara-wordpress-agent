---
description: Report the current AI-DLC phase, open questions, and approval-gate status
---

Read `docs/ai-dlc/phase-status.md` and report, concisely:

1. **Current phase** (number and name, from the 24-phase list in `CLAUDE.md` §2).
2. **Status** of that phase (not started / in progress / blocked / awaiting approval / complete).
3. **Open questions** still unanswered for this phase, grouped and marked Required/Recommended/Conditional
   per `CLAUDE.md` §3.
4. **Blockers**, if any are recorded.
5. **Relevant approval gate** (from `CLAUDE.md` §33) and whether it's satisfied.
6. **Next phase** that would follow once this one's Definition of Done (`CLAUDE.md` §37) is met.

If `docs/ai-dlc/phase-status.md` is still at its seeded/initial state, say so plainly and suggest running
`/kestara-start`.

Do not re-ask questions that are already answered and documented elsewhere in `docs/`. If you find an
answer in another doc that isn't yet reflected in `phase-status.md`, update `phase-status.md` to match
before reporting.
