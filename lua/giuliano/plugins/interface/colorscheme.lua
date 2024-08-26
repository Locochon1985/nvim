return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            local colors = require("catppuccin.palettes").get_palette("mocha")
            local ucolors = require("catppuccin.utils.colors")
            local telescope_prompt = ucolors.darken(colors.crust, 0.95, "#000000")
            local telescope_results = ucolors.darken(colors.mantle, 0.95, "#000000")
            local telescope_text = colors.text
            local telescope_prompt_title = colors.sky
            local telescope_preview_title = colors.teal
            require("catppuccin").setup({
                flavour = "mocha",
                dim_inactive = {
                    enabled = true,
                    shade = "dark",
                    percentage = 0.15,
                },
                transparent_background = false,
                term_colors = true,
                compile = {
                    enabled = true,
                    path = vim.fn.stdpath("cache") .. "/catppuccin",
                },
                styles = {
                    comments = { "italic" },
                    conditionals = { "italic" },
                    loops = {},
                    functions = {},
                    keywords = { "italic" },
                    strings = {},
                    variables = {},
                    numbers = {},
                    booleans = {},
                    properties = {},
                    types = {},
                    operators = {},
                },
                integrations = {
                    cmp = true,
                    alpha = true,
                    indent_blankline = {
                        enabled = true,
                        colored_indent_levels = true,
                    },
                    leap = true,
                    lsp_trouble = true,
                    markdown = true,
                    mini = {
                        enabled = true,
                    },
                    native_lsp = {
                        enabled = true,
                        virtual_text = {
                            errors = { "italic" },
                            hints = { "italic" },
                            warnings = { "italic" },
                            information = { "italic" },
                        },
                        underlines = {
                            errors = { "underline" },
                            hints = { "underline" },
                            warnings = { "underline" },
                            information = { "underline" },
                        },
                    },
                    neotree = true,
                    noice = true,
                    notify = true,
                    symbols_outline = true,
                    telescope = true,
                    treesitter = true,
                    treesitter_context = true,
                    bufferline = true,
                    which_key = true,
                },
                highlight_overrides = {
                    all = {
                        LeapBackdrop = { fg = colors.flamingo },
                        TelescopeBorder = { bg = telescope_results, fg = telescope_results },
                        TelescopePromptBorder = { bg = telescope_prompt, fg = telescope_prompt },
                        TelescopePromptCounter = { fg = telescope_text },
                        TelescopePromptNormal = { fg = telescope_text, bg = telescope_prompt },
                        TelescopePromptPrefix = { fg = telescope_prompt_title, bg = telescope_prompt },
                        TelescopePromptTitle = { fg = telescope_prompt, bg = telescope_prompt_title },
                        TelescopePreviewTitle = { fg = telescope_results, bg = telescope_preview_title },
                        TelescopePreviewBorder = {
                            bg = ucolors.darken(telescope_results, 0.95, "#000000"),
                            fg = ucolors.darken(telescope_results, 0.95, "#000000"),
                        },
                        TelescopePreviewNormal = {
                            bg = ucolors.darken(telescope_results, 0.95, "#000000"),
                            fg = telescope_results,
                        },
                        TelescopeResultsTitle = { fg = telescope_results, bg = telescope_preview_title },
                        TelescopeMatching = { fg = telescope_prompt_title },
                        TelescopeNormal = { bg = telescope_results },
                        TelescopeSelection = { bg = telescope_prompt },
                        TelescopeSelectionCaret = { fg = telescope_text },
                        TelescopeResultsNormal = { bg = telescope_results },
                        TelescopeResultsBorder = { bg = telescope_results, fg = telescope_results },
                        LineNr = { bg = colors.crust },
                        CursorLineNr = { bg = colors.crust },
                        FoldColumn = { bg = colors.crust },
                        SignColumn = { bg = colors.crust },
                        NoiceBorder = { bg = "NONE" },
                    },
                },
            })

            vim.cmd("colorscheme catppuccin")
        end,
    },
    {
        "rebelot/kanagawa.nvim",
        name = "kanagawa",
        priority = 1000,
        opts = {
            transparent_background = false,
            term_colors = true,
            overrides = function(colors)
                local theme = colors.theme
                return {
                    NormalFloat = { bg = "none" },
                    FloatBorder = { bg = "none" },
                    FloatTitle = { bg = "none" },

                    NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

                    LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
                    MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },

                    TelescopeTitle = { fg = theme.ui.special, bold = true },
                    TelescopePromptNormal = { bg = theme.ui.bg_p1 },
                    TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
                    TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
                    TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
                    TelescopePreviewNormal = { bg = theme.ui.bg_dim },
                    TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },

                    Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- add `blend = vim.o.pumblend` to enable transparency
                    PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
                    PmenuSbar = { bg = theme.ui.bg_m1 },
                    PmenuThumb = { bg = theme.ui.bg_p2 },
                }
            end,
        },
    },
    { "rose-pine/neovim", name = "rose-pine" },
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
    },
    { "navarasu/onedark.nvim" },
}
