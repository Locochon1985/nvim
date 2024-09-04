vim.g.mapleader = " "
local keymap = vim.keymap -- for conciseness
-- themery
keymap.set("n", "<leader>th", "<cmd>Themery<CR>", {})
-- toggle term
keymap.set("n", "<s-m>", "<cmd>ToggleTerm direction=float<CR>", { desc = "Toggle terminal" })
--Basic
keymap.set("i", "jj", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
keymap.set("n", "<C-s>", "<cmd>w<CR>")
keymap.set("n", ";", ":", { desc = "CMD enter command mode" })
--telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", {})
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", {})
keymap.set("n", "<leader>fc", "<cmd>Telescope colorscheme<cr>", {})
keymap.set("n", "<leader>fh", "<cmd>Telescope oldfiles<cr>", {})
--mini-files
keymap.set("n", "<leader><leader>", "<cmd>lua=MiniFiles.open()<CR>", {})
--nvim-tree
keymap.set("n", "<C-n>", "<cmd>Neotree toggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
keymap.set("n", "<leader>ee", "<cmd>Neotree focus<CR>", { desc = "Toggle file explorer on current file" }) -- toggle file explorer on current file
-- window management
keymap.set("n", "<leader>oo", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>xx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<Tab>", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
