return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    highlight = {
      -- custom pattern that accepts "KEYWORD(name):" as well
      pattern = [[.*<(KEYWORDS)\s*\(?.*\)?:]],
    },
    search = {
      -- custom pattern that accepts "KEYWORD(name):" as well
      pattern = [[\b(KEYWORDS)\s*\(?.*\)?:]],
    },
    keywords = {
      SAFETY = { icon = " ", color = "warning", alt = { "SAFE" } },
    },
  },
}
