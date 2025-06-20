# Environment Variables and Exports

# Editor Configuration
export VISUAL=vim                 # Sets vim as the visual editor
export EDITOR="$VISUAL"          # Sets default editor to same as visual editor

# Python Environment Management
export PYENV_ROOT="$HOME/.pyenv"                        # Sets pyenv installation directory
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"  # Adds pyenv to PATH if it exists

# Java and Android Development Setup
export JAVA_HOME="$(/usr/libexec/java_home -v17)"     # Sets Java 17 as JAVA_HOME
export ANDROID_HOME=~/android-sdk                      # Android SDK location
export ANDROID_NDK=~/android-ndk                       # Android NDK location
export ANDROID_NDK_HOME=~/android-ndk
export ANDROID_SDK_ROOT=$ANDROID_HOME

export PATH=$JAVA_HOME/bin:$ANDROID_HOME/emulator:$ANDROID_HOME/cmdline-tools/latest:$ANDROID_HOME/platform-tools:$ANDROID_HOME/cmdline-tools/latest/bin:$PATH

# Node.js Version Management
export NVM_DIR="$HOME/.nvm"                           # Set nvm directory

# History Configuration
setopt histignorealldups sharehistory                  # Don't save duplicates, share between sessions
HISTSIZE=10000                                         # Number of commands in memory
SAVEHIST=10000                                         # Number of commands saved to file
HISTFILE=~/.zsh_history                               # History file location