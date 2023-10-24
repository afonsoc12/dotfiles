#`.zshenv' is sourced on all invocations of the shell, unless the -f option is set.
# It should contain commands to set the command search path, plus other important environment variables.
#`.zshenv' should not contain commands that produce output or assume the shell is attached to a tty.
#
# The following lines need to be placed in /etc/zshenv or ~/.zshenv:
#    export ZDOTDIR=$HOME/.config/zsh
#    echo ". $ZDOTDIR/.zshenv"

source $ZDOTDIR/env.zsh
