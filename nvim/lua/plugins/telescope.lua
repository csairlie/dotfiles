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
            "school/slides/*",
        },
      },
    })
   
    telescope.load_extension("fzf") 

    -- Custom Commands
    -- Search in neovim dir
    local command = vim.api
    command.nvim_create_user_command(
        'Config',
        function ()
        require('telescope.builtin').find_files({cwd="~/.config/nvim"})
        end,
        {}
    )
    -- Search in home dir
    command.nvim_create_user_command(
        'Home',
        function()
        require('telescope.builtin').find_files({cwd="~/"})
        end,
        {}
    )
    
    -- Keymaps
    local keymap = vim.keymap
    keymap.set("n", "<leader>f", "<cmd>Telescope find_files<cr>", { desc = "Find Files in CWD" })
    keymap.set("n", "<leader>h", "<cmd>Home<cr>", { desc = "Find files in ~" })
    keymap.set("n", "<leader>r", "<cmd>Telescope oldfiles<cr>", { desc = "Find Recent Files" })
    keymap.set("n", "<leader>g", "<cmd>Telescope live_grep<cr>", { desc = "Grep String in CWD" })
    keymap.set("n", "<leader>c", "<cmd>Config<cr>", { desc = "Edit Config" }) -- Custom command using Telescope
  end,
}
