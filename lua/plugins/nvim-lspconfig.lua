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
          -- check for local zls executable
          cmd = (function()
            local cwd = vim.fn.getcwd()
            local local_zls = cwd .. "/zls/zls"
            if vim.uv.fs_stat(local_zls) then
              return { local_zls }
            end
            return { "zls" } -- fallback to global
          end)(),
          -- check for local zig executable
          before_init = function(_, config)
            local root_dir = config.root_dir
            if not root_dir then
              return
            end
            local local_zig = root_dir .. "/zig/zig"
            if vim.uv.fs_stat(local_zig) then
              config.settings = config.settings or {}
              config.settings.zls = config.settings.zls or {}
              ---@diagnostic disable-next-line: inject-field
              config.settings.zls.zig_exe_path = local_zig
            end
          end,
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
