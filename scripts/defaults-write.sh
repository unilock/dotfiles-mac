#!/bin/sh
source functions/common

print_line "Setting macOS defaults."

print_line "Don't write .DS_Store to network volumes"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

print_line "Don't write .DS_Store to removable volumes"
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

print_line "Disable Dock resizing"
defaults write com.apple.dock size-immutable -bool true

print_line "Set Dock size"
defaults write com.apple.dock tilesize -int 36

print_line "Disable press-and-hold for accented characters"
defaults write -g ApplePressAndHoldEnabled -bool false

print_line "Set key repeat rate"
defaults write -g InitialKeyRepeat -int 25
defaults write -g KeyRepeat -int 2

# ...
