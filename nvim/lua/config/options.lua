-- disable netrw (use nvim-tree instead) --
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local set = vim.opt

-- general
set.number = true               -- show hybrid line numbers
set.relativenumber = true       -- (contd.)
set.mouse = "a"                 -- enable mouse
set.wrap = false                -- disable text wrapping
set.termguicolors = true
set.background = "dark"         -- use dark mode for colorschemes

-- tabs & indentation
set.tabstop = 4                 -- tab char looks like 4 spaces
set.shiftwidth = 4              -- num of spaces when indenting
set.expandtab = true            -- pressing tab insert spaces instead of a tab char
set.autoindent = true           -- copy indent from curr line when starting new one

-- search settings
set.ignorecase = true
set.smartcase = true            -- if you include mixed case in search, assumes you want case-sensitive

-- backspace
set.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
set.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
set.splitright = true -- split vertical window to the right
set.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
set.swapfile = false
