#!/bin/sh
source functions/common

print_line "Installing Homebrew."

# Install Homebrew.
if ( ! command -v brew ); then
    # Do the Homebrew thing.
    # NOTE: Homebrew will install Command Line Tools for us.
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
