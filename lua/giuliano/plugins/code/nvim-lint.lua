return {
    "mfussenegger/nvim-lint",
    event = { "BufReadPre", "BufNewFile" },
    dependecies = {},
    config = function()
        local lint = require("lint")

        lint.linters_by_ft = {
            lua = { "luacheck" },
            javascript = { "eslint_d" },
            typescript = { "eslint_d" },
            javascriptreact = { "eslint_d" },
            typescriptreact = { "eslint_d" },
            python = { "flake8" },
        }
        lint.linters.luacheck.args = {
            "--globals",
            "love",
            "vim",
            "--formatter",
            "plain",
            "--codes",
            "--ranges",
            "-",
        }

        local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

        vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
            group = lint_augroup,
            callback = function()
                lint.try_lint()
            end,
        })

        vim.keymap.set("n", "<leader>l", function()
            lint.try_lint()
        end, { desc = "Trigger linting for current file" })
    end,
}
