# Per-Page Development Docs

**Phase:** 11 — Page Development (see `CLAUDE.md` §15)

Each page gets its own file here, named `<page-slug>.md`, created when work on that page begins. Use
`templates/page.md` (if present) or the structure below as the starting point. Track the master list in
`docs/design/page-inventory.md`.

## Per-page template

```markdown
# Page: <Name>

**Status:** Not started
**Handoff approved?**
**Design reference:**

## Pre-build questions
1. Is the page handoff approved?
2. Is the design reference available?
3. Which existing components can be reused?
4. Which sections are unique?
5. Which content is dynamic?
6. Which ACF fields are required?
7. Which assets are required?
8. What are the responsive rules?
9. What are the SEO requirements?
10. What accessibility states are required?
11. What interactions exist?
12. What integrations exist?
13. What are the acceptance criteria?

## Workflow checklist
- [ ] Read handoff
- [ ] Inspect components
- [ ] Inspect design
- [ ] Inspect assets
- [ ] Implement template
- [ ] Implement frontend
- [ ] Connect CMS
- [ ] Responsive implementation
- [ ] SEO
- [ ] Accessibility
- [ ] Test
- [ ] Fix
- [ ] Performance check
- [ ] Review
- [ ] Approve
```

Never build all pages blindly — one page's workflow completes (or is explicitly parked) before the next
begins in earnest.
