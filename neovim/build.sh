#!/usr/bin/env bash

paru -S --needed --noconfirm neovim

if ! pacman -Qi stow &>/dev/null; then
  echo "❌ stow is not installed. Please install it first."
  return 1 2>/dev/null || exit 1
fi

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
  SCRIPT_PATH="$(realpath "${BASH_SOURCE[0]}")"
else
  SCRIPT_PATH="$(realpath "${BASH_SOURCE[1]}")"
fi

STOW_ROOT="$(dirname "$SCRIPT_PATH")"
PACKAGE_NAME="nvim"

mkdir -p ~/.config/nvim

stow -d "$STOW_ROOT" -t ~/.config/nvim "$PACKAGE_NAME"
