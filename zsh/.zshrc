export ZSH="$HOME/.oh-my-zsh"

# I will forgor to update so pls reminder
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# eyecandy
ZSH_THEME="agnoster"

# auto launch
neofetch

# Enable colors and change prompt
autoload -U colors && colors

# Plugins
plugins=(
    git
    you-should-use
    zsh-autosuggestions
    fast-syntax-highlighting
    )

# source?
source $ZSH/oh-my-zsh.sh
