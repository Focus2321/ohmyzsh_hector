#!/usr/bin/env bash

# Path to your cloned fork
REPO_DIR="$HOME/.oh-my-zsh"
REPO_ZSHRC="$REPO_DIR/my_zshrc"
HOME_ZSHRC="$HOME/.zshrc"

# Backup existing ~/.zshrc if it exists and isn't already the link
if [ -e "$HOME_ZSHRC" ] && [ ! -L "$HOME_ZSHRC" ]; then
    mv "$HOME_ZSHRC" "$HOME_ZSHRC.bak.$(date +%Y%m%d-%H%M%S)"
    echo "Backed up existing ~/.zshrc"
fi

# Remove old symlink if it exists
[ -L "$HOME_ZSHRC" ] && rm "$HOME_ZSHRC"

# Create new symlink
ln -s "$REPO_ZSHRC" "$HOME_ZSHRC"
echo "Linked $HOME_ZSHRC -> $REPO_ZSHRC"

