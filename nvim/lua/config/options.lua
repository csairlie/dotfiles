-- disable netrw (use nvim-tree instead) --
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- enable 24-bit color for nvim-tree --
vim.opt.termguicolors = true

local set = vim.opt
----- vim options -----
vim.g.mapleader = " "           -- set leader key to space
set.number = true               -- show hybrid line numbers
set.relativenumber = true       -- (contd.)
set.tabstop = 4                 -- tab char looks like 4 spaces
set.expandtab = true            -- pressing tab insert spaces instead of a tab char
set.softtabstop = 4             -- num of spaces instead of tab char
set.shiftwidth = 4              -- num of spaces when indenting
set.clipboard = "unnamedplus"   -- enable clipboard
set.mouse = "a"                 -- enable mouse
