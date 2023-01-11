#!/bin/sh
source functions/common

print_line "Welcome to Darwin!"

print_line "Initializing submodules."
git submodule update --init

# Copy dotfiles to home
./scripts/install-dotfiles.sh

# Install Homebrew
./scripts/install-homebrew.sh

# Install apps / programs
./scripts/install-pkgs.sh

# Set defaults
./scripts/defaults-write.sh

# Set the default shell to zsh
./scripts/set-shell-to-zsh.sh

print_line "Done. A reboot is recommended."
