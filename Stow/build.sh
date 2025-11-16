#!/usr/bin/env bash

if ! pacman -Qi paru &>/dev/null; then
  echo "❌ paru is not installed. Please install it first."
  return 1 2>/dev/null || exit 1
fi

paru -S --noconfirm --needed stow
