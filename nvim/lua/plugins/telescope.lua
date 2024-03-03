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
    
    -- Create command to search in neovim config directory
    vim.api.nvim_create_user_command(
        'Config',
        function ()
            require('telescope.builtin').find_files({cwd="~/.config/nvim"})
        end,
        {}
    )

    telescope.load_extension("fzf")
  end,
}
