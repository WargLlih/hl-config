# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e

bindkey '^[[Z' reverse-menu-complete

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

alias @hl-config="nvim ~/WargLlih/hl-config/"
alias @nvim="nvim ~/WargLlih/nvim/"


export PATH=$PATH:/home/roy/go/bin
export CLICOLOR=1
