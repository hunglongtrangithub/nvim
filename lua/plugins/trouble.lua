return {
  "folke/trouble.nvim",
  opts = {
    focus = true,
  },
  modes = {
    diagnostics_buffer = {
      mode = "diagnostics", -- inherit from diagnostics mode
      filter = { buf = 0 }, -- filter diagnostics to the current buffer
    },
  },
}
