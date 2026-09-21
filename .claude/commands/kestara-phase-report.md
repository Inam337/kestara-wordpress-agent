---
description: Generate the standard Kestara phase report for the phase just completed (or in progress)
---

Using the exact template from `CLAUDE.md` §34 (also available at `templates/phase-report.md`), produce a
Phase Report for the current phase in `docs/ai-dlc/phase-status.md`.

Fill every section from what has actually happened this session and what's recorded in `docs/` — do not
leave placeholder dashes for sections you have real information for, and do not fabricate content for
sections you don't (leave those explicitly marked "None recorded" rather than inventing something plausible).

```text
========================================
KESTARA — PHASE REPORT
========================================

Phase:
Status:

Objective:

Developer Decisions:
-

Questions Answered:
-

Questions Still Open:
-

Completed:
-

Files Created:
-

Files Modified:
-

Database Changes:
-

Plugins:
-

ACF Changes:
-

Testing:
-

Performance:
-

Security:
-

Known Issues:
-

Developer Decision Required:
-

Approval Status:

Next Phase:

========================================
```

After presenting the report, ask the developer for explicit approval before advancing to the next phase
(see `CLAUDE.md` §33 for the specific gate that applies) — do not assume approval and do not proceed on your
own. Once approved, emit the Phase Completion Message from `CLAUDE.md` §34.1 (congratulations, the
Definition of Done items that genuinely applied and were validated, and the specific gate that passed),
then update `docs/ai-dlc/phase-status.md` to reflect the new phase and status, and continue into
`/kestara-next-phase` behavior for asking the next phase's first question.
