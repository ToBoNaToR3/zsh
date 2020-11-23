ln -s ~/zsh/zshrc ~/.zshrc
curl -L https://raw.githubusercontent.com/zsh-users/antigen/master/bin/antigen.zsh > ~/.antigen.zsh
if [ "$(which zsh)" = "$SHELL" ];
  then
    echo "ZSH is already the default shell!"
  else
    chsh -s $(which zsh)
fi
