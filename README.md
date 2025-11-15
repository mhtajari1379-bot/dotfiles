# Dotfiles

Welcome to my dotfiles repository! This repository contains configuration files and scripts to set up and customize my development environment.

<!-- toc -->

- [Install Packages](#install-packages)
- [Git Configuration](#git-configuration)
- [Fish Setup](#fish-setup)
- [LazyVim Setup](#lazyvim-setup)
- [TPM](#tpm)
- [Stow Usage](#stow-usage)
- [Contributing](#contributing)
- [License](#license)

<!-- tocstop -->

## Install Packages

Install the following packages using your package manager:

- bat
- bottom
- ctop
- eza
- fastfetch
- fd
- fish
- fisher
- ghostty
- git
- github-cli
- htop
- lazygit
- meld
- neovim
- npm
- ripgrep
- rubber
- skim
- starship
- stow
- telegram-desktop
- texlive
- texlive-langarabic
- tldr
- tmux
- tree
- ttf-nerd-fonts-symbols-mono
- wireguard-tools
- yarn
- yazi
- zed
- zoxide

To install them all at once, save the list to a file and run the following command:

```bash
sudo pacman -Syu --needed - < /path/to/file
```

Replace `/path/to/file` with the actual path to your package list file.

## Git Configuration

Set up your Git configuration by running these commands. Replace `<example@gmail.com>` and `<example>` with your own email and name:

```bash
git config --global user.email <example@gmail.com>
git config --global user.name <example>
gh auth login
```

## Fish Setup

Set Fish as your default shell:

```bash
chsh -s /usr/bin/fish
```

## LazyVim Setup

To enhance your Neovim experience, you can install [LazyVim](https://www.lazyvim.org/installation), a fast and extensible Neovim config:

```bash
git clone https://github.com/LazyVim/starter ~/.config/nvim
nvim
```

This will bootstrap LazyVim with sensible defaults and plugin management.

## TPM

Install the Tmux Plugin Manager:

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

## Stow Usage

Create necessary directories before running Stow to avoid symlink issues:

```bash
mkdir -p ~/.config/fish
mkdir -p ~/.config/ghostty
mkdir -p ~/.config/nvim
mkdir -p ~/.config/tmux
mkdir -p ~/.config/zed
mkdir -p ~/.local/bin
```

Finally, run Stow to symlink your configuration files:

```bash
stow */
```

## Contributing

Pull requests and ideas are welcome! Feel free to open an issue or fork this project to contribute.

## License

This project is licensed under the MIT License. You are free to use, modify, and distribute it under the MIT terms.

---

Check out the repository here: [dotfiles](https://github.com/mhtajari1379-bot/dotfiles)
