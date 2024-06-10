return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      -- LSPs
      "pyright",
      "clangd",
      "lua-language-server",
      "typescript-language-server",
      "astro-language-server",
      -- Formatters
      "black",
      "stylua",
      "shfmt",
      "prettier",
      "sqlfmt",
    },
  },
}
