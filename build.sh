#!/usr/bin/env bash

sudo pacman -Syu

SCRIPT_DIR="$(dirname "$(realpath "${BASH_SOURCE[0]}")")"

. "$SCRIPT_DIR/Stow/build.sh"
. "$SCRIPT_DIR/Neovim/build.sh"
