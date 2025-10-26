# Dotfiles

Welcome to my dotfiles repository! This repository contains configuration files and scripts to set up and customize my development environment.

## Install Packages

Install the following packages using your package manager:

- bat
- curl
- eza
- fastfetch
- fd
- ghostty
- git
- github-cli
- lazygit
- libreoffice-fresh
- man-db
- markdown-toc (not in repos)
- ripgrep
- skim
- starship
- stow
- telegram-desktop
- thunderbird
- tldr
- tree
- wget
- zed
- zoxide

## Install AUR Packages

These AUR packages can be installed using an AUR helper. First, create a text file containing the package names, one per line, like this:

- hiddify-next-bin
- lazydocker
- paru
- vazirmatn-fonts
- zen-browser-bin

Then, run the following command to install all packages listed in the file:

```bash
./scripts/.local/bin/aur-helper /path/to/file
```

Replace `/path/to/file` with the path to your package list file.

## Git Configuration

Set up your Git configuration by running these commands. Replace `<example@gmail.com>` and `<example>` with your own email and name:

```bash
git config --global user.email <example@gmail.com>
git config --global user.name <example>
gh auth login
```

## Zsh Setup

First, install Oh My Zsh (OMZ) by running:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Then, install plugins for suggestions and syntax highlighting:

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

## Stow Usage

Remove the default `~/.zshrc` created by OMZ:

```bash
rm ~/.zshrc
```

Create necessary directories before running Stow to avoid symlink issues:

```bash
mkdir -p ~/.config/ghostty
mkdir -p ~/.config/zed
mkdir -p ~/.local/bin
```

Finally, run Stow to symlink your configuration files:

```bash
stow */
```

## Zed Text Editor Extensions

I use the following Zed extensions:

- HTML
- Catppuccin
- LiveServer

## Contributing

Pull requests and ideas are welcome! Feel free to open an issue or fork this project to contribute.

## License

This project is licensed under the MIT License. You are free to use, modify, and distribute it under the MIT terms.

---

Check out the repository here: [dotfiles](https://github.com/mhtajari1379-bot/dotfiles)
