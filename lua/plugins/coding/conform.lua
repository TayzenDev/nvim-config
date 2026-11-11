-- Formatting (on save), formatters are installed with :Mason
return {
  "stevearc/conform.nvim",
  event = "BufWritePre",
  cmd = "ConformInfo",
  dependencies = { "mason-org/mason.nvim" },
  keys = {
    { "cf", function() require("conform").format({ async = true }) end, desc = "Format" },
    { "<leader>cf", function() require("conform").format({ async = true }) end, desc = "Format" },
    { "<leader>lf", function() require("conform").format({ async = true }) end, desc = "Format" },
  },
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "isort", "black" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      javascriptreact = { "prettier" },
      typescriptreact = { "prettier" },
      json = { "prettier" },
      html = { "prettier" },
      css = { "prettier" },
      yaml = { "prettier" },
      markdown = { "prettier" },
    },
    default_format_opts = { lsp_format = "fallback" },
    format_on_save = { timeout_ms = 500 },
  },
}
