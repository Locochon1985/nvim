return {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    version = "*",
    opts = {
        options = {
            mode = "tabs",
            separator_style = "thin",
            show_close_icon = false,
            show_tab_indicators = true,
            enforce_regular_tabs = false,
            always_show_bufferline = true,
        },
    },
}
