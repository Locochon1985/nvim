return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        require("toggleterm").setup({
            size = 20,
            open_mapping = [[<c-\>]],
            shading_factor = 2,
            start_in_insert = true,
            insert_mappings = false,
            persist_size = true,
            direction = "float",
            close_on_exit = true,
            shell = vim.o.shell,
            float_opts = {
                border = "single",
                winblend = 0,
                highlights = {
                    border = "Normal",
                    background = "Normal",
                },
            },
        })
    end,
}
