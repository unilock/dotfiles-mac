#!/bin/sh
source functions/common

print_line "Setting up MacPorts zsh."

sudo sh -c 'echo /opt/local/bin/zsh >> /etc/shells'
chpass -s '/opt/local/bin/zsh' $USER

rm -f ~/.zcompdump
autoload -U compinit
compinit -u
