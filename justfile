# Variables
git_email := "mhtajari1379@gmail.com"
git_name := "mhtajari"
pkgs_file := "./packages.txt"
aur_file := "./aur-packages.txt"
aur_helper := "./scripts/.local/bin/aur-helper"
fish_shell := "/usr/bin/fish"

set shell := ["bash", "-cu"]

# Default Task
default: setup

# System Package Installation
build:
    sudo pacman -Syu --needed - < {{ pkgs_file }}

aur:
    {{ aur_helper }} {{ aur_file }}

# Git Configuration
git:
    git config --global user.email {{ git_email }}
    git config --global user.name {{ git_name }}
    git config --global credential.helper store
    git config --global push.autoSetupRemote true
    git config --global init.defaultBranch main
    git config --global core.pager delta
    git config --global interactive.diffFilter "delta --color-only"
    git config --global delta.navigate true
    git config --global merge.conflictStyle zdiff3
    git config --global delta.line-numbers true
    git config --global delta.side-by-side true

# Dotfiles & Stow
path:
    mkdir -p ~/.config/Code/User
    mkdir -p ~/.config/fish
    mkdir -p ~/.config/ghostty
    mkdir -p ~/.local/bin

stow: path
    stow */

# default Shell
shell:
    chsh -s {{ fish_shell }}

# Meta-Task
setup: build aur git stow shell
    @printf "\n✅ Setup complete!\n"
