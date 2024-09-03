return {
    "zaldih/themery.nvim",
    config = function()
        -- Minimal config
        require("themery").setup({
            themes = { "gruvbox", "tokyonight", "rose-pine-moon", "catppuccin" },
            livePreview = true, -- Apply theme while picking. Default to true.
        })
    end,
}