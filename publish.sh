#!/usr/bin/env bash
set -euo pipefail

# Canonical publish script for msj-studio.
# Usage:
#   ./publish.sh "feat: tweak hero copy"
#   ./publish.sh             # auto message

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

if [[ ! -f "index.html" ]]; then
  echo "❌ index.html not found. Run from msj-studio repo root."
  exit 1
fi

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "❌ Not a git repository."
  exit 1
fi

branch="$(git rev-parse --abbrev-ref HEAD)"
if [[ "$branch" != "main" ]]; then
  echo "⚠️ Current branch: $branch"
  echo "   Recommended: publish from main for Vercel auto-deploy."
fi

msg="${*:-msj-studio: update $(date -u +'%Y-%m-%d %H:%M UTC')}"

# Stage only the studio source by default.
git add index.html README.md

if git diff --cached --quiet; then
  echo "No staged changes in index.html/README.md."
  echo "Tip: edit msj-studio/index.html (canonical source) before publishing."
  exit 0
fi

git commit -m "$msg"
git push origin "$branch"

echo "✅ Pushed to origin/$branch"
echo "🚀 Vercel should auto-deploy from this repo within ~10-60 seconds."
