export ANTIDOTE_PATH=$HOME/.antidote/antidote.zsh
export SPACESHIP_CONFIG=$ZSH_CONFIG_FOLDER/spaceship.zsh
export MISE_TRUSTED_CONFIG_PATHS=$HOME/mise.local.toml

export ZSH=$HOME/.oh-my-zsh
export ZSH_FOLDER=$HOME/.zsh
export ZSH_CONFIG_FOLDER=$ZSH_FOLDER/config/zsh

ZSH_THEME="eastwood"

# Initialize plugin manager
export ZDOTDIR=$ZSH_FOLDER
source $ANTIDOTE_PATH
antidote load

# Load mise
eval "$($HOME/.local/bin/mise activate zsh)"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Zsh settings
export EDITOR=nano
zstyle ':omz:update' mode auto

# Mount config files
source $ZSH_CONFIG_FOLDER/aliases.zshrc
source $ZSH_CONFIG_FOLDER/commands.zshrc
source $ZSH_CONFIG_FOLDER/machine_specific_config.zshrc

# To customize prompt, run `p10k configure` or edit .p10k.zsh
[[ ! -f $ZSH_FOLDER/.p10k.zsh ]] || source $ZSH_FOLDER/.p10k.zsh
