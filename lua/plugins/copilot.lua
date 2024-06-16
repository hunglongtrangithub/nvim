return {
  -- add copilot
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    opts = {
      -- add your options that should be passed to the setup() function here
      suggestion = {
        auto_trigger = true,
        keymap = {
          accept = "<C-]>",
          dismiss = "<C-[",
        },
      },
      filetypes = {
        markdown = true,
        help = true,
      },
    },
    keys = {
      { "<leader>p", "", desc = "+copilot" },
      {
        "<leader>pt",
        function()
          require("copilot.suggestion").toggle_auto_trigger()
          vim.notify("Copilot auto trigger toggled")
        end,
        desc = "Toggle Copilot auto trigger",
      },
      {
        "<leader>pe",
        function()
          require("copilot.command").enable()
          vim.notify("Copilot enabled")
        end,
        desc = "Enable Copilot",
      },
      {
        "<leader>pd",
        function()
          require("copilot.command").disable()
          vim.notify("Copilot disabled")
        end,
        desc = "Disable Copilot",
      },
    },
  },
}
