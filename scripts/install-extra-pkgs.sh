#!/bin/sh
source functions/common

# Install unconventional packages.

print_line "Installing IDEA wrapper."
echo 'open -na "IntelliJ IDEA CE.app" --args "$@"' > "$HOME/.local/bin/idea"

print_line "Installing lsusb."
curl -o"$HOME/.local/bin/lsusb" https://raw.githubusercontent.com/jlhonora/lsusb/master/lsusb

# surely this is safe
print_line "Installing Vineflower."
curl -L -o"$HOME/.local/vineflower.jar" https://github.com/Vineflower/vineflower/releases/download/1.9.1/vineflower-1.9.1.jar
echo 'java -Xms4G -Xmx4G -jar $HOME/.local/vineflower.jar "$@"' > "$HOME/.local/bin/vineflower"

chmod +x "$HOME/.local/bin/idea"
chmod +x "$HOME/.local/bin/lsusb"
chmod +x "$HOME/.local/bin/vineflower"