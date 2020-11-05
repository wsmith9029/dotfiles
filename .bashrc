#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
#	  exec startx
#fi

alias ls='ls --color=auto'
alias vifm='vifm ~/'
alias at='alacritty-themes'
alias backup='/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME'
alias pacup='sh .getpkglist'
alias spot='sh ~/.config/spotify-tui/launch.sh'
PS1='[\u@\h \W]\$ '
