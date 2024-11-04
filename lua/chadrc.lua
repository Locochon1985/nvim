local M = {}

M.base46 = {
    theme = "catppuccin",
    transparency = false,
}
M.ui = {
    statusline = {
        theme = "minimal",
        separator_style = "round",
    },
    cmp = {
        lspkind_text = true,
        icons_left = true,
        style = "atom_colored",
    },
    telescope = {
        style = "borderless",
    },
    nvdash = {
        load_on_startup = true,
    },
    lsp = {
        signature = true,
    },
    colorify = {
        enabled = true,
    },
}

return M
