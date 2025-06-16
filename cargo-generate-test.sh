#!/bin/sh

set -e

# Require cargo-generate to be installed.
if ! command -v cargo-generate >/dev/null 2>&1; then
    echo "Error: cargo-generate is not installed. Please install it before running this script." >&2
    exit 1
fi

# Create a temporary directory to hold the generated projects.
TEMP_DIR=$(mktemp -d)

# Print the temporary directory path for debugging to stdout.
echo $TEMP_DIR

# Create a project using the current directory as the template.
cargo-generate generate \
  --path . \
  --name test_project \
  --destination "$TEMP_DIR" \
  --values-file ".generate/test-generate.toml" \
  --allow-commands \
    "$@"
