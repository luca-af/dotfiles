# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:$PATH"

export PATH

# Customize Output Alias
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias ks="kubectl"

# Customize PS1
export PS1='\[\e[32m\]me\[\e[m\] \[\e[1;93m\]\w\[\e[m\] 
\[\e[1;37m\]\$\[\e[m\] '

# User specific aliases and functions
source $HOME/.config/private_local/*
