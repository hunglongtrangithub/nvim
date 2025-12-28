return {
  "jay-babu/mason-nvim-dap.nvim",
  opts = {
    handlers = {
      function(config)
        -- This is the default/fallback handler
        -- It's called for all adapters that don't have a specific handler
        require("mason-nvim-dap").default_setup(config)
      end,

      -- Add a specific handler for codelldb
      codelldb = function(config)
        -- Set up codelldb normally
        require("mason-nvim-dap").default_setup(config)

        -- Then create the alias 'lldb' for 'codelldb'
        local dap = require("dap")
        dap.adapters.lldb = dap.adapters.codelldb
      end,
    },
  },
}
