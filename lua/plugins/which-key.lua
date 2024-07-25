return {
  "folke/which-key.nvim",
  opts = {
    preset = "modern",
    icons = {
      group = "+",
      rules = {
        { pattern = "%f[%a]copilot", icon = " ", color = "orange" },
        { pattern = "%f[%a]copy", icon = " ", color = "blue" },
        { pattern = "%f[%a]yazi", icon = "󰇥 ", color = "yellow" },
      },
    },
  },
}
