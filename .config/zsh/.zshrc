# wal colors
(cat ~/.cache/wal/sequences &)

# zsh history file
export HISTFILE="$XDG_DATA_HOME/zsh/history"

# aliases
source $XDG_CONFIG_HOME/zsh/aliases

# autocomplete
autoload -U compinit && compinit
_comp_options+=(globdots)

# oh-my-zsh
ZSH_THEME="lambda-gitster"
plugins=(git zsh-completions)

source ~/.local/share/oh-my-zsh/oh-my-zsh.sh
