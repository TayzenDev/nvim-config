return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  keys = {
    { "<C-p>", function() Snacks.picker.files() end, desc = "Find Files" },
    { "<leader>ff", function() Snacks.picker.files() end, desc = "Find Files" },
    { "<leader>fg", function() Snacks.picker.grep() end, desc = "Live Grep" },
    { "<leader>fb", function() Snacks.picker.buffers() end, desc = "Buffers" },
    { "<leader>fh", function() Snacks.picker.help() end, desc = "Help Tags" },
    { "<leader>gb", function() Snacks.gitbrowse() end, desc = "Open in browser", mode = { "n", "v" } },
    { "<leader>z", function() Snacks.zen() end, desc = "Zen mode" },
    { "<leader>Z", function() Snacks.zen.zoom() end, desc = "Zoom window" },
  },
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
    zen = {},
  },
}
