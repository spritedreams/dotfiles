#export CLICOLOR=1
PS1='\[\033[1;92m\][\[\033[0m\]\[\033[1;96m\]\t\[\033[1;92m\]]\[\033[0m\]\[\033[1;94m\]\u\[\033[0m\]\[\033[1;92m\]@\[\033[0m\]\[\033[1;95m\]\h\[\033[0m\]\[\033[1;92m\]:\[\033[0m\]\[\033[1;94m\]\w\[\033[0m\]\[\033[1;92m\]\$ \[\033[0m\]'

alias ls='ls -G'
alias ll='ls -lA'
alias la='ls -A'
alias tree='tree -Cs'
alias grep='grep --color=auto'
alias diff='diff --color'
alias less='less -R'
alias more='more -R'

export PATH="$PATH:$HOME/bin/"

# set title after closing ssh
function ssh() {
    /usr/bin/ssh "$@";
    echo -n -e "\033]0;${USER}@${HOSTNAME%%.*}\007";
}
