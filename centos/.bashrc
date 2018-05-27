# .bashrc
# if not running interactively, then done
[ -z "$PS1" ] && return

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=
# User specific aliases and functions
alias ls='ls --color=auto'
alias ll='ls -lA'
alias tree='tree -Csuh'
alias diff='diff --color=auto'
alias mkdir='mkdir -pv'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias vi='vim'
alias edit='vim'
alias root='sudo -i'
alias yum='sudo yum'

# dates
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'

# connection and rules #
alias fastping='ping -c 100 -s.2'
alias iptlist='sudo /sbin/iptables -L -n -v --line-numbers'
alias iptlistin='sudo /sbin/iptables -L INPUT -n -v --line-numbers'
alias iptlistout='sudo /sbin/iptables -L OUTPUT -n -v --line-numbers'
alias iptlistfw='sudo /sbin/iptables -L FORWARD -n -v --line-numbers'

# get web server headers #
alias header='curl -I'
# find out if remote server supports gzip / mod_deflate or not #
alias headerc='curl -I --compress'

#system stats
## memory
alias meminfo='free -m -l -t'
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
## cpu  
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
alias cpuinfo='lscpu'
#disk
alias df='df -H'
alias du='du -ch'
