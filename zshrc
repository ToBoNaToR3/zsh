source ~/zsh/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle command-not-found

# additional Plugins
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle colored-man-pages
antigen bundle docker
antigen bundle docker-compose
antigen bundle zsh_reload
antigen bundle sudo
antigen bundle ufw

# alias
alias update='sudo apt update && sudo apt upgrade && sudo apt autoremove && sudo apt clean'
alias upgrade='apt list --upgradable'
alias version='lsb_release -a'
alias ls='ls -la'
alias cd..='cd ..'
alias cdh='cd ~'
alias up='uptime'
alias zombie='ps aux | grep 'Z''
alias ports='sudo netstat -tulpn'
alias reload='src'

alias untar='tar xvzf'
alias backup='sudo tar -cvpzf'
alias backupr='sudo tar --same-owner -xpvzf'

# Load the theme.
#antigen theme robbyrussell
antigen theme agnoster

# Tell Antigen that you're done.
antigen apply
