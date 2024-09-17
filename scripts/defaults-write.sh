#!/bin/sh
source functions/common

print_line "Setting macOS defaults."

print_line "Don't write .DS_Store to network volumes"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

print_line "Don't write .DS_Store to removable volumes"
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

print_line "Disable dock resizing"
defaults write com.apple.Dock size-immutable -bool true

# ...
