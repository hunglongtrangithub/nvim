return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = { enabled = false },
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
        zls = {
          cmd = (function()
            local uv = vim.uv or vim.loop
            local cwd = uv.cwd()

            local candidates = {
              cwd .. "/vendor/zig/zls.exe", -- for Bun
              cwd .. "/zls",
            }

            for _, path in ipairs(candidates) do
              if uv.fs_stat(path) then
                return { path }
              end
            end

            -- fallback to system zls in PATH
            return { "zls" }
          end)(),
          settings = {
            zig_exe_path = (function()
              local uv = vim.uv or vim.loop
              local cwd = uv.cwd()

              local zig_candidates = {
                cwd .. "/vendor/zig/zig.exe", -- for Bun
                cwd .. "/zig",
              }

              for _, path in ipairs(zig_candidates) do
                if uv.fs_stat(path) then
                  return path
                end
              end

              -- fallback to global zig
              return "zig"
            end)(),
          },
        },
      },
    },
  },
}
