---
name: phase-13-seo
description: Execute Kestara AI-DLC Phase 13 — SEO. Implement technical and on-page SEO (titles, meta descriptions, canonicals, schema, Open Graph, sitemap, robots, redirects, alt text) as part of the build, not an afterthought. Use once Gate 9 (ACF/CMS verified) is passed and pages exist to apply SEO to.
---

# Phase 13 — SEO

## Purpose

Implement technical and on-page SEO as part of the build, per `CLAUDE.md` §17, satisfying Approval Gate 10
("SEO verified").

## Required Inputs & Prerequisites

- Approval Gate 9 passed (ACF/CMS verified) and at least the pages being SEO'd already built (Phase 11).
- The SEO plugin/approach decided in Phase 03 (high-level) and Phase 07 (§11.1 Q5–8, specific plugin).
- Any historical SEO value to preserve, from Phase 01's Discovery/existing-site audit.

## Step-by-Step Workflow

1. Confirm Gate 9 is passed and the SEO plugin decision (Phase 07) is in place.
2. Ask §17's questions 1–21 one at a time (keywords, search intent, titles, meta descriptions, existing
   metadata to preserve, canonicals, URL structure, heading hierarchy, internal linking, breadcrumbs, schema
   types — asked per page/content type, not a generic yes — Open Graph, Twitter/social metadata, XML
   sitemap, robots.txt, redirects, image alt-text rules, pagination/indexation rules, noindex requirements,
   search/filter URL indexing rules, structured data validation).
3. For schema (Q11), confirm which specific types apply per page/content type (`Organization`,
   `LocalBusiness`, `Article`/`BlogPosting`, `Product`, `FAQPage`, `BreadcrumbList`, `Review`/
   `AggregateRating`, `Event`) rather than accepting a blanket "yes."
4. If this is a migration/rebuild, cross-check preserved URLs/redirects against Phase 01's existing-site
   audit before finalizing the redirect map.
5. Implement and validate per §17's Validation list.

## Tools & Commands

- Read/inspect the chosen SEO plugin's configuration (via `wp-cli` or admin) rather than assuming defaults.
- `WebFetch` — validate structured data against schema.org documentation or Google's guidance when the
  developer wants confirmation of a specific schema type's required fields.
- `Write`/`Edit` — `docs/seo/seo-checklist.md`, plus the actual meta/schema implementation (plugin config,
  theme template tags, or custom code per the Phase 03 high-level decision).

## Validation & Testing Requirements

Per §17: one appropriate H1 per page, correct heading hierarchy, titles, meta descriptions, canonicals,
indexability, internal links, schema, Open Graph, sitemap, robots, redirects, image alt text — every item
checked and recorded in `docs/seo/seo-checklist.md`, not assumed.

## Expected Outputs

- `docs/seo/seo-checklist.md`
- Implemented SEO configuration (plugin settings, meta tags, schema markup, sitemap, robots.txt, redirects).

## Conditions to Advance (Next Skill)

Approval Gate 10 — "SEO verified" (`CLAUDE.md` §33). Advance to `phase-14-responsive-qa` (and the parallel
`phase-15-accessibility`/`phase-16-cross-browser-qa`) once the checklist is fully validated.

## Error Handling & Recovery

- A page missing a clear primary keyword/search intent: ask the developer rather than guessing SEO copy.
- A redirect or preserved URL from the existing site (migration case) is missing from the map: treat as a
  launch blocker, not a post-launch fix, per §17/§28.
- If a schema type's required fields aren't available (e.g. no `Review` data exists yet), omit that schema
  type rather than fabricating fields to satisfy it.
