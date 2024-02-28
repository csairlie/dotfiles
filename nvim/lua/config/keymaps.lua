-- function for quicker keymapping --
local function map(mode, lhs, rhs)
  local options = { noremap=true, silent=true }
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Remap space as leader key
-- map("", "<Space>", "<nop>")
vim.g.mapleader = " "
-- vim.g.maplocalleader = " "

-- Disable arrow keys
map('', '<up>', '<nop>', opts)
map('', '<down>', '<nop>', opts)
map('', '<left>', '<nop>', opts)
map('', '<right>', '<nop>', opts)

-- NvimTree
-- map('n', '<C-n>', ':NvimTreeToggle<CR>')            -- open/close
-- map('n', '<leader>f', ':NvimTreeRefresh<CR>')       -- refresh
-- map('n', '<leader>n', ':NvimTreeFindFile<CR>')      -- search file
