#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
#	  exec startx
#fi

alias ls='ls --color=auto'
alias fm='vifm ~/'

# git alias
alias backup='/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME'
alias pacup='sh .getpkglist'
alias status='backup status'
alias addmod='backup add -u'
alias commit='backup commit --allow-empty-message -m '
alias push='backup push'
alias lock='betterlockscreen -l dim'

alias sptd='sh ~/.config/spotify-tui/launch.sh'
PS1='[\u@\h \W]\$ '
