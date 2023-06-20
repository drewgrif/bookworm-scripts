# If not running interactively, don't do anything 
[[ $- != *i* ]] && return 

stty -ixon # Disables ctrl-s and ctrl-q (Used To Pause Term) 

# Aliases
alias ..='cd ..' 
alias ...='cd ../..' 
alias gcf='cd $HOME/.config'
alias gdl='cd $HOME/Downloads'
alias install='sudo apt install'
alias update='sudo apt update'
alias upgrade='sudo apt upgrade'
alias uplist='apt list --upgradable'
alias remove='sudo apt autoremove'
alias l='exa -ll --color=always --group-directories-first'
alias ls='exa -al --header --icons --group-directories-first'
alias df='df -h'
alias free='free -h'
# Dotfiles & Files
alias bs='micro ~/.bashrc'
alias reload='source ~/.bashrc'
alias v="nvim"
alias vv="nvim ~/.config/nvim/init.vim"
alias ev="micro ~/.config/nvim/init.vim"
alias e="micro"
alias gc="git clone"

# Dunst
alias hi="notify-send 'Hi there!' 'Welcome to my dk desktop! ' -i ''"


# Add Color
alias egrep='grep --color=auto' 

export PATH="~/bin:$PATH"
export PATH="~/.local/bin:$PATH"
export PATH="/usr/local/go/bin:$PATH"
 export VISUAL=nvim;
 export EDITOR=nvim;
# PS1 Customization
PS1="\[\e[32m\]\h\[\e[m\]\[\e[36m\]@\[\e[m\]\[\e[34m\]\u\[\e[m\] \W \$ " 
neofetch
