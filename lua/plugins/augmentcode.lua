return {
  "augmentcode/augment.vim",
  enabled = true,
  keys = {
    { "<leader>ac", "<cmd>Augment chat<cr>", mode = { "n", "v" }, desc = "Chat" },
    { "<leader>an", "<cmd>Augment chat-new<cr>", desc = "New Chat" },
    { "<leader>at", "<cmd>Augment chat-toggle<cr>", desc = "Toggle Chat" },
  },
}
