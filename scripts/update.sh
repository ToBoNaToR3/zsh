# Source necessary configurations for omz and antidote
[[ -f "$HOME/.zshrc" ]] && source "$HOME/.zshrc"

headline() {
  gum style --bold --foreground 2 "$1"
}

update_apt() {
  headline "Updating apt packages..."
  sudo apt-get update
  sudo apt-get upgrade
  sudo apt-get autoremove
  sudo apt-get clean
  echo
}

update_snaps() {
  if command -v snap &>/dev/null; then
    headline "Updating snap packages"
    sudo snap refresh
    echo
  fi
}

update_zsh() {
  headline "Updating zsh repo"
  git -C $ZSH_FOLDER stash
  git -C $ZSH_FOLDER pull
  echo
}

update_omz() {
  headline "Updating ohmyzsh"
  omz update
  echo
}

update_antidote() {
  headline "Updating antidote plugins"
  antidote update
  echo
}

update_mise() {
  headline "Updating mise"
  mise install
  mise self-update
  echo
}

sudo -v

update_apt
update_snaps
update_zsh
update_omz
update_antidote
update_mise
