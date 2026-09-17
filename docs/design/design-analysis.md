# Design Analysis

**Phase:** 04 — Design Handoff (see `CLAUDE.md` §8)
**Status:** Not started
**Approval Gate:** Gate 4 (design source approved), Gate 5 (design analysis completed)

## Developer Questions

| # | Question | Answer |
|---|---|---|
| 1 | Where is the approved design source? | |
| 2 | Design source format — Figma / **Claude/Claude Code design handoff (HTML prototype, e.g. `*.dc.html`)** / XD / Sketch / screenshots / existing website / other? | |
| 3 | Which pages are designed? | |
| 4 | Are desktop designs available? | |
| 5 | Tablet? | |
| 6 | Mobile? | |
| 7 | Are hover/focus/active states defined? | |
| 8 | Are loading/error/empty states defined? | |
| 9 | Are forms and validation states designed? | |
| 10 | Are modal/menu states designed? | |
| 11 | Are animations defined? | |
| 12 | Are fonts provided? | |
| 13 | Are icons provided? | |
| 14 | Are image assets provided? | |
| 15 | Are SVGs provided? | |
| 16 | Is a design system available? | |
| 17 | Are spacing/breakpoint rules documented? | |
| 18 | Are dark/light modes required? | |

## Claude / Claude Code Design Handoff Conversion Notes

_Only fill this section in if question 2 above is a Claude/Claude Code HTML design handoff. See `CLAUDE.md`
§8.1 for the full rule set._

- [ ] Confirmed this is a reference specification, not production code, with the developer.
- [ ] Identified every inline `style="..."` pattern that needs a real stylesheet class.
- [ ] Identified every `style-hover="..."` that needs a real `:hover` rule.
- [ ] Identified proprietary templating (`sc-if`, `sc-for`, `{{ }}`, `data-props`/`renderVals()`) and how
      each will be unrolled (static markup vs. real conditional/loop in the target stack).
- [ ] Transcribed all repeated data arrays (cards, copy, colors) verbatim — none re-invented or paraphrased.
- [ ] Identified tool-authoring artifacts to strip (`support.js`, `_ds/...` bundle, embedded SVG
      `<metadata>`/C2PA blocks).
- [ ] Identified any live Google Fonts `<link>` to replace with self-hosted, subsetted fonts.
- [ ] Identified components repeated verbatim across multiple prototype files that must be built once and
      reused, not duplicated per page.
- [ ] Recorded every literal placeholder token (e.g. `[PLACEHOLDER]`) found in the handoff — these stay as
      visible placeholders until the developer supplies real values; nothing is invented.

## Analysis

Analyze and record findings for: layout, typography, colors, spacing, containers, grid, breakpoints,
components, states, interactions, assets, content hierarchy, accessibility implications, dynamic content
requirements.

### Layout

### Typography

### Colors

### Spacing / Containers / Grid / Breakpoints

### Components

### States & Interactions

### Assets

### Content Hierarchy

### Accessibility Implications

### Dynamic Content Requirements

## Approval

- [ ] Design source approved (Gate 4).
- [ ] Design analysis completed (Gate 5).
