return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          -- avoid using clangd for protobuf files
          filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "hpp" },
        },
        tinymist = {
          single_file_support = true, -- Fixes LSP attachment in non-Git directories
          settings = {
            formatterMode = "typstyle",
            exportPdf = "onSave",
          },
          lint = {
            enabled = true,
          },
        },
      },
    },
  },
}
