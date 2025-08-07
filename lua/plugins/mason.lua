return {
  "mason-org/mason.nvim",
  opts = {
    ensure_installed = {
      -- LSPs
      "pyright",
      "clangd",
      "lua-language-server",
      "typescript-language-server",
      "astro-language-server",
      "tinymist",
      -- Formatters
      "black",
      "stylua",
      "shfmt",
      "prettier",
      "sqlfmt",
      "typstyle",
    },
  },
}
