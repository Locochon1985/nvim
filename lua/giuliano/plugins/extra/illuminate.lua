return {
    "RRethy/vim-illuminate",
    event = "CursorHold",
    config = function()
        require("illuminate").configure({
            providers = {
                "lsp",
                "treesitter",
                "regex",
            },
            delay = 100,
            filetypes_blacklist = {
                "TelescopePrompt",
                "vim",
                "help",
                "dashboard",
                "NeoTree",
                "Trouble",
            },
            show_first = true,
        })
    end,
}
