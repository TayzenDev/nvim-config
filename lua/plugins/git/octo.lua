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
  opts = {
    picker = "snacks",
    -- bare Octo command opens picker of commands
    enable_builtin = true,
  },
}
