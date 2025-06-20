#!/bin/bash

# Install zgenom if it doesn't exist
# This script runs once when chezmoi apply is executed

set -e

ZGENOM_DIR="${HOME}/.zgenom"

# Check if zgenom is already installed
if [ -d "$ZGENOM_DIR" ] && [ -f "$ZGENOM_DIR/zgenom.zsh" ]; then
    echo "✓ zgenom is already installed"
    exit 0
fi

echo "Installing zgenom..."

# Clone zgenom
git clone https://github.com/jandamm/zgenom.git "$ZGENOM_DIR"

echo "✓ zgenom installed successfully"