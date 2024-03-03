-- function for quicker keymapping --
local function map(mode, lhs, rhs)
  local options = { noremap=true, silent=true }
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Remap space as leader key
map("", "<Space>", "<nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Disable arrow keys
map('', '<up>', '<nop>', opts)
map('', '<down>', '<nop>', opts)
map('', '<left>', '<nop>', opts)
map('', '<right>', '<nop>', opts)

local keymap = vim.keymap

-- NvimTree
keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Explorer" })

-- Telescope
keymap.set("n", "<leader>f", "<cmd>Telescope find_files<cr>", { desc = "Find Files" })
keymap.set("n", "<leader>r", "<cmd>Telescope oldfiles<cr>", { desc = "Find Recent Files" })
keymap.set("n", "<leader>g", "<cmd>Telescope live_grep<cr>", { desc = "Grep String in CWD" })
keymap.set("n", "<leader>c", "<cmd>Config<cr>", { desc = "Edit Config" }) -- Custom command using Telescope


