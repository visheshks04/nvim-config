return {
  "carlos-algms/agentic.nvim",

  --- @type agentic.PartialUserConfig
  opts = {
    -- Any ACP-compatible provider works. Built-in: "claude-agent-acp" | "gemini-acp" | "codex-acp" | "opencode-acp" | "cursor-acp" | "copilot-acp" | "auggie-acp" | "mistral-vibe-acp" | "cline-acp" | "goose-acp"
    provider = "claude-agent-acp",
  },

  keys = {
    {
      "<leader>af",
      function() require("agentic").toggle() end,
      mode = { "n" },
      desc = "Focus Agentic Chat"
    },
    {
      "<C-l>",
      function() require("agentic").toggle() end,
      mode = { "n", "v", "i" },
      desc = "Toggle Agentic Chat"
    },
    {
      "<C-l>",
      "<C-\\><C-n><cmd>lua require('agentic').toggle()<cr>",
      mode = { "t" },
      desc = "Toggle Agentic Chat (from terminal)"
    },

    -- Resume session (claudecode: <leader>ar ClaudeCode --resume)
    {
      "<leader>ar",
      function() require("agentic").restore_session() end,
      mode = { "n", "v", "i" },
      desc = "Resume Agentic Session"
    },

    -- New session
    {
      "<leader>af",
      function() require("agentic").new_session() end,
      mode = { "n", "v", "i" },
      desc = "New Agentic Session"
    },

    -- Add context (claudecode: <leader>ab ClaudeCodeAdd %, <leader>as ClaudeCodeSend)
    {
      "<leader>ab",
      function() require("agentic").add_selection_or_file_to_context() end,
      mode = { "n" },
      desc = "Add current buffer to Agentic context"
    },
    {
      "<leader>as",
      function() require("agentic").add_selection_or_file_to_context() end,
      mode = { "v" },
      desc = "Send selection to Agentic"
    },
    {
      "<leader>as",
      function() require("agentic").add_selection_or_file_to_context() end,
      ft = { "NvimTree", "neo-tree", "oil", "minifiles", "netrw" },
      desc = "Add file from tree to Agentic"
    },
    -- Diff management (claudecode: <leader>aa ClaudeCodeDiffAccept, <leader>ad ClaudeCodeDiffDeny)
    {
      "<leader>aa",
      function() require("agentic").accept_changes() end,
      mode = { "n" },
      desc = "Accept Agentic diff"
    },
    {
      "<leader>ad",
      function() require("agentic").reject_changes() end,
      mode = { "n" },
      desc = "Deny Agentic diff"
    },

    -- Diagnostics (moved from <leader>ad to avoid conflict with diff deny above)
    {
      "<leader>adi",
      function() require("agentic").add_current_line_diagnostics() end,
      mode = { "n" },
      desc = "Add current line diagnostic to Agentic"
    },
    {
      "<leader>adA",
      function() require("agentic").add_buffer_diagnostics() end,
      mode = { "n" },
      desc = "Add all buffer diagnostics to Agentic"
    },
  },
}
