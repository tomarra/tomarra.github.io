#!/bin/bash
# Links the repo's .githooks into .git/hooks so they run automatically.
set -e

REPO_ROOT="$(git rev-parse --show-toplevel)"
ln -sf "../../.githooks/pre-commit" "$REPO_ROOT/.git/hooks/pre-commit"
chmod +x "$REPO_ROOT/.githooks/pre-commit"
echo "Git hooks installed."
