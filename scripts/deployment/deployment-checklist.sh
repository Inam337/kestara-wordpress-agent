#!/usr/bin/env bash
# Prints the Phase 20 deployment sequence (CLAUDE.md §24) as a manual walkthrough checklist.
# This script does not deploy anything itself — it never touches staging or production credentials.

cat <<'EOF'
========================================
KESTARA — DEPLOYMENT SEQUENCE (Phase 20)
========================================

Before running any of this, confirm docs/deployment/deployment-plan.md is fully answered and
Gate 15 (Deployment approved) has explicit developer sign-off.

[ ] 1. Backup (files + database, verified restorable)
[ ] 2. Verify staging matches what was approved in Final QA (Phase 19)
[ ] 3. Verify production environment (PHP/DB/server versions, SSL cert validity, DNS)
[ ] 4. Deploy files
[ ] 5. Deploy database/content
[ ] 6. Run WordPress-aware migrations (search-replace URLs, etc. — never raw SQL string replace)
[ ] 7. Verify URLs resolve correctly
[ ] 8. Regenerate permalinks
[ ] 9. Clear caches (object cache, page cache, CDN)
[ ] 10. Verify SSL
[ ] 11. Smoke test (see docs/deployment/production-verification.md)
[ ] 12. Production verification sign-off (Gate 16)

Never deploy without explicit developer approval at Gate 15.
========================================
EOF
