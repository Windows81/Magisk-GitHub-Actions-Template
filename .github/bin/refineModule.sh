#!/usr/bin/env bash
set -euo pipefail

# Remove the updateJson line
sed -i "s/^updateJson=.+//" "module.prop"

# Add it back
UPDATE_STRING="updateJson=https://github.com/${GITHUB_REPOSITORY}/releases/latest/download/update.json"
echo "$UPDATE_STRING" >> "module.prop"