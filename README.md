# Neovim Config

**My neovim setup.**
*using `lazy.nvim`.*

## Structure

```
nvim/
├── init.lua
├── lua/
│   ├── config/
│   │   ├── keymaps.lua
│   │   └── options.lua
│   ├── plugins/
│   │   └── init.lua
│   └── setup-plugins.lua
├── lazy-lock.json
├── .gitignore
├── LICENSE
└── README.md
```

## Terminal Installation (kitty)
You need a modern kernel with True Color support among other features. Here are some instructions from the kitty website:

> You can install pre-built binaries of kitty if you are on macOS or Linux using the following simple command:
>```
>curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
>```
>The binaries will be installed in the standard location for your OS, /Applications/kitty.app on macOS and ~/.local/kitty.app on Linux. The installer only touches files in that directory. To update kitty, simply re-run the command.

— [kitty binary installer](https://sw.kovidgoyal.net/kitty/binary/)

### Downloading and Installing a Color Theme
**Here are instructions to have the color theme of the terminal match the nvim config.**

Clone the kitty-themes repository:
```
git clone --depth 1 https://github.com/dexpota/kitty-themes.git ~/.config/kitty/themes
```

Apply the Catppuccin Frappe theme immediately via CLI:
```
kitty +kitten themes --reload-in=all "Catppuccin-Frappe"
```
---
# nvim Installation

### Requirements

* Neovim 0.9+
* Git
* [ripgrep](https://github.com/BurntSushi/ripgrep) (optional but recommended)
* Nerd Font

---

### Automatic Setup

---

### macOS

1. **Install Neovim**

```bash
brew install neovim
```

2. **Install system dependencies**

```bash
brew install ripgrep fd
```

3. **Clone the config**

```bash
git clone https://github.com/alexkranias/nvim ~/.config/nvim
```

4. **Launch Neovim to auto-install plugins**

```bash
nvim +'Lazy sync' +qa
```

---

### Linux

1. **Install Neovim**

For Debian/Ubuntu:

```bash
sudo apt update
sudo apt install -y neovim
```

You may also install the latest Neovim via other methods (AppImage, PPA) for newer versions.

2. **Install system dependencies**

```bash
sudo apt update
sudo apt install -y ripgrep fd-find
```

3. **Clone the config**

```bash
git clone https://github.com/alexkranias/nvim ~/.config/nvim
```

4. **Launch Neovim to auto-install plugins**

```bash
nvim +'Lazy sync' +qa
```

---

### Other Linux Distros

Adjust package manager commands according to your distro:

* Fedora:

```bash
sudo dnf install neovim ripgrep fd-find
```

* Arch Linux:

```bash
sudo pacman -S neovim ripgrep fd
```

---

# Final Steps: Updating Plugins

To update your plugins after installation, open Neovim and run:

```vim
:Lazy update
```

To remove unused plugins, run:

```vim
:Lazy clean
```