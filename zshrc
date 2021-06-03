source ~/.antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Plugins
antigen bundle git
antigen bundle pip
antigen bundle sudo
antigen bundle ufw
antigen bundle cp
antigen bundle docker
antigen bundle docker-compose
antigen bundle zsh_reload
antigen bundle colored-man-pages
antigen bundle colorize
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

# alias
alias update='sudo apt update && sudo apt upgrade && sudo apt autoremove && sudo apt clean'
alias upgrades='apt list --upgradable'
alias cd..='cd ..'
alias cdh='cd ~'
alias up='uptime'
alias zombie='ps aux | grep 'Z''
alias ports='sudo netstat -tulpn'
alias reload='src'
alias python='python3'
alias pip='pip3'

alias untar='tar xvzf'
alias backup='sudo tar -cvpzf'
alias backupr='sudo tar --same-owner -xpvzf'

alias dsp='docker system prune'
alias dspa='docker system prune --all'
alias ds='docker stats'
dcshell() {
  docker-compose exec $1 sh
}

# Load the theme.
antigen theme agnoster

# Tell Antigen that you're done.
antigen apply
