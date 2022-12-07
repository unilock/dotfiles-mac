#!/bin/sh
source functions/common

# Install long list of packages.
IFS=$'\n'

print_line "Installing Homebrew formulae."
cat lists/brew-formulae | xargs brew install --formula

print_line "Installing Homebrew formulae. (--HEAD)"
cat lists/brew-head-packages | xargs brew install --HEAD

print_line "Installing Homebrew casks."
cat lists/brew-casks | xargs brew install --cask

print_line "Installing App Store applications."
cat lists/mas-app-ids | xargs mas install
