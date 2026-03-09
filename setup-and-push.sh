#!/bin/bash
# Run this script in Terminal to finish git setup and push to GitHub
set -e
cd "$(dirname "$0")"

echo "→ Setting up git..."
git init
git add -A
git commit -m "Initial commit: Mileo landing page"

echo ""
echo "→ Adding GitHub remote (SSH)..."
echo "  Using: git@github.com:mileo-ai/mileo-landing-page.git"
REMOTE_URL="git@github.com:mileo-ai/mileo-landing-page.git"
git remote add origin "$REMOTE_URL" 2>/dev/null || git remote set-url origin "$REMOTE_URL"

echo ""
echo "→ Pushing to GitHub (you may be asked to sign in)..."
git branch -M main
git push -u origin main

echo ""
echo "✓ Done! Your code is on GitHub. We can code together from here."
