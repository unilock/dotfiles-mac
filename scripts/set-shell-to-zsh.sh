#!/bin/sh
source functions/common

print_line "Setting up Homebrew zsh."

sudo chpass -s '/opt/homebrew/bin/zsh' $USER
sudo sh -c 'echo /opt/homebrew/bin/zsh >>/etc/shells'

chmod go-w '/opt/homebrew/share' && chmod -R go-w '/opt/homebrew/share/zsh'
rm -f ~/.zcompdump
