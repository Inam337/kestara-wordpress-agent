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
| 3 | Classic editor, Gutenberg, or both? (must agree with #4 — see below) | |
| 4 | Classic theme or block theme? A block theme uses `theme.json`/patterns/block templates in Phase 08 instead of the classic PHP template hierarchy — these are different theme architectures, not interchangeable details. | |
| 5 | Custom theme, child theme, or existing theme? | |
| 6 | Is ACF Pro available? | |
| 7 | Is WP-CLI available? | |
| 8 | Is REST API required? | |

## Frontend Architecture Fork (resolve before the Frontend table below)

Traditional server-rendered WordPress theme, or decoupled/headless WordPress with a separate frontend app
consuming REST/GraphQL? See `CLAUDE.md` §7.1 — this changes what "JavaScript framework," "data-fetching
strategy," "form strategy," and "asset/build strategy" even mean below. Default assumption is traditional
unless the developer says otherwise.

**Answer:**

## Frontend

| # | Question | Answer |
|---|---|---|
| 9 | CSS approach — Custom CSS / Tailwind / Bootstrap / other? Note the implication of each (see `CLAUDE.md` §7 Q9: Custom needs a naming convention, Tailwind needs a build pipeline, Bootstrap needs self-hosted-vs-CDN + avoid shipping the unused majority of the framework). | |
| 10 | Is JavaScript required at all? | |
| 11 | If yes — JavaScript framework, informed by the Frontend Architecture Fork above (name it) | |
| 12 | TypeScript required? | |
| 13 | Animation library required? (name it) | |
| 14 | Icon library? (name it — avoid icon fonts unless already standardized) | |
| 15 | Font strategy — self-hosted/subsetted / third-party CDN / system font stack? | |

## Architecture

| # | Question | Answer |
|---|---|---|
| 16 | Template strategy? (depends on #4) | |
| 17 | Component strategy? | |
| 18 | Data-fetching strategy? (depends on the Frontend Architecture Fork) | |
| 19 | Form strategy — plugin / custom / third-party service? (specific plugin chosen in Phase 07) | |
| 20 | SEO strategy — plugin / custom / headless, high-level only? (specific plugin chosen in Phase 07) | |
| 21 | Caching strategy — plugin / CDN / host-level / custom, high-level only? (specific plugin chosen in Phase 07) | |
| 22 | Asset/build strategy? (ties to #9 — e.g. Tailwind needs a build step) | |
| 23 | Translation strategy — is multilingual needed, at what level? (specific plugin chosen in Phase 07) | |
| 24 | Logging/debugging strategy? | |

## Constraints

| # | Question | Answer |
|---|---|---|
| 25 | What technologies are prohibited? | |
| 26 | Which plugins/frameworks must not be used? | |
| 27 | Are there licensing constraints? | |
| 28 | Are there hosting limitations? | |

**Rule:** do not introduce multiple CSS frameworks/approaches unless explicitly required.

## Approval

- [ ] Developer has approved the technical decisions above (Gate 2).
