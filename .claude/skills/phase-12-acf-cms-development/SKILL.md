---
name: phase-12-acf-cms-development
description: Execute Kestara AI-DLC Phase 12 — ACF / CMS Development. Make approved dynamic content manageable by administrators through well-documented, non-duplicated ACF field groups and options pages. Use once ACF Pro is approved (Phase 07) and page development (Phase 11) surfaces a dynamic-content need.
---

# Phase 12 — ACF / CMS Development

## Purpose

Make approved dynamic content manageable by administrators, per `CLAUDE.md` §16, satisfying Approval Gate 9
("ACF/CMS verified"). Runs interleaved with Phase 11 (each page's ACF needs are built alongside it), not as
one giant field-building pass at the end.

## Required Inputs & Prerequisites

- ACF Pro approved and installed (Phase 07, §11.1 Q1–4).
- `docs/wordpress/content-model.md` (Phase 06) for which fields belong to which content type.

## Step-by-Step Workflow

1. Confirm ACF Pro is available and Phase 06's content model exists.
2. Ask §16's questions 1–20 one at a time (required/optional fields, field types, validation, defaults,
   repeaters, flexible content, relationships, galleries, post objects, clone fields, options pages,
   conditional logic, instructions/help text, editor permissions, empty-content fallback, missing-image
   fallback, other fallback behaviors, version control of field definitions, migration/import needs).
3. Build one field group per content type/component, checking first whether an existing field group already
   covers the need (§16's "avoid duplicate fields" rule).
4. Define a safe fallback for every field that could be empty or hold a missing image, per Q16–18 — never
   let a missing field break page rendering.
5. Document every field group as it's built.

## Tools & Commands

- `Bash`/`wp-cli` — `wp acf` commands if available, or direct ACF JSON sync (`acf-json/`) for
  version-controlled field definitions.
- `Read` — `docs/wordpress/content-model.md`, the specific page's `docs/pages/<page-slug>.md`.
- `Write`/`Edit` — the three deliverables below, plus ACF field-group JSON/PHP registration.

## Validation & Testing Requirements

- No static content was made editable "just in case" (§16's rule against unnecessary editability).
- Every repeater/flexible-content/relationship field has a defined empty-state fallback, tested by actually
  emptying the field and checking the rendered output.
- Field groups are version-controlled (ACF JSON sync or equivalent) per Q19, not only stored in the
  database.

## Expected Outputs

```text
docs/acf/field-groups.md
docs/acf/options-pages.md
docs/acf/content-editing-guide.md
```

## Conditions to Advance (Next Skill)

Approval Gate 9 — "ACF/CMS verified" (`CLAUDE.md` §33). Advance to `phase-13-seo` (and continued
`phase-11-page-development` for remaining pages) once field groups are validated.

## Error Handling & Recovery

- A field need that duplicates an existing field group: reuse/extend the existing group instead of creating
  a near-duplicate.
- A missing-image or empty-field scenario that isn't handled: treat it as a bug before marking the phase
  done — a broken layout on empty content is a Definition-of-Done failure, not a later cleanup item.
- If field definitions aren't version-controlled yet (Q19) and the developer wants that, set it up before
  proceeding rather than deferring indefinitely.
