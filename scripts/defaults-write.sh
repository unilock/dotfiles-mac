#!/bin/sh
source functions/common

print_line "Setting macOS defaults."

print_line ".DS_Store go away (on network volumes)"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# ...
