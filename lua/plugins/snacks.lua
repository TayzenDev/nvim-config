return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    picker = { enabled = true },
    notifier = { enabled = true },
    -- highlight other uses of the word under the cursor
    words = { enabled = true, debounce = 100 },
    indent = {
      enabled = true,
      indent = { char = "│" },
      scope = { char = "│" },
      animate = { enabled = false },
    },
    gitbrowse = { enabled = true },
  },
}
