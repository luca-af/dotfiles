# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [[ -f /run/.containerenv && -f /run/.toolboxenv ]]; then
    CNTX='⬢'
    export $(cat /run/.containerenv  | grep name)
  else
  # When not in a toolbox, don't show context unless running with privileges or in SSH.
    CNTX='$'
    name=$(hostname)
fi


# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:$HOME/.krew/bin:$PATH"

export PATH

# Customize Output Alias
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias kc="kubectl"

# Customize PS1
export PS1='\[\e[32m\]me\[\e[m\] \[\e[1;93m\]\w\[\e[m\] [$name]
\[\e[1;37m\]$CNTX\[\e[m\] '

source /etc/profile.d/*.sh

# User specific aliases and functions
for F in $HOME/.config/private_local/bash*
  do source $F
done
