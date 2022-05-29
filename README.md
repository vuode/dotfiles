# Dotfiles

A repository for managing dotfiles

## Installation

1. Clone repo:

```bash
git clone https://github.com/vuode/dotfiles.git
```

2. Install dotfiles:

```bash
./dotfiles/install
```

3. Install missing packages:

These dotfiles provide configuration for packages:

- `nvim`

## Sidenotes

### `nvim` installation:

#### Ubuntu:

1. Add repo (currently this config works only with `unstable` e.g. `version >= 0.7.0`):

```bash
sudo add-apt-repository ppa:neovim-ppa/unstable
```

2. Install the package:

```bash
sudo apt install neovim
```

#### MacOS:

1. Install `homebrew` if not installed:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

2. Install the package:

```bash
brew install neovim
```

