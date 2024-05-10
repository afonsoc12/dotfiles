# .zshrc
# Sourced in interactive shells.
# Should contain commands to set up aliases, functions, options, key bindings, etc.

# Path to your oh-my-zsh installation.
echo "On .zshrc"

# oh-my-zsh
export ZSH=$XDG_DATA_HOME/oh-my-zsh

ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "fino-time")
COMPLETION_WAITING_DOTS="true"

zstyle ':omz:update' frequency 15

plugins=(git)

source $ZSH/oh-my-zsh.sh

source $XDG_CONFIG_HOME/zsh/aliases.zsh
