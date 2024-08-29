----- install and setup lazy.nvim plugin manager -----
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({ 
    { import = "csairlie.plugins.ui" }, 
    { import = "csairlie.plugins.lsp" }, 
    { import = "csairlie.plugins.utils" }, 
})

