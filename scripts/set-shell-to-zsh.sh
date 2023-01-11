#!/bin/sh
source functions/common

print_line "Setting up Homebrew Zsh."

echo '/opt/homebrew/bin/zsh' | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/zsh
rm -f ~/.zcompdump; compinit
chmod -R go-w "$(brew --prefix)/share"
