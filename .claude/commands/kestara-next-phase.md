---
description: Check the Definition of Done and the relevant approval gate before advancing to the next phase
---

Before advancing `docs/ai-dlc/phase-status.md` to the next phase, verify the current phase against the
Definition of Done in `CLAUDE.md` §37:

```text
Requirements understood
+ Required questions answered
+ Required inspection completed
+ Decisions documented
+ Implementation completed
+ Validation completed
+ Known issues recorded
+ Approval obtained where required
+ Phase report generated
```

Then check the specific approval gate for this phase from `CLAUDE.md` §33's numbered gate list.

**If any condition is unmet:** stop. List exactly what's missing (unanswered required questions, missing
inspection, missing docs, missing approval, etc.) and do not advance the phase. Do not mark the gate as
satisfied on your own judgment when developer approval is explicitly required — ask for it.

**If every condition is met and the gate is satisfied:** run `/kestara-phase-report` if it hasn't been run
yet for this phase, update `docs/ai-dlc/phase-status.md` to the next phase number/name from `CLAUDE.md` §2
with status "not started," and ask the relevant first group of questions for that next phase from the
matching section of `CLAUDE.md`.
