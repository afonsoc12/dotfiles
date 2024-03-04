# .zprofile
# `.zlogin' is sourced in login shells. It should contain commands that should be executed only in login shells. `.zlogout' is sourced when login shells exit. `.zprofile' is similar to `.zlogin', except that it is sourced before `.zshrc'. `.zprofile' is meant as an alternative to `.zlogin' for ksh fans; the two are not intended to be used together, although this could certainly be done if desired.
# `.zlogin' is not the place for alias definitions, options, environment variable settings, etc.; as a general rule, it should not change the shell environment at all.
# Rather, it should be used to set the terminal type and run a series of external commands (fortune, msgs, etc).
echo "On .zprofile"

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# pyenv (for login shells, both interactive non-interactive shells)
command -v pyenv >/dev/null && eval "$(pyenv init -)"
$(pyenv virtualenv --version > /dev/null 2>&1) && eval "$(pyenv virtualenv-init -)"

# jEnv
export PATH="$HOME/.jenv/bin:$PATH"
command -v jenv >/dev/null && eval "$(jenv init -)"
