-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>v", require("osc52").copy_operator, { expr = true })
vim.keymap.set("n", "<leader>vv", "<leader>c_", { remap = true })
vim.keymap.set("v", "<leader>v", require("osc52").copy_visual)
