#!/bin/bash

# Install vim-plug if it doesn't exist
# This script runs once when chezmoi apply is executed

set -e

VIM_PLUG_FILE="${HOME}/.vim/autoload/plug.vim"

# Check if vim-plug is already installed
if [ -f "$VIM_PLUG_FILE" ]; then
    echo "✓ vim-plug is already installed"
    exit 0
fi

echo "Installing vim-plug..."

# Download vim-plug
curl -fLo "$VIM_PLUG_FILE" --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "✓ vim-plug installed successfully"
echo "  Run ':PlugInstall' in vim to install plugins"
