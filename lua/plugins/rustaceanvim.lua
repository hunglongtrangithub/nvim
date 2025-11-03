return {
  "mrcjkb/rustaceanvim",
  opts = {
    server = {
      default_settings = {
        ["rust-analyzer"] = {
          -- check = {
          --   command = "clippy",
          --   allTargets = true,
          --   workspace = true,
          -- },
          -- diagnostics = {
          --   enable = true,
          -- },
          procMacro = {
            ignored = {
              -- Don't ignore async-trait
              ["async-trait"] = vim.NIL,
            },
          },
        },
      },
    },
  },
}
