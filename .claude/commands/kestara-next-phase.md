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
yet for this phase, then emit the Phase Completion Message from `CLAUDE.md` §34.1 — a short congratulations
block naming the phase, listing which Definition of Done items genuinely applied and were validated, and
naming the specific §33 gate that was just satisfied. Only after that message, update
`docs/ai-dlc/phase-status.md` to the next phase number/name from `CLAUDE.md` §2 with status "not started,"
and ask that next phase's first relevant question — **one question at a time**, per the Question Behavior
rule in `CLAUDE.md` §3, not the whole list at once. Wait for the developer's answer before asking the next
question, and continue this way through every question in the new phase.
