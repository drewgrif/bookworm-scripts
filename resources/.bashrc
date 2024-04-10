# If not running interactively, don't do anything 
[[ $- != *i* ]] && return 

stty -ixon # Disables ctrl-s and ctrl-q (Used To Pause Term) 

# Aliases
alias ..='cd ..' 
alias ...='cd ../..' 
alias install='sudo apt install'
alias update='sudo apt update'
alias upgrade='sudo apt upgrade'
alias uplist='apt list --upgradable'
alias remove='sudo apt autoremove'
alias l='exa -ll --color=always --group-directories-first'
alias ls='exa -al --header --icons --group-directories-first'
alias df='df -h'
alias free='free -h'
alias myip="ip -f inet address | grep inet | grep -v 'lo$' | cut -d ' ' -f 6,13 && curl ifconfig.me && echo ' external ip'"
alias x="exit"
# Dotfiles & Files
alias bs='micro ~/.bashrc'
alias reload='source ~/.bashrc'
alias v="nvim"
alias vv="nvim ."
alias e="micro"
alias g.="cd ~/.config"
alias gd="cd ~/Downloads"
alias gdw="cd ~/.config/suckless/dwm"
alias gds="cd ~/.config/suckless/slstatus"
# Git aliases
alias gp="git push -u origin main"
alias gsave="git commit -m 'save'"
alias gs="git status"
alias gc="git clone"
alias tr="tree"

# Dunst
alias hi="notify-send 'Hi there!' 'Welcome to my dwm desktop! ' -i ''"


# Add Color
alias egrep='grep --color=auto' 

export PATH="~/bin:$PATH"
export PATH="~/.local/bin:$PATH"
export PATH="/usr/local/go/bin:$PATH"
 export VISUAL=nvim;
 export EDITOR=nvim;
# PS1 Customization
#PS1="\[\e[32m\]\h\[\e[m\]\[\e[36m\]@\[\e[m\]\[\e[34m\]\u\[\e[m\] \W \$ " 
# Colour codes
RED="\\[\\e[1;31m\\]"
GREEN="\\[\\e[1;32m\\]"
YELLOW="\\[\\e[1;33m\\]"
BLUE="\\[\\e[1;34m\\]"
MAGENTA="\\[\\e[1;35m\\]"
CYAN="\\[\\e[1;36m\\]"
WHITE="\\[\\e[1;37m\\]"
ENDC="\\[\\e[0m\\]"

# Set a two-line prompt. If accessing via ssh include 'ssh-session' message.
if [[ -n "$SSH_CLIENT" ]]; then ssh_message="-ssh_session"; fi
PS1="${MAGENTA}\t ${GREEN}\u ${WHITE}at ${YELLOW}\h${RED}${ssh_message} ${WHITE}in ${BLUE}\w \n${CYAN}\$${ENDC} "

neofetch
