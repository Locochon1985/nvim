return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local lazy_status = require("lazy.status")
        local lualine = require("lualine")
        local config = {
            options = {
                -- Disable sections and component separators
                component_separators = { right = "", left = "" },
                section_separators = { right = "", left = "" },

                theme = "auto",
            },
            sections = {
                lualine_x = {
                    {
                        lazy_status.updates,
                        cond = lazy_status.has_updates,
                        color = { fg = "#ff9e64" },
                    },
                    { "encoding" },
                    { "fileformat" },
                    { "filetype" },
                },
                lualine_c = { "filename" },
            },
        }
        local function ins_left(component)
            table.insert(config.sections.lualine_c, component)
        end

        ins_left({
            -- Lsp server name .
            function()
                local msg = "No Active Lsp"
                local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
                local clients = vim.lsp.get_active_clients()
                if next(clients) == nil then
                    return msg
                end
                for _, client in ipairs(clients) do
                    local filetypes = client.config.filetypes
                    if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                        return client.name
                    end
                end
                return msg
            end,
            icon = " LSP:",
            color = nil,
        })
        lualine.setup(config)
    end,
}
