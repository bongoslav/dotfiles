#!/bin/bash

# Create symlinks
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.oh-my-zsh/custom/* ~/.oh-my-zsh/custom/
ln -sf ~/dotfiles/.config/Code/User/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -sf ~/dotfiles/.config/nvim ~/.config/nvim
ln -sf ~/dotfiles/.config/karabiner ~/.config/karabiner

echo "Dotfiles installation complete!"
