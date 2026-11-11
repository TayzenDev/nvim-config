-- GitHub PRs / issues through the `gh` CLI (works with private repos)
-- :Octo <PR url>, then :Octo review
return {
  "pwntester/octo.nvim",
  cmd = "Octo",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "folke/snacks.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    { "<leader>op", "<cmd>Octo pr list<cr>", desc = "List PRs" },
    { "<leader>oi", "<cmd>Octo issue list<cr>", desc = "List issues" },
    { "<leader>or", "<cmd>Octo review<cr>", desc = "Review PR" },
  },
  opts = {
    picker = "snacks",
    -- bare Octo command opens picker of commands
    enable_builtin = true,
  },
}
