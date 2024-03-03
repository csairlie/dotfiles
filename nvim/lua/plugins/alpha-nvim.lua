return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    local Roman = {
        "                                                                       ",
        "                                               o8o                     ",
        "                                               `*'                     ",
        "  ooo. .oo.    .ooooo.   .ooooo.  oooo    ooo oooo  ooo. .oo.  .oo.    ",
        "  `888P`Y88b  d88' `88b d88' `88b  `88.  .8'  `888  `888P'Y88bP'Y88b   ",
        "   888   888  888ooo888 888   888   `88..8'    888   888   888   888   ",
        "   888   888  888    .o 888   888    `888'     888   888   888   888   ",
        "  o888o o888o `Y8bod8P' `Y8bod8P'     `8'     o888o o888o o888o o888o  ",
        "                                                                       ",
    }

    local Broadway = {
        "                                                                                                              ",
        "                                                                                         .         .          ",
        "b.             8 8 8888888888       ,o888888o.  `8.`888b           ,8'  8 8888          ,8.       ,8.         ",
        "888o.          8 8 8888          . 8888     `88. `8.`888b         ,8'   8 8888         ,888.     ,888.        ",
        "Y88888o.       8 8 8888         ,8 8888       `8b `8.`888b       ,8'    8 8888        .`8888.   .`8888.       ",
        ".`Y888888o.    8 8 8888         88 8888        `8b `8.`888b     ,8'     8 8888       ,8.`8888. ,8.`8888.      ",
        "8o. `Y888888o. 8 8 888888888888 88 8888         88  `8.`888b   ,8'      8 8888      ,8'8.`8888,8^8.`8888.     ",
        "8`Y8o. `Y88888o8 8 8888         88 8888         88   `8.`888b ,8'       8 8888     ,8' `8.`8888' `8.`8888.    ",
        "8   `Y8o. `Y8888 8 8888         88 8888        ,8P    `8.`888b8'        8 8888    ,8'   `8.`88'   `8.`8888.   ",
        "8      `Y8o. `Y8 8 8888         `8 8888       ,8P      `8.`888'         8 8888   ,8'     `8.`'     `8.`8888.  ",
        "8         `Y8o.` 8 8888          ` 8888     ,88'        `8.`8'          8 8888  ,8'       `8        `8.`8888. ",
        "8            `Yo 8 888888888888     `8888888P'           `8.`           8 8888 ,8'         `         `8.`8888.",
        "                                                                                                              ", 
    }

    -- Set header
    dashboard.section.header.val = Roman

    -- Set menu
    dashboard.section.buttons.val = {
    dashboard.button("n", "  > New File", "<cmd>ene<CR>"),
    dashboard.button("<> e", "  > Explorer", "<cmd>NvimTreeToggle<CR>"),
    dashboard.button("<> f", "  > Find File", "<cmd>Telescope find_files<CR>"),
    dashboard.button("<> r", "  > Find Recent File", "<cmd>Telescope oldfiles<CR>"),
    dashboard.button("<> c", "  > Edit Config", "<cmd>Config<CR>"),
    dashboard.button("q", "  > Quit", "<cmd>qa<CR>"),
    }

    -- Send config to alpha
    alpha.setup(dashboard.opts)
    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
    -- Remove tildes from dashboard
    vim.opt.fillchars = { eob = " " }

  end,
}
