export PAGER="less"
export LESS='-x 4 -R -i -X -P ?f%f:(stdin).  ?lb%lb?L/%L..  [?eEOF:?pb%pb\%..]'
export JLESSCHARSET=utf-8

HISTSIZE=500000
HISTFILESIZE=500000
shopt -s histappend
PS1="\[\e]0;\u@\h: \w\a\][${debian_chroot:+($debian_chroot)}\u@\h \W]\$ "
EDITOR=vi

export EDITOR=vi
umask 0022

