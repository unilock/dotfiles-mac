#!/bin/sh
source functions/common

print_line "Copying dotfiles."

# gitconfigs
ditto -v dotfiles-common/dotfiles/gitconfig ~/.gitconfig
ditto -v dotfiles-common/.gitignore ~/.gitignore

# zsh
ditto -v dotfiles/zshrc ~/.zshrc
