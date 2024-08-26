return {
    "goolord/alpha-nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },

    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        dashboard.section.header.val = {
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                     ]],
            [[       ████ ██████           █████      ██                     ]],
            [[      ███████████             █████                             ]],
            [[      █████████ ███████████████████ ███   ███████████   ]],
            [[     █████████  ███    █████████████ █████ ██████████████   ]],
            [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
            [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
            [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                       ]],
        }
        -- Set menu
        dashboard.section.buttons.val = {
            dashboard.button("p", "  Projects", "<cmd>Neotree ~/Proyectos/<CR>"),
            dashboard.button("r", "󰥔  Recents Files", "<cmd>Telescope oldfiles<CR>"),
            dashboard.button("f", "󰱼  Find File", "<cmd>Telescope find_files<CR>"),
            dashboard.button("w", "  Find Word", "<cmd>Telescope live_grep<CR>"),
            dashboard.button("c", "  Config setup", "<cmd>Neotree ~/.config/nvim/<CR>"),
        }

        alpha.setup(dashboard.opts)
    end,
}
