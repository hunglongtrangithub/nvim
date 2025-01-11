-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>t", "<cmd>Themery<cr>")
vim.keymap.set({ "n", "t" }, "<C-/", function()
  require("snacks").terminal.toggle(nil, { interactive = true, win = { position = "float" } })
end, { noremap = true, silent = true, desc = "Open New Terminal" })
