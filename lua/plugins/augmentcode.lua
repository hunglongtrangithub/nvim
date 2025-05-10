return {
  "augmentcode/augment.vim",
  enabled = true,
  keys = {
    { "<leader>ac", "<cmd>Augment chat<cr>", mode = { "n", "v" }, desc = "Chat" },
    { "<leader>an", "<cmd>Augment chat-new<cr>", desc = "New Chat" },
    { "<leader>at", "<cmd>Augment chat-toggle<cr>", desc = "Toggle Chat" },
    { "<c-]>", "<cmd>call augment#Accept()<cr>", mode = { "i" }, { noremap = true, silent = true } },
  },
}
