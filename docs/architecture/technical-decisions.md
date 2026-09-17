# Technical Decisions

**Phase:** 03 — Technical Decisions (see `CLAUDE.md` §7)
**Status:** Not started
**Approval Gate:** Gate 2 — Technical decisions approved

## Major Plugin Constraint Question

> Do you already have approved, required, existing, prohibited, or licensed WordPress plugins that this
> project must use or avoid?

**Answer:** _(detailed plugin selection happens in Phase 07 — `docs/wordpress/plugin-plan.md` — this is
just the early constraint check)_

## WordPress

| # | Question | Answer |
|---|---|---|
| 1 | WordPress version? | |
| 2 | Single-site or multisite? | |
| 3 | Classic editor, Gutenberg, or both? | |
| 4 | Classic theme or block theme? | |
| 5 | Custom theme, child theme, or existing theme? | |
| 6 | Is ACF Pro available? | |
| 7 | Is WP-CLI available? | |
| 8 | Is REST API required? | |

## Frontend

| # | Question | Answer |
|---|---|---|
| 9 | Custom CSS, Tailwind, Bootstrap, or another approved approach? | |
| 10 | JavaScript required? | |
| 11 | JavaScript framework required? | |
| 12 | TypeScript required? | |
| 13 | Animation library required? | |
| 14 | Icon library? | |
| 15 | Font strategy? | |

## Architecture

| # | Question | Answer |
|---|---|---|
| 16 | Template strategy? | |
| 17 | Component strategy? | |
| 18 | Data-fetching strategy? | |
| 19 | Form strategy? | |
| 20 | SEO strategy? | |
| 21 | Caching strategy? | |
| 22 | Asset/build strategy? | |
| 23 | Translation strategy? | |
| 24 | Logging/debugging strategy? | |

## Constraints

| # | Question | Answer |
|---|---|---|
| 25 | What technologies are prohibited? | |
| 26 | Which plugins/frameworks must not be used? | |
| 27 | Are there licensing constraints? | |
| 28 | Are there hosting limitations? | |

**Rule:** do not introduce multiple CSS frameworks unless explicitly required.

## Approval

- [ ] Developer has approved the technical decisions above (Gate 2).
