#!/bin/sh
source functions/common

print_line "Welcome to Darwin!"

print_line "Initializing submodules."
git submodule update --init

print_line "Locking superuser."
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Copy dotfiles to home
./scripts/install-dotfiles.sh

# Install Homebrew
./scripts/install-homebrew.sh

# Install apps / programs
./scripts/install-pkgs.sh

# Install other programs (mostly in '~/.local/bin')
./scripts/install-extra-pkgs.sh

# Set defaults
./scripts/defaults-write.sh

# Set the default shell to zsh
./scripts/set-shell-to-zsh.sh

print_line "Done. A reboot is recommended."
