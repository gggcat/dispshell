# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
# umask 022

# Yo
# export LS_OPTIONS='--color=auto'
# eval "`dircolors`"
# alias ls='ls $LS_OPTIONS'
# alias ll='ls $LS_OPTIONS -l'
# alias l='ls $LS_OPTIONS -lA'
#
# Some more alias to avoid making mistakes:
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'

alias ls="ls --show-control-chars --color=auto"

export PS1="(\[\e[32m\]\D{%Y/%m/%d %H:%M:%S}\[\e[m\]) \[\e[34m\]\u\[\e[m\]@\[\e[34m\]\h\[\e[m\] \[\e[36m\]\w\[\e[m\] \$"
export EDITOR="/usr/bin/vim"
export PAGER="/usr/bin/lv -c"
export HISTSIZE=100000
