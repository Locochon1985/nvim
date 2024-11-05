return {
    -- {
    --     "catppuccin/nvim",
    --     name = "catppuccin",
    --     priority = 1000,
    --     config = function()
    --         local colors = require("catppuccin.palettes").get_palette("mocha")
    --         local ucolors = require("catppuccin.utils.colors")
    --         local telescope_prompt = ucolors.darken(colors.crust, 0.95, "#000000")
    --         local telescope_results = ucolors.darken(colors.mantle, 0.95, "#000000")
    --         local telescope_text = colors.text
    --         local telescope_prompt_title = colors.sky
    --         local telescope_preview_title = colors.teal
    --         require("catppuccin").setup({
    --             flavour = "mocha",
    --             dim_inactive = {
    --                 enabled = true,
    --                 shade = "dark",
    --                 percentage = 0.15,
    --             },
    --             transparent_background = false,
    --             term_colors = true,
    --             compile = {
    --                 enabled = true,
    --                 path = vim.fn.stdpath("cache") .. "/catppuccin",
    --             },
    --             styles = {
    --                 comments = { "italic" },
    --                 conditionals = { "italic" },
    --                 loops = {},
    --                 functions = {},
    --                 keywords = { "italic" },
    --                 strings = {},
    --                 variables = {},
    --                 numbers = {},
    --                 booleans = {},
    --                 properties = {},
    --                 types = {},
    --                 operators = {},
    --             },
    --             integrations = {
    --                 cmp = true,
    --                 alpha = true,
    --                 indent_blankline = {
    --                     enabled = true,
    --                     colored_indent_levels = true,
    --                 },
    --                 leap = true,
    --                 lsp_trouble = true,
    --                 markdown = true,
    --                 mini = {
    --                     enabled = true,
    --                 },
    --                 native_lsp = {
    --                     enabled = true,
    --                     virtual_text = {
    --                         errors = { "italic" },
    --                         hints = { "italic" },
    --                         warnings = { "italic" },
    --                         information = { "italic" },
    --                     },
    --                     underlines = {
    --                         errors = { "underline" },
    --                         hints = { "underline" },
    --                         warnings = { "underline" },
    --                         information = { "underline" },
    --                     },
    --                 },
    --                 neotree = true,
    --                 noice = true,
    --                 notify = true,
    --                 symbols_outline = true,
    --                 telescope = true,
    --                 treesitter = true,
    --                 treesitter_context = true,
    --                 bufferline = true,
    --                 which_key = true,
    --             },
    --             highlight_overrides = {
    --                 all = {
    --                     LeapBackdrop = { fg = colors.flamingo },
    --                     TelescopeBorder = { bg = telescope_results, fg = telescope_results },
    --                     TelescopePromptBorder = { bg = telescope_prompt, fg = telescope_prompt },
    --                     TelescopePromptCounter = { fg = telescope_text },
    --                     TelescopePromptNormal = { fg = telescope_text, bg = telescope_prompt },
    --                     TelescopePromptPrefix = { fg = telescope_prompt_title, bg = telescope_prompt },
    --                     TelescopePromptTitle = { fg = telescope_prompt, bg = telescope_prompt_title },
    --                     TelescopePreviewTitle = { fg = telescope_results, bg = telescope_preview_title },
    --                     TelescopePreviewBorder = {
    --                         bg = ucolors.darken(telescope_results, 0.95, "#000000"),
    --                         fg = ucolors.darken(telescope_results, 0.95, "#000000"),
    --                     },
    --                     TelescopePreviewNormal = {
    --                         bg = ucolors.darken(telescope_results, 0.95, "#000000"),
    --                         fg = telescope_results,
    --                     },
    --                     TelescopeResultsTitle = { fg = telescope_results, bg = telescope_preview_title },
    --                     TelescopeMatching = { fg = telescope_prompt_title },
    --                     TelescopeNormal = { bg = telescope_results },
    --                     TelescopeSelection = { bg = telescope_prompt },
    --                     TelescopeSelectionCaret = { fg = telescope_text },
    --                     TelescopeResultsNormal = { bg = telescope_results },
    --                     TelescopeResultsBorder = { bg = telescope_results, fg = telescope_results },
    --                     LineNr = { bg = colors.crust },
    --                     CursorLineNr = { bg = colors.crust },
    --                     FoldColumn = { bg = colors.crust },
    --                     SignColumn = { bg = colors.crust },
    --                     NoiceBorder = { bg = "NONE" },
    --                 },
    --             },
    --         })
    --     end,
    -- },
    {
        "nvchad/ui",
        config = function()
            require("nvchad")
        end,
    },
    {
        "nvchad/base46",
        lazy = true,
        build = function()
            require("base46").load_all_highlights()
        end,
    },
    {
        "nvchad/volt",
    },
    vim = {
        colorscheme = { "nvchad" },
    },
}
