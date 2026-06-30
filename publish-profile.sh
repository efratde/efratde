#!/usr/bin/env bash
# Creates the GitHub profile repo (special: repo name = username = efratde)
# Run:  bash publish-profile.sh
set -e
cd "$(dirname "$0")"
git init -q
git add -A
git commit -qm "GitHub profile README + CV PDF"
gh repo create efratde/efratde --public --source=. --remote=origin --push
echo ""
echo "✅ Profile live at: https://github.com/efratde"
echo "✅ CV direct link:  https://github.com/efratde/efratde/raw/main/CV_Dener.pdf"
