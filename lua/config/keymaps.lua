-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Keymaps for osc52 plugin (cannot be set in osc52.lua)
vim.keymap.set("n", "<leader>v", require("osc52").copy_operator, { expr = true })
vim.keymap.set("n", "<leader>vv", "<leader>c_", { remap = true })
vim.keymap.set("v", "<leader>v", require("osc52").copy_visual)

require("which-key").add({
  -- osc52
  { "<leader>v", require("osc52").copy_operator, desc = "Copy to clipboard" },
  { "<leader>vv", "<leader>c_", desc = "Copy to clipboard (line)" },
  { "<leader>v", require("osc52").copy_visual, desc = "Copy to clipboard (visual)", mode = "v" },
  -- copilot
  { "<leader>p", group = "copilot", desc = "copilot" },
  -- momokai-nightasty
  { "<leader>tt", "<Cmd>MonokaiToggleLight<CR>", desc = "Monokai-Nightasty: Toggle dark/light theme.", hidden = true },
})
