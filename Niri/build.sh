#!/usr/bin/env bash

if ! pacman -Qi paru &>/dev/null; then
  echo "❌ paru is not installed. Please install it first."
  return 1 2>/dev/null || exit 1
fi

if ! pacman -Qi stow &>/dev/null; then
  echo "❌ stow is not installed. Please install it first."
  return 1 2>/dev/null || exit 1
fi

paru -S --needed --noconfirm niri

SCRIPT_DIR="$(dirname "$(realpath "${BASH_SOURCE[0]}")")"
PACKAGE_NAME="niri"
CONFIG_DIR="$HOME/.config/$PACKAGE_NAME"

mkdir -p "$CONFIG_DIR"

stow -d "$SCRIPT_DIR" -t "$CONFIG_DIR" "$PACKAGE_NAME"
