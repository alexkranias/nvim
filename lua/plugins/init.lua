return {
  -- Lazy manages itself
  { "folke/lazy.nvim" },

  -- File explorer
  {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    -- Disable netrw
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- Setup NvimTree
    require("nvim-tree").setup({
      hijack_netrw = true,
      hijack_cursor = true,
      sync_root_with_cwd = true,
      view = {
        width = 30,
        side = "left",
        preserve_window_proportions = true,
      },
      actions = {
        open_file = {
          quit_on_open = false,
        },
      },
    })
  end,
  },

  -- Fuzzy finder
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },

  -- LSP and completion (minimal)
  { "neovim/nvim-lspconfig" },
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },

  -- Colorscheme
  { 
  "catppuccin/nvim", name = "catppuccin", priority = 1000, lazy=false,
  config = function()
    require("catppuccin").setup()
    vim.cmd.colorscheme("catppuccin-frappe")
  end
  },
}
