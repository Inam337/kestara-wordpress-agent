# WordPress Foundation

**Phase:** 05 — WordPress Foundation (see `CLAUDE.md` §9)
**Status:** Not started
**Approval Gate:** Gate 3 — WordPress foundation verified

## Developer Questions

| # | Question | Answer |
|---|---|---|
| 1 | Fresh WordPress or existing installation? | |
| 2 | WordPress version? | |
| 3 | PHP version? | |
| 4 | Database version? | |
| 5 | Web server? | |
| 6 | Site URL? | |
| 7 | Admin access available? | |
| 8 | WP-CLI available? | |
| 9 | REST API available? | |
| 10 | Application Password available? | |
| 11 | ACF Pro available? | |
| 12 | Existing theme? | |
| 13 | Existing plugins? | |
| 14 | Existing custom code? | |
| 15 | Existing MU plugins? | |
| 16 | Existing cron jobs? | |
| 17 | Existing server-level configuration? | |
| 18 | Existing caching/CDN? | |
| 19 | Existing backups? | |

## Verification Checklist

- [ ] WordPress connection verified.
- [ ] Database connectivity verified.
- [ ] Active theme inspected.
- [ ] Plugins inspected.
- [ ] Uploads inspected.
- [ ] Users/roles inspected (without exposing sensitive information).
- [ ] Debug configuration checked.
- [ ] Permalink configuration checked.
- [ ] REST API checked.
- [ ] Media handling checked.
- [ ] PHP/database compatibility checked.

**Rule:** do not create ACF fields/pages before this checklist is complete.

## Approval

- [ ] Developer has confirmed the WordPress foundation is verified (Gate 3).
