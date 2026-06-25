return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      ---@alias lazyvim.lsp.Config vim.lsp.Config|{mason?:boolean, enabled?:boolean, keys?:any[]}
      ---@type table<string, lazyvim.lsp.Config|boolean>
      servers = {
        clangd = {
          mason = false,
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
        zls = {
          settings = {
            zls = {
              enable_build_on_save = true,
            },
          },
        },
      },
    },
  },
}
