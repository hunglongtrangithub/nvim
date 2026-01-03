return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    highlight = {
      pattern = [[.*<(KEYWORDS)\s*\(?.*\)?]],
    },
    search = {
      pattern = [[\b(KEYWORDS)\s*\(?.*\)?]],
    },
    keywords = {
      SAFETY = { icon = " ", color = "warning", alt = { "SAFE" } },
    },
  },
}
