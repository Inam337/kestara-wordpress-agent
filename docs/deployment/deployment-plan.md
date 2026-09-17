# Deployment Plan

**Phase:** 20 — Deployment (see `CLAUDE.md` §24)
**Status:** Not started
**Approval Gate:** Gate 15 — Deployment approved

## Developer Questions

| # | Question | Answer |
|---|---|---|
| 1 | Where is staging? | |
| 2 | Where is production? | |
| 3 | Hosting provider? | |
| 4 | Deployment method (FTP/SFTP/cPanel/SSH/WP-CLI)? | |
| 5 | Database migration required? | |
| 6 | Media migration required? | |
| 7 | Domain migration required? | |
| 8 | SSL ready? | |
| 9 | Backup complete? | |
| 10 | Rollback plan? | |
| 11 | Maintenance window? | |
| 12 | DNS changes? | |
| 13 | Cache/CDN changes? | |
| 14 | Email/SMTP changes? | |
| 15 | Production credentials available through secure means? | |

## Deployment Sequence

See `scripts/deployment/deployment-checklist.sh` for a printable walkthrough.

```text
Backup
 ↓
Verify staging
 ↓
Verify production environment
 ↓
Deploy files
 ↓
Deploy database/content
 ↓
Run WordPress-aware migrations
 ↓
Verify URLs
 ↓
Regenerate permalinks
 ↓
Clear caches
 ↓
Verify SSL
 ↓
Smoke test
 ↓
Production verification
```

**Never deploy without explicit approval.**

## Approval

- [ ] Deployment plan approved (Gate 15).
