vim.g.mapleader = " "
local keymap = vim.keymap -- for conciseness
-- themery
keymap.set("n", "<leader>th", "<cmd>Themery<CR>", {})
-- toggle term
keymap.set("n", "<s-m>", "<cmd>ToggleTerm direction=float<CR>", { desc = "Toggle terminal" })
--Basic
keymap.set("i", "jj", "<ESC>", { desc = "Exit insert mode with jj" })
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
keymap.set("n", "<C-s>", "<cmd>w<CR>")
keymap.set("n", ";", ":", { desc = "CMD enter command mode" })

keymap.set("n", "<C-n>", "<cmd>Neotree toggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
-- window management
keymap.set("n", "<leader>oo", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<Tab>", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
