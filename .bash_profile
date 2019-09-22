alias lll='ls -alGpF'
alias ll='ls -lGpF'
alias l='ls -GpF'
alias grep="grep --color=auto"

GREEN="\[\033[00;32m\]"
PURPLE="\[\033[00;35m\]"
WHITE="\[\033[00m\]"

export PS1="${GREEN}[\u${WHITE}:${PURPLE}\w${GREEN}]${WHITE}\$ "
export CS_DB=/Users/donghee/OneDrive/ubuntu/ssuos_p8/src/cscope.out
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad

export PATH="$PATH:~/.Script"
set -o vi
bind -m vi-insert "\C-l":clear-screen

if [ -f ~/.bashrc ];
then
	. ~/.bashrc
fi
