#!/bin/sh
source functions/common

print_line "Copying dotfiles."

# gitconfigs
ditto -v dotfiles-common/dotfiles/gitconfig ~/.gitconfig
ditto -v dotfiles-common/.gitignore ~/.gitignore

# nano
echo 'include "/opt/homebrew/share/nano/*.nanorc"' > ~/.nanorc
cat dotfiles-common/dotfiles/nanorc >> ~/.nanorc

# zsh
ditto -v dotfiles/zshrc ~/.zshrc
touch ~/.zsecrets
