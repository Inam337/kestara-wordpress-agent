#!/usr/bin/env bash
# Optional helper: scaffolds an empty theme/ directory structure (CLAUDE.md §12) alongside the docs,
# once Phase 08 (Theme Architecture) has decided the project needs one. Does NOT install WordPress,
# fetch any plugin, or make any architecture decision — it only creates empty folders.
#
# Usage: scripts/setup/bootstrap-project.sh [theme-slug]

set -euo pipefail

cd "$(dirname "$0")/../.."

THEME_SLUG="${1:-}"

if [[ -z "$THEME_SLUG" ]]; then
  echo "Usage: $0 <theme-slug>"
  echo "Run this only after Phase 08 (Theme Architecture) has approved a theme structure."
  exit 1
fi

THEME_DIR="theme/${THEME_SLUG}"

if [[ -e "$THEME_DIR" ]]; then
  echo "Refusing to overwrite existing directory: $THEME_DIR"
  exit 1
fi

mkdir -p \
  "$THEME_DIR/assets/images/content" \
  "$THEME_DIR/assets/images/backgrounds" \
  "$THEME_DIR/assets/images/banners" \
  "$THEME_DIR/assets/images/thumbnails" \
  "$THEME_DIR/assets/logos" \
  "$THEME_DIR/assets/icons" \
  "$THEME_DIR/assets/fonts" \
  "$THEME_DIR/styles/base" \
  "$THEME_DIR/styles/components" \
  "$THEME_DIR/styles/layouts" \
  "$THEME_DIR/styles/pages" \
  "$THEME_DIR/scripts/components" \
  "$THEME_DIR/scripts/pages" \
  "$THEME_DIR/inc" \
  "$THEME_DIR/template-parts" \
  "$THEME_DIR/templates"

touch "$THEME_DIR/functions.php" "$THEME_DIR/style.css" "$THEME_DIR/index.php"

echo "Created theme scaffold at: $THEME_DIR"
echo "Remember: this only creates empty structure. functions.php/style.css/index.php still need real content."
