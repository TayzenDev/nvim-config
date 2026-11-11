return {
  "folke/trouble.nvim",
  cmd = "Trouble",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "<leader>xx", "<cmd>Trouble diagnostics toggle<CR>", desc = "Toggle" },
    { "<leader>xw", "<cmd>Trouble diagnostics toggle<CR>", desc = "Workspace Diagnostics" },
    { "<leader>xd", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>", desc = "Document Diagnostics" },
    { "<leader>xq", "<cmd>Trouble qflist toggle<CR>", desc = "Quickfix" },
    { "<leader>xl", "<cmd>Trouble loclist toggle<CR>", desc = "Loclist" },
  },
  opts = {},
}
