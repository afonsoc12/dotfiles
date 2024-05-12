# .zshrc
# Sourced in interactive shells.
# Should contain commands to set up aliases, functions, options, key bindings, etc.

# Path to your oh-my-zsh installation.
echo "On .zshrc"

# oh-my-zsh
export ZSH=$XDG_DATA_HOME/oh-my-zsh

# ZSH_THEME="random"
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "fino-time")
COMPLETION_WAITING_DOTS="true"

zstyle ':omz:update' frequency 15

plugins=(git)

source $ZSH/oh-my-zsh.sh

# pure theme

fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -U promptinit; promptinit
prompt pure

# ┌────────────────────────────────────────────────────── user
# │      ┌─────────────────────────────────────────────── host
# │      │           ┌─────────────────────────────────── path
# │      │           │          ┌──────────────────────── git:branch
# │      │           │          │     ┌────────────────── git:dirty
# │      │           │          │     │ ┌──────────────── git:action
# │      │           │          │     │ │        ┌─────── git:arrow
# │      │           │          │     │ │        │ ┌───── git:stash
# │      │           │          │     │ │        │ │ ┌─── execution_time
# │      │           │          │     │ │        │ │ │
# zaphod@heartofgold ~/dev/pure master* rebase-i ⇡ ≡ 42s
# venv ❯
# │    │
# │    └───────────────────────────────────────────────── prompt
# └────────────────────────────────────────────────────── virtualenv (or prompt:continuation)
zstyle :prompt:pure:git:stash show yes
zstyle :prompt:pure:execution_time color yellow
zstyle :prompt:pure:path color yellow
zstyle :prompt:pure:git:arrow color cyan
zstyle :prompt:pure:git:stash color cyan
zstyle :prompt:pure:git:branch color 242
zstyle :prompt:pure:git:branch:cached color red
zstyle :prompt:pure:git:action color 242
zstyle :prompt:pure:git:dirty color 218
zstyle :prompt:pure:host color 242
zstyle :prompt:pure:prompt:error color red
zstyle :prompt:pure:prompt:success color green
zstyle :prompt:pure:prompt:continuation color cyan
zstyle :prompt:pure:suspended_jobs color red
zstyle :prompt:pure:user color 242
zstyle :prompt:pure:user:root color default
zstyle :prompt:pure:virtualenv

source $XDG_CONFIG_HOME/zsh/aliases.zsh
