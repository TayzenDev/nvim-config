return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- group labels, the keymaps themselves are defined with their plugin
    spec = {
      { "<leader>a", hidden = true },
      { "<leader>c", group = "+code" },
      { "c", group = "+code" },
      { "<leader>f", group = "+find" },
      { "<leader>g", group = "+goto" },
      { "g", group = "+goto" },
      { "<leader>l", group = "+lsp" },
      { "<leader>o", group = "+octo" },
      { "<leader>s", group = "+search" },
      { "<leader>x", group = "+trouble" },
    },
  },
}
