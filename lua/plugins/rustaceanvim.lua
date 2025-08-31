return {
  "mrcjkb/rustaceanvim",
  opts = {
    server = {
      default_settings = {
        ["rust-analyzer"] = {
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
