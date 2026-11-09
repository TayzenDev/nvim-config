-- Server configs come from nvim-lspconfig (lsp/*.lua), mason-lspconfig calls
-- vim.lsp.enable() for every server installed with :Mason.
-- Per-server overrides can go in a top-level lsp/<server>.lua file.
-- Default keymaps: :help lsp-defaults
return {
  "mason-org/mason-lspconfig.nvim",
  event = { "BufReadPre", "BufNewFile" },
  cmd = { "LspInstall", "LspUninstall" },
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    "neovim/nvim-lspconfig",
  },
  opts = {},
}
