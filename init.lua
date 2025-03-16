-- bootstrap lazy.nvim, LazyVim and your plugins
vim.api.nvim_create_autocmd("FileType", {
  pattern = "cuda",
  callback = function()
    vim.bo.commentstring = "// %s"
  end,
})

require("config.lazy")
