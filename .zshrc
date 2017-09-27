#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
#if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  #source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
#fi

# Add env.sh
#source ~/Projects/config/env.sh

# Customize to your needs...

# Path to your oh-my-zsh installation.
export ZSH=/Users/gmcmillan/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="agnoster"
#ZSH_THEME="solarized-powerline"
ZSH_THEME="refined"
 
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=~/.zsh_custom

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git brew osx pip python sudo docker aws compleat git-extras jira npm vagrant zsh-autosuggestions zsh-syntax-highlighting)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH=$PATH:/Applications/MySQLWorkbench.app/Contents/MacOS
export PATH=$PATH:/Users/gmcmillan/Library/Python/2.7/bin
export PATH=$PATH:/Users/gmcmillan/Scripts

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias caf='caffeinate'
alias flushdns='sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder;say'
alias py3='python3'
alias vim='nvim'

# Vagrant Aliases
alias vdd='vagrant destroy'
alias vssh='vagrant ssh'
alias vlist='vagrant box list'
alias vup='vagrant up'
alias vstat='vagrant status'

# Docker aliases
alias dp='docker pull'
alias dsr='docker search'
alias dinfo='docker info'
alias dins='docker inspect'
alias dr='docker run'
alias dst='docker stop'
alias dimg='docker image ls'
alias dcl='docker container ls'
alias dcla='docker container ls -a'
alias dcrm='docker container rm'
alias dirm='docker image rm'

# Git aliases
alias gi='git init'
alias gad='git add'
alias gcm='git commit -m'
alias gpu='git push -u origin master'
alias gst='git status'

# Nmap scan of subnet .10 with MAC address
alias nmap10='sudo nmap -sP -n 192.168.10.0/23'

# Serial port connection aliases
alias screenap='screen /dev/cu.usbserial-AJ03LLHC 9600 8 1'
alias screencpu='screen /dev/cu.usbserial-AJ03LLHC 115200 8 1'

# findip alias to scan .10 subnet
findip 192.168.10.0/24

# Function to remove all Docker images and containers
dokrmi () {
	docker image rm `docker image ls | awk '{ print $3; }'`
}

rmcont () {
	docker container rm `docker container ls -a | awk '{ print $1; }'`
}

dkrm () {
	docker image ls
	echo ""
	echo "Which container would you like to remove?"
	read $1
}

# Include Z
. ~/z/z.sh

# Stops delay in Tmux... I think
KEYTIMEOUT=1

# Loading of Pure prompt
autoload -U promptinit; promptinit

prompt pure

# Load Antigen (zsh plugin manager)
source ~/antigen.zsh

# Powerline-go
#function powerline_precmd() {
    #PS1="$(~/go/bin/powerline-go -error $? -shell zsh)"
#}

#function install_powerline_precmd() {
  #for s in "${precmd_functions[@]}"; do
    #if [ "$s" = "powerline_precmd" ]; then
      #return
    #fi
  #done
  #precmd_functions+=(powerline_precmd)
#}

#if [ "$TERM" != "linux" ]; then
    #install_powerline_precmd
#fi
