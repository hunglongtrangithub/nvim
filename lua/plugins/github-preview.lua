return {
  "wallpants/github-preview.nvim",
  opts = {
    -- config goes here
  },
  config = function(_, opts)
    local gpreview = require("github-preview")
    gpreview.setup(opts)

    local fns = gpreview.fns
    vim.keymap.set("n", "<leader>mpt", fns.toggle)
    vim.keymap.set("n", "<leader>mps", fns.single_file_toggle)
    vim.keymap.set("n", "<leader>mpd", fns.details_tags_toggle)

    require("which-key").add({
      { "<leader>m", group = "markdown", desc = "markdown" },
      { "<leader>mpt", fns.toggle, desc = "Toggle Github Preview" },
      { "<leader>mps", fns.single_file_toggle, desc = "Single File Toggle" },
      { "<leader>mpd", fns.details_tags_toggle, desc = "Details Tags Toggle" },
    })
  end,
}
