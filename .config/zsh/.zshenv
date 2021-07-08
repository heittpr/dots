# xdg stuff
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_DOWNLOAD_DIR=$HOME

# add .local/bin to path
export PATH=$HOME/.local/bin:$PATH

# wayland stuff
export XDG_SESSION_TYPE=wayland
export XDG_CURRENT_DESKTOP=sway
export QT_QPA_PLATFORM=wayland

# nvim as default editor
export EDITOR=nvim
export VISUAL=vim
