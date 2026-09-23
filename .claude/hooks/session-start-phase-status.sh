#!/usr/bin/env bash
# SessionStart hook: surfaces the current AI-DLC phase at the start of every Claude Code session,
# so a new session picks up where the last one left off without re-reading the whole file.
# CLAUDE.md §2 already requires Kestara to treat docs/ai-dlc/phase-status.md as the single source
# of truth for "what phase are we in" — this hook just makes that automatic instead of manual.
#
# Never blocks session start: exits 0 even if the status file is missing or unparsable.

set -uo pipefail

cd "$(dirname "$0")/../.." || exit 0

STATUS_FILE="docs/ai-dlc/phase-status.md"

[[ -f "$STATUS_FILE" ]] || exit 0

PHASE=$(grep -m1 '^\*\*Current Phase:\*\*' "$STATUS_FILE" | sed 's/^\*\*Current Phase:\*\* *//')
STATUS=$(grep -m1 '^\*\*Status:\*\*' "$STATUS_FILE" | sed 's/^\*\*Status:\*\* *//')

if [[ -n "$PHASE" ]]; then
  echo "Kestara — resuming at Phase ${PHASE} (${STATUS:-status unknown}). See ${STATUS_FILE} for open questions/blockers before proceeding."
fi

exit 0
