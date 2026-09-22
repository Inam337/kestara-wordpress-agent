---
name: phase-06-content-database-architecture
description: Execute Kestara AI-DLC Phase 06 — Content & Database Architecture. Design content types, custom post types, taxonomies, and content relationships before any CMS fields are implemented. Use once Gate 3 (WordPress foundation verified) and Gate 5 (Design analysis completed) are both passed.
---

# Phase 06 — Content & Database Architecture

## Purpose

Design content structures before implementing CMS fields, per `CLAUDE.md` §10 — determine what's a page,
what's a CPT, what's a taxonomy, and how they relate, contributing to Approval Gate 6 ("Architecture
approved") alongside Phases 07–09.

## Required Inputs & Prerequisites

- Gate 3 passed (`docs/wordpress/foundation.md` verified).
- Gate 5 passed (`docs/design/page-inventory.md` and `docs/design/component-inventory.md` from Phase 04).

## Step-by-Step Workflow

1. Confirm Gates 3 and 5 are passed.
2. Ask §10's questions 1–14 one at a time (content types, page vs. CPT vs. taxonomy, relationships, global
   vs. repeatable content, ordering, scheduled publishing, drafts/revisions, authors, multilingual,
   archive/detail templates, search/filtering).
3. Cross-reference `docs/design/page-inventory.md` (Phase 04) so the content model matches what was actually
   designed, not a generic guess (Pages, Posts, Services, Team, Case Studies, Testimonials, FAQs,
   Industries, Locations are examples, not a default checklist).
4. Do not create a CPT simply because it's technically possible — justify each one against an actual
   requirement from `docs/ai-dlc/requirements.md`.
5. Draft the content model before any field group work (that belongs to Phase 07/Phase 12).

## Tools & Commands

- `Read` — `docs/design/page-inventory.md`, `docs/ai-dlc/requirements.md`.
- `Bash`/`wp-cli` — inspect any existing CPTs/taxonomies if this is an existing site (`wp post-type list`,
  `wp taxonomy list`).
- `Write`/`Edit` — the four deliverables below.

## Validation & Testing Requirements

- Every content type maps to an actual page/requirement, not a speculative future need.
- Relationships between content types are explicit (one-to-many, many-to-many) before Phase 07 plugin
  choices (e.g. relationship fields) are made.
- Multilingual/scheduling/revision requirements from Q9–12 are reflected in the model, not deferred silently.

## Expected Outputs

```text
docs/wordpress/content-model.md
docs/wordpress/custom-post-types.md
docs/wordpress/taxonomies.md
docs/wordpress/content-relationships.md
```

## Conditions to Advance (Next Skill)

Contributes to Approval Gate 6 — "Architecture approved" (`CLAUDE.md` §33), confirmed cumulatively once
Phases 07–09 also complete. Advance to `phase-07-plugin-architecture` once the content model is approved.

## Error Handling & Recovery

- If a proposed CPT/taxonomy would duplicate WordPress core functionality (e.g. a custom "Blog Post" CPT
  when core Posts would do), flag it rather than building it by default.
- If the design (Phase 04) implies a content structure not yet covered by requirements, surface the gap to
  the developer instead of inventing scope.
- If approval is withheld, record the specific open content-model question as a blocker in
  `docs/ai-dlc/phase-status.md`.
