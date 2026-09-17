#!/usr/bin/env bash
# Verifies that every phase-deliverable doc defined in CLAUDE.md exists in docs/.
# Used by CI (.github/workflows/validate-docs.yml) and can be run locally at any time.
#
# This only checks *existence* of the seeded template files, not that they've been filled in —
# filling them in is Kestara's job during each phase, gated by developer approval per CLAUDE.md §33.

set -euo pipefail

cd "$(dirname "$0")/../.."

REQUIRED_DOCS=(
  "docs/ai-dlc/phase-status.md"
  "docs/ai-dlc/project-initialization.md"
  "docs/ai-dlc/discovery.md"
  "docs/ai-dlc/scope.md"
  "docs/ai-dlc/requirements.md"
  "docs/ai-dlc/acceptance-criteria.md"
  "docs/architecture/technical-decisions.md"
  "docs/architecture/architecture.md"
  "docs/wordpress/foundation.md"
  "docs/wordpress/environment.md"
  "docs/wordpress/content-model.md"
  "docs/wordpress/custom-post-types.md"
  "docs/wordpress/taxonomies.md"
  "docs/wordpress/content-relationships.md"
  "docs/wordpress/plugin-plan.md"
  "docs/design/design-analysis.md"
  "docs/design/design-system.md"
  "docs/design/component-inventory.md"
  "docs/design/responsive-rules.md"
  "docs/design/interaction-states.md"
  "docs/design/asset-inventory.md"
  "docs/design/page-inventory.md"
  "docs/pages/README.md"
  "docs/acf/field-groups.md"
  "docs/acf/options-pages.md"
  "docs/acf/content-editing-guide.md"
  "docs/seo/seo-checklist.md"
  "docs/testing/responsive-qa.md"
  "docs/testing/accessibility.md"
  "docs/testing/cross-browser-qa.md"
  "docs/performance/performance-report.md"
  "docs/security/security-review.md"
  "docs/deployment/deployment-plan.md"
  "docs/deployment/production-verification.md"
)

missing=0

for doc in "${REQUIRED_DOCS[@]}"; do
  if [[ -f "$doc" ]]; then
    echo "OK    $doc"
  else
    echo "MISSING  $doc"
    missing=$((missing + 1))
  fi
done

echo ""
if [[ "$missing" -eq 0 ]]; then
  echo "All ${#REQUIRED_DOCS[@]} required docs present."
  exit 0
else
  echo "$missing required doc(s) missing."
  exit 1
fi
