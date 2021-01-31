# wal colors
(cat ~/.cache/wal/sequences &)

# zsh history file
export HISTFILE="$XDG_DATA_HOME/zsh/history"

# aliases
source $XDG_CONFIG_HOME/zsh/aliases

# autocomplete
autoload -U compinit && compinit
_comp_options+=(globdots)

# prompt
setopt prompt_subst
PROMPT='%B%F{1}λ%f  %~  %b'
