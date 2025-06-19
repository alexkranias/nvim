local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  print("Lazy.nvim is not installed!")
  return
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

