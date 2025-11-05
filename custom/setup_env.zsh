# === My Custom Setup Additions ===
if [ ! -L "$HOME/.zshrc" ]; then
  echo "🔗 Creating symlink for .zshrc..."
  ln -sf "$ZSH/my_zshrc" "$HOME/.zshrc"
fi

if [ "$SHELL" != "$(which zsh)" ]; then
  echo "💡 Setting Zsh as default shell..."
  chsh -s "$(which zsh)"
fi

echo "✅ Custom setup loaded from custom/setup_env.zsh"
