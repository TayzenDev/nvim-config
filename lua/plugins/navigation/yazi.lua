return {
  "mikavilpas/yazi.nvim",
  cmd = "Yazi",
  dependencies = { "folke/snacks.nvim" },
  keys = {
    { "<C-n>", "<cmd>Yazi<cr>", desc = "Open yazi" },
  },
  opts = {
    -- keep netrw / neo-tree for directories
    open_for_directories = false,
  },
}
