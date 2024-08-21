#!/bin/bash

# Colors for output
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Function to create a symlink
create_symlink() {
    local src=$1
    local dest=$2
    
    if [ -e "$dest" ]; then
        if [ -L "$dest" ]; then
            echo -e "${RED}Symlink already exists:${NC} $dest"
        else
            echo -e "${RED}File already exists:${NC} $dest"
            echo "Creating backup: $dest.bak"
            mv "$dest" "$dest.bak"
            ln -sf "$src" "$dest"
            echo -e "${GREEN}Created symlink:${NC} $dest -> $src"
        fi
    else
        ln -sf "$src" "$dest"
        echo -e "${GREEN}Created symlink:${NC} $dest -> $src"
    fi
}

# Create symlinks
create_symlink ~/dotfiles/.zshrc ~/.zshrc
create_symlink ~/dotfiles/.oh-my-zsh/custom ~/.oh-my-zsh/custom
create_symlink ~/dotfiles/.config/Code/User/settings.json ~/Library/Application\ Support/Code/User/settings.json
create_symlink ~/dotfiles/.config/nvim ~/.config/nvim
create_symlink ~/dotfiles/.config/karabiner ~/.config/karabiner

echo -e "\n${GREEN}Dotfiles installation complete!${NC}"
