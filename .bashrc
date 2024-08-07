#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias cls='clear'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias reload='hyprctl reload' 
PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"

eval "$(starship init bash)"

eval "$(starship init bash)"
. "$HOME/.cargo/env"


# Load Angular CLI autocompletion.
source <(ng completion script)
