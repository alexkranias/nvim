vim.g.mapleader = " "

-- Copy and Paste to System Clipboard
vim.keymap.set({'n', 'v'}, '<leader>y', '"+y') -- clipboard yank selected lines
vim.keymap.set({'n', 'v'}, '<leader>p', '"+p') -- clipboard paste

-- Terminal
vim.keymap.set('n', '<leader>t', ':bel split | terminal<CR>', { desc = 'Open terminal (split)' })
vim.keymap.set('n', '<leader>T', ':rightbelow vsplit | terminal<CR>', { desc = 'Open terminal (vsplit)' })
vim.api.nvim_set_keymap('t', '<Esc>', [[<C-\><C-n>]], { noremap = true }) -- still need to do :q after

-- File Explorer
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { desc = 'Toggle File Explorer' })
vim.keymap.set('n', '<leader>f', ':NvimTreeFocus<CR>', { desc = 'Focus File Explorer' })

-- Telescope (Fuzzy File Finder)
vim.keymap.set('n', '<leader>ff', ":Telescope find_files<CR>", { desc = 'Find Files' })
vim.keymap.set('n', '<leader>fg', ':Telescope live_grep<CR>', { desc = 'Live Grep' })

