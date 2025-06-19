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

## Installation

### Requirements

* Neovim 0.9+
* Git
* [ripgrep](https://github.com/BurntSushi/ripgrep) (optional)
* Nerd Font

### Automatic Setup

```bash
# Clone config
git clone https://github.com/your-username/nvim ~/.config/nvim

# Install system dependencies (Debian/Ubuntu example)
sudo apt update && sudo apt install -y ripgrep fd-find

# Launch Neovim (will auto-install plugins)
nvim +'Lazy sync' +qa
```

You can adjust the system package manager command for your OS (e.g., `brew`, `dnf`, `pacman`).

## Config

* Options: `lua/config/options.lua`
* Keymaps: `lua/config/keymaps.lua`
* Plugins: `lua/plugins/init.lua`

## Updates

```vim
:Lazy update   " Update plugins
:Lazy clean    " Remove unused plugins
```

## License

MIT – see [LICENSE](LICENSE).
