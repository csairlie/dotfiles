return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
          path_display = { "smart" },
        file_ignore_patterns = {
            "Applications/*",
            "Documents/*",
            "Library/*",
            "Movies/*",
            "Music/*",
            "Pictures/*",
            "Public/*",
        },
      },
    })
   
    telescope.load_extension("fzf") 

    -- Custom Commands
    -- Search in neovim dir
    -- local command = vim.api
    -- command.nvim_create_user_command(
    --     'Config',
    --     function ()
    --     require('telescope.builtin').find_files({cwd="~/.config/nvim"})
    --     end,
    --     {}
    -- )
    -- -- Search in home dir
    -- command.nvim_create_user_command(
    --     'Home',
    --     function()
    --     require('telescope.builtin').find_files({cwd="~/"})
    --     end,
    --     {}
    -- )
    
    -- Keymaps
    local keymap = vim.keymap
    keymap.set("n", "<leader>f", "<cmd>Telescope find_files<cr>", { desc = "fzf (cwd)" })
    -- keymap.set("n", "<leader>h", "<cmd>Home<cr>", { desc = "fzf (~/)" })
    keymap.set("n", "<leader>r", "<cmd>Telescope oldfiles<cr>", { desc = "fzf (recent)" })
    -- keymap.set("n", "<leader>c", "<cmd>Config<cr>", { desc = "fzf (~/config)" }) -- Custom command using Telescope
    keymap.set("n", "<leader>g", "<cmd>Telescope live_grep<cr>", { desc = "fzf (string in cwd)" })
    keymap.set("n", "<leader>b", "<cmd>Telescope buffers<cr>", { desc = "telescope buffers" })
  end,
}
