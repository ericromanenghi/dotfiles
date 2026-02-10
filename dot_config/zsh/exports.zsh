# Environment Variables and Exports

# Editor Configuration
export VISUAL=vim                 # Sets vim as the visual editor
export EDITOR="$VISUAL"          # Sets default editor to same as visual editor

# Prompt Configuration
# Hide username@hostname on local machine (not in devpods)
[[ -z "$DEVPOD_NAME" ]] && export DEFAULT_USER="$USER"

# Python Environment Management
export PYENV_ROOT="$HOME/.pyenv"                        # Sets pyenv installation directory
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"  # Adds pyenv to PATH if it exists

# Node.js Version Management
export NVM_DIR="$HOME/.nvm"                           # Set nvm directory

# History Configuration
setopt histignorealldups sharehistory                  # Don't save duplicates, share between sessions
HISTSIZE=10000                                         # Number of commands in memory
SAVEHIST=10000                                         # Number of commands saved to file
HISTFILE=~/.zsh_history                               # History file location

# Source machine-specific exports if they exist
[[ -f ~/.config/zsh/exports.local.zsh ]] && source ~/.config/zsh/exports.local.zsh
