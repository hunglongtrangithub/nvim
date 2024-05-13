return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    dependencies = {
      { "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
      { "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
    },
    opts = {
      -- See Configuration section for rest
      -- -- lazy.nvim opts
    },
    -- See Commands section for default commands if you want to lazy load on them
    keys = {
      {
        "<leader>po",
        "<cmd>CopilotChatOpen<cr>",
        desc = "Open Copilot Chat",
      },
    },
  },
}
