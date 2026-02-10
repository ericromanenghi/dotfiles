#!/bin/bash

# Install vim plugins using vim-plug
# This script runs once when chezmoi apply is executed
# Requires: vim-plug to be installed (run_once_install-vim-plug.sh)

set -e

VIM_PLUG_FILE="${HOME}/.vim/autoload/plug.vim"

# Check if vim-plug is installed
if [ ! -f "$VIM_PLUG_FILE" ]; then
    echo "⚠️  vim-plug not found. Run chezmoi apply again to install it first."
    exit 0
fi

echo "Installing vim plugins..."

# Install plugins non-interactively
vim +PlugInstall +qall

echo "✓ vim plugins installed successfully"
