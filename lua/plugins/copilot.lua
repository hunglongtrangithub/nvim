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
    },
  },
}
