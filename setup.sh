#!/bin/bash

setup_brew() {
  if ! command -v brew &>/dev/null; then
    echo "[SETUP] Istalling brew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo "[SETUP] Brew has been installed"
  else
    echo "[SETUP] Brew is already installed"
  fi
}

setup_nvim() {
  brew install neovim
}

# Initialize brew
setup_brew

# Initialize NVIM
setup_nvim
echo "[SETUP] NeoVim has been installed"

# Setup lazy neovim
mkdir -p ~/.config/nvim/
cp nvim_init.lua ~/.config/nvim/init.lua
cp lazynvim.json ~/.config/nvim/lazyvim.json
cp nvim_plugin_telescope.lua ~/.config/nvim/lua/plugins/telescope.lua
echo "[SETUP] Lazynvim has been installed and setuped"

# Initialize fastfetch
brew install fastfetch
echo "[SETUP] Fastfetch has been installed"

# Configure zsh + aliases
cp .zshrc ~/.zshrc
