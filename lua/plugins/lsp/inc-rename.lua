return {
  "smjonas/inc-rename.nvim",
  cmd = "IncRename",
  -- the plugin must be loaded before typing the command for the live preview
  keys = {
    { "cr", ":IncRename ", desc = "Rename" },
    { "<leader>cr", ":IncRename ", desc = "Rename" },
    { "<leader>lr", ":IncRename ", desc = "Rename" },
  },
  opts = {},
}
