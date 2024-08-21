# Dotfiles

This repository contains my personal dotfiles for:
- Zsh (Oh My Zsh)
- VS Code
- Neovim
- Karabiner (MacOS custom keybindings)

## Installation

1. Clone this repository:
   ```
   git clone https://github.com/yourusername/dotfiles.git ~/dotfiles
   ```

2. Run the installation script:
   ```
   cd ~/dotfiles
   ./install.sh
   ```

This will create symlinks for the configuration files in their appropriate locations.

## Updating

To update your dotfiles, simply pull the latest changes from the repository and run the installation script again:

```
cd ~/dotfiles
git pull
./install.sh
```

## Adding new dotfiles

To add new dotfiles to this repository:

1. Copy the file to the appropriate location in the `~/dotfiles` directory
2. Update the `install.sh` script to create a symlink for the new file
3. Commit and push your changes

