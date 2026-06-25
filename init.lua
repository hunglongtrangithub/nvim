-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- https://docs.noctalia.dev/v4/theming/program-specific/neovim/
vim.api.nvim_create_autocmd("VimEnter", {
  once = true,
  callback = function()
    require("matugen").setup()
  end,
})
