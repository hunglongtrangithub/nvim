return {
  -- add gruvbox
  {
    "craftzdog/solarized-osaka.nvim",
    opts = function()
      return {
        transparent = true,
      }
    end,
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "solarized-osaka",
    },
  },
}
