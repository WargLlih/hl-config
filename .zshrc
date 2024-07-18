# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# disable the terminal bell
unsetopt beep

# bindkey -e activates the below mapping:
# Ctrl+A moves the cursor to the beginning of the line.
# Ctrl+E moves the cursor to the end of the line.
# Ctrl+K deletes from the cursor to the end of the line.
# Ctrl+U deletes from the cursor to the beginning of the line.
bindkey -e

# shift+tab = reverse-menu-complete
bindkey '^[[Z' reverse-menu-complete

# completion system
autoload -Uz compinit
compinit

# add starship style
eval "$(starship init zsh)"

# Use powerline
USE_POWERLINE="true"

# zsh-syntax-highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# zsh-autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Personal Alias
alias p="readlink -f"
alias ls="ls --color=auto"
alias ll="ls -la"

alias @hl-config="cd ~/WargLlih/hl-config/"
alias @nvim="cd ~/WargLlih/nvim/"

# personal exports
export PATH=$PATH:/home/roy/go/bin
export CLICOLOR=1
