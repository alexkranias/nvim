return {
  -- Lazy manages itself
  { "folke/lazy.nvim" },

  -- File explorer
  { "nvim-tree/nvim-tree.lua" },

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
