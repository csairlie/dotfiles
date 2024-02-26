-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("telescope").setup({
    defaults = {
        file_ignore_patterns = {
            "Pictures/*",
            "Movies/*",
            "Public/*",
            "Music/*",
            "Library/*",
            "System/*",
            "Applications/*",
            "Shared/*",
            "school/slides/*",
        },
    },
})
vim.o.tabstop = 4 -- A TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 4 -- Number of spaces inserted when indenting
