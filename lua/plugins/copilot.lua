return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    enabled = false,
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
    config = function(_, opts)
      require("copilot").setup(opts)
      require("which-key").add({
        { "<leader>cp", group = "copilot" },
        {
          "<leader>cpt",
          function()
            require("copilot.suggestion").toggle_auto_trigger()
            vim.notify("Copilot auto trigger toggled")
          end,
          desc = "Toggle Copilot auto trigger",
        },
        {
          "<leader>cpe",
          function()
            require("copilot.command").enable()
            vim.notify("Copilot enabled")
          end,
          desc = "Enable Copilot",
        },
        {
          "<leader>cpd",
          function()
            require("copilot.command").disable()
            vim.notify("Copilot disabled")
          end,
          desc = "Disable Copilot",
        },
      })
    end,
  },
}
