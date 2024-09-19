#!/bin/sh
source functions/common

# Install unconventional packages.

mkdir -p "$HOME/.local/bin"

print_line "Installing IDEA wrapper."
echo 'open -na "IntelliJ IDEA CE.app" --args "$@"' > "$HOME/.local/bin/idea"

print_line "Installing jargrep."
curl -L -o"$HOME/.local/jargrep-1.0-all.jar" https://github.com/CrackedPolishedBlackstoneBricksMC/jargrep/releases/download/1.0/jargrep-1.0-all.jar
echo 'java -jar $HOME/.local/jargrep-1.0-all.jar "$@"' > "$HOME/.local/bin/jargrep"

print_line "Installing unbted."
curl -L -o"$HOME/.local/unbted-1.2.1.jar" https://git.sleeping.town/unascribed/unbted/releases/download/v1.2.1/unbted-1.2.1.jar
echo 'java -jar $HOME/.local/unbted-1.2.1.jar "$@"' > "$HOME/.local/bin/unbted"

print_line "Installing Vineflower."
curl -L -o"$HOME/.local/vineflower-1.10.1.jar" https://github.com/Vineflower/vineflower/releases/download/1.10.1/vineflower-1.10.1.jar
echo 'java -Xms512M -Xmx4096M -jar $HOME/.local/vineflower-1.10.1.jar --indent-string="    " --thread-count=4 "$@"' > "$HOME/.local/bin/vineflower"

chmod +x "$HOME/.local/bin/idea"
chmod +x "$HOME/.local/bin/jargrep"
chmod +x "$HOME/.local/bin/unbted"
chmod +x "$HOME/.local/bin/vineflower"
