# xdg stuff
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

# wayland stuff
export XDG_CURRENT_DESKTOP=sway
export MOZ_ENABLE_WAYLAND=1

# nvim
export EDITOR=nvim
export VISUAL=vim

# spicetify
export SPICETIFY_INSTALL=$XDG_DATA_HOME/spicetify-cli
export PATH=$SPICETIFY_INSTALL:$PATH

# add .local/bin to path
export PATH=$HOME/.local/bin:$PATH
