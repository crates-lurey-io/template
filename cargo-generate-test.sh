#!/bin/sh

set -e

# Install cargo-generate.
# Do nothing if already installed.
# Prefer "cargo binstall" if exists.
if command -v cargo-generate >/dev/null 2>&1; then
    echo "cargo-generate is already installed."
else
    if command -v cargo-binstall >/dev/null 2>&1; then
        cargo binstall cargo-generate
    else
        cargo install cargo-generate
    fi
fi

# Create a temporary directory to hold the generated projects.
TEMP_DIR=$(mktemp -d)

# Print the temporary directory path for debugging to stdout.
echo $TEMP_DIR

# Create a project using the current directory as the template.
cargo-generate \
  --path . \
  --name test_project \
  --destination "$TEMP_DIR" \
  --values-file ".generate/test-generate.toml" \
  --allow-commands \
    "$@"
