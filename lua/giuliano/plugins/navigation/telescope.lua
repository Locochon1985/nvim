return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        "nvim-tree/nvim-web-devicons",
        "folke/todo-comments.nvim",
    },
    config = function()
        local telescope = require("telescope")
        telescope.setup({
            defaults = {
                prompt_prefix = " ",
                selection_caret = " ",
                preview_title = " ",
            },
            pickers = {
                find_files = {
                    hidden = true,
                },
                colorscheme = {
                    enable_preview = true,
                },
            },
        })

        telescope.load_extension("fzf")
    end,
}
