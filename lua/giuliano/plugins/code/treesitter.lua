return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
        "windwp/nvim-ts-autotag",
        "nvim-treesitter/nvim-treesitter-textobjects", -- adds treesitter based text objects
        { "nvim-treesitter/playground", enabled = false }, -- TS PLayground for creating queries
        "nvim-treesitter/nvim-treesitter-context", -- shows context of offscreen block in a float
    },
    config = function()
        local treesitter = require("nvim-treesitter.configs")

        -- configure treesitter
        treesitter.setup({ -- enable syntax highlighting
            highlight = {
                enable = true,
            },
            -- enable indentation
            indent = { enable = true },
            -- enable autotagging (w/ nvim-ts-autotag plugin)
            autotag = {
                enable = true,
            },
            -- ensure these language parsers are installed
            ensure_installed = {
                "json",
                "javascript",
                "yaml",
                "python",
                "html",
                "css",
                "bash",
                "lua",
                "vim",
                "dockerfile",
                "toml",
                "vimdoc",
                "c",
            },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<leader>tnn",
                    node_incremental = "<leader>tn",
                    scope_incremental = "<leader>tc",
                    node_decremental = "<leader>tm",
                },
            },
        })
    end,
}
