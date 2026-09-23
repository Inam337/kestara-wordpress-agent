# docs/ Authoring Conventions

`CLAUDE.md` defines *what* content each phase deliverable under `docs/` must contain. This file covers
*how* to format it, so every phase doc reads consistently regardless of which phase produced it.

- One H1 per file, matching the deliverable's purpose (e.g. `# Discovery`), not the filename.
- Open with a one- or two-line blockquote summarizing the doc's role and when it's updated — see
  `docs/ai-dlc/phase-status.md` for the pattern.
- Use tables for anything enumerable (plugin lists, field groups, questions/answers, phase history).
  Prefer a table over a bullet list once a row would need more than name + one description.
- Mark open/unanswered items explicitly (`TBD`, `Pending`, `—`) rather than leaving a table cell empty —
  an empty cell reads as "answered with nothing" instead of "not yet answered."
- Cross-reference other docs and `CLAUDE.md`/`AGENTS.md` sections by path and section number
  (e.g. "see `CLAUDE.md` §33, Gate 6") rather than restating their content — content lives in one place.
- Template files under `templates/` use `{{double-brace}}` placeholders; when seeding a new `docs/` file
  from a template, replace every placeholder or mark it `TBD` — never leave a literal `{{placeholder}}`
  in a doc that's presented as filled in.
- Don't invent values to fill a table cell. An unanswered developer question stays `TBD`/blocker, per
  `CLAUDE.md` §1 and §35.
