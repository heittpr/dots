# wal colors
(cat ~/.cache/wal/sequences &)

# history file
export HISTFILE="$XDG_DATA_HOME/zsh/history"
export HISTSIZE=50000
export SAVEHIST=10000

source $ZDOTDIR/aliases     # aliases and named directories
source $ZDOTDIR/theme       # my zsh theme
source $ZDOTDIR/xdg         # support xdg base directory
source $ZDOTDIR/ic          # adds some school related software to path

typeset -U PATH
