vim.g.mapleader = " "

local keymap = vim.keymap

-- Remap half page navigation to include screen centering
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

keymap.set("n", "<C-k>", ":m .-2<CR>==") -- move line up
keymap.set("n", "<C-j>", ":m .+1<CR>==") -- move line down

-- Copy entire buffer
keymap.set("n", "<leader>cc", "ggVGy", { desc = "Yank entire buffer" })
