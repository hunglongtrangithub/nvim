return {
  {
    "ojroques/nvim-osc52",
    opts = {
      tmux_passthrough = true,
    },
    config = function()
      vim.keymap.set("n", "<leader>v", require("osc52").copy_operator, { expr = true })
      vim.keymap.set("n", "<leader>vv", "<leader>c_", { remap = true })
      vim.keymap.set("v", "<leader>v", require("osc52").copy_visual)

      require("which-key").add({
        { "<leader>v", require("osc52").copy_operator, desc = "Copy to clipboard" },
        { "<leader>vv", "<leader>c_", desc = "Copy to clipboard (line)" },
        { "<leader>v", require("osc52").copy_visual, desc = "Copy to clipboard (visual)", mode = "v" },
      })
    end,
  },
}
