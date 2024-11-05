vim.g.base46_cache = vim.fn.stdpath("data") .. "/base46_cache/"
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out, "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    spec = {
        -- add LazyVim and import its plugins
        { "LazyVim/LazyVim", import = "lazyvim.plugins", colorscheme = "catppuccin" },
        { "mini.icons", enabled = false },
        { "mini.pairs", enabled = false },
        { "mini.ai", enabled = false },
        -- import/override with your plugins
        { import = "giuliano.plugins" },
        { import = "giuliano.plugins.code" },
        { import = "giuliano.plugins.interface" },
        { import = "giuliano.plugins.extra" },
        { import = "giuliano.plugins.navigation" },
    },
    defaults = {
        lazy = false,
        version = false, -- always use the latest git commit
    },
    install = {
        -- install missing plugins on startup. This doesn't increase startup time.
        colorscheme = { "catppuccin" },
    },
    checker = {
        enabled = true, -- check for plugin updates periodically
        notify = false, -- notify on update
    }, -- automatically check for plugin updates
    performance = {
        rtp = {
            -- disable some rtp plugins
            disabled_plugins = {
                "gzip",
                -- "matchit",
                -- "matchparen",
                -- "netrwPlugin",
                "tarPlugin",
                "tohtml",
                "tutor",
                "zipPlugin",
            },
        },
    },
})

for _, v in ipairs(vim.fn.readdir(vim.g.base46_cache)) do
    dofile(vim.g.base46_cache .. v)
end
