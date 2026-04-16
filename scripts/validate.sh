#!/usr/bin/env bash
#
# Validates the marketplace, plugin manifest, and all skill/agent/command
# frontmatter using Claude Code's built-in validator.
#
# Usage: ./scripts/validate.sh

set -euo pipefail

cd "$(dirname "$0")/.."

if ! command -v claude &> /dev/null; then
  echo "error: claude CLI not found. Install Claude Code first: https://code.claude.com" >&2
  exit 1
fi

echo "Validating marketplace at $(pwd)..."
claude plugin validate .
echo "OK."
