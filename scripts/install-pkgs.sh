#!/bin/sh
source functions/common

# Install long list of packages.
IFS=$'\n'

print_line "Adding Homebrew taps."
while IFS='' read -r line || [ -n "$line" ]; do
	brew tap $line
done < lists/brew-taps

print_line "Installing Homebrew formulae."
cat lists/brew-formulae | xargs brew install --formula

print_line "Installing Homebrew formulae. (--HEAD)"
while IFS='' read -r line || [ -n "$line" ]; do
	brew install --formula --HEAD $line
done < lists/brew-formulae-head

print_line "Installing Homebrew casks."
cat lists/brew-casks | xargs brew install --cask

print_line "Installing Homebrew casks. (--no-quarantine)"
cat lists/brew-casks-no-quarantine | xargs brew install --cask --no-quarantine

#print_line "Installing App Store applications."
#cat lists/mas-app-ids | xargs mas install
