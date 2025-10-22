# dotfiles

Personal dotfiles for macOS development environment.

## Contents

This repository contains configuration files for:

- **Alacritty** - GPU-accelerated terminal emulator
- **Fish Shell** - User-friendly command line shell
- **Helix** - Post-modern text editor
- **Starship** - Cross-shell prompt
- **Zed** - High-performance code editor
- **Zellij** - Terminal multiplexer


## Installation

### Clone the repository

```shell
git clone git@github.com:TShibano/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

### Manual setup

Create symbolic links to the configuration directories:

```shell
# example: alacritty
ln -sf ~/dotfiles/alacritty ~/.config/alacritty 
# example: starship
ln -sf ~/dotfiles/starship.toml ~/.config/starship.toml
```

## Prerequisites

Install the required tools using Homebrew:

```shell
brew install fish helix starship zellij
brew install --cask zed alacritty 
```


