-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Open Themery to change themes
vim.keymap.set("n", "<leader>t", "<cmd>Themery<cr>")

-- Toggle terminal
vim.keymap.set({ "n", "t" }, "<C-\\>", function()
  require("snacks").terminal.toggle(nil, { interactive = true, win = { position = "float" } })
end, { noremap = true, silent = true, desc = "Open New Terminal" })

-- Keep cursor centered when scrolling
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true })
-- Keep cursor centered when searching
vim.keymap.set("n", "n", "nzzzv", { noremap = true })
vim.keymap.set("n", "N", "Nzzzv", { noremap = true })
