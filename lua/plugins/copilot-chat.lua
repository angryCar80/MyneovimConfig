return {
  "CopilotC-Nvim/CopilotChat.nvim",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    debug = false,
    window = {
      layout = "vertical",   -- Side panel layout
      side = "left",     -- 💡 Left side of the screen
      width = 0.3,          -- 💡 30% of the editor width
      relative = "editor",   -- Required for layout
    },
  },
  keys = {
    { "<leader>cc", "<cmd>CopilotChatToggle<CR>", desc = "Toggle Copilot Chat Panel" },
    { "<leader>ce", "<cmd>CopilotChatExplain<CR>", mode = { "n", "v" }, desc = "Explain Code" },
    { "<leader>cf", "<cmd>CopilotChatFix<CR>", mode = { "n", "v" }, desc = "Fix Code" },
    { "<leader>cr", "<cmd>CopilotChatReset<CR>", desc = "Reset Conversation" },
    { "<leader>cb", "<cmd>CopilotChatBuffer<CR>", desc = "Chat About Whole Buffer" },
  },
}

