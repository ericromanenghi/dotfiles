# Personal Dotfiles

This repository contains my personal dotfiles managed with [chezmoi](https://chezmoi.io/), providing a consistent shell environment across macOS and Linux machines.

## Quick Start

**First time setup:**
```bash
# Install chezmoi
sh -c "$(curl -fsLS get.chezmoi.io)"  # Linux
brew install chezmoi                   # macOS

# Apply dotfiles
chezmoi init --apply https://github.com/ericromanenghi/dotfiles.git
```

**Daily workflow:**
```bash
# Edit files normally, then:
chezmoi add ~/.zshrc          # Add changes to chezmoi
cd $(chezmoi source-path)     # Go to chezmoi directory
git add . && git commit -m "Update config" && git push  # Commit changes
```

## What is chezmoi?

[Chezmoi](https://chezmoi.io/) is a dotfiles manager that helps you manage your personal configuration files across multiple machines. It uses a source-target model where you maintain your dotfiles in a Git repository and chezmoi handles applying them to your home directory.

### Basic Workflow

**Daily usage:**
1. Edit files normally (e.g., `~/.zshrc`)
2. Add changes to chezmoi: `chezmoi add ~/.zshrc`
3. Commit and push changes in chezmoi source directory

**Useful commands:**
- `chezmoi diff` - See what would change
- `chezmoi status` - See which files differ between chezmoi and your actual files
- `chezmoi apply` - Apply chezmoi's files to your home directory
- `chezmoi update` - Pull from git and apply changes

## Local Setup

### Installation

**macOS:**
```bash
brew install chezmoi
```

**Linux (Debian/Ubuntu):**
```bash
sh -c "$(curl -fsLS get.chezmoi.io)"
```

### Apply Dotfiles

**First time setup:**
```bash
chezmoi init --apply https://github.com/ericromanenghi/dotfiles.git
```

**Update existing setup:**
```bash
chezmoi update
```

## Zsh Configuration Structure

The zsh configuration is modularized for better organization and maintainability:

```
~/.zshrc                    # Main configuration file
~/.config/zsh/
├── exports.zsh            # Environment variables and PATH configuration
├── aliases.zsh            # Command aliases
└── functions.zsh          # Custom helper functions
```

### What goes where:

- **`exports.zsh`**: Environment variables (`EDITOR`, `JAVA_HOME`, `PATH` modifications, etc.)
- **`aliases.zsh`**: Command shortcuts and aliases
- **`functions.zsh`**: Custom shell functions for daily tasks
- **`.zshrc`**: Initialization logic, plugin management, and sourcing of modular files

### Adding new configurations:

- **New environment variable?** → Add to `exports.zsh`
- **New command alias?** → Add to `aliases.zsh`  
- **New helper function?** → Add to `functions.zsh`

## Dependencies and Tools

This configuration uses several tools that are automatically installed:

- **[zgenom](https://github.com/jandamm/zgenom)**: Zsh plugin manager (auto-installed via `run_once_install-zgenom.sh`)
- **[Oh My Zsh](https://ohmyzsh.org/)**: Zsh framework (managed by zgenom)
- **[pyenv](https://github.com/pyenv/pyenv)**: Python version management
- **[nvm](https://github.com/nvm-sh/nvm)**: Node.js version management

### Features included:

- **Enhanced history**: Shared across terminal sessions, no duplicates
- **Plugin management**: Extensible through zgenom
- **Development tools**: Java, Android, Python, and Node.js environment setup
- **Custom functions**: Helper commands for daily workflows