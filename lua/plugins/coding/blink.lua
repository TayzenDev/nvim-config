-- Minimal autocompletion: LSP, paths and buffer words, no snippets
return {
  "saghen/blink.cmp",
  version = "1.*",
  event = "InsertEnter",
  ---@module "blink.cmp"
  ---@type blink.cmp.Config
  opts = {
    keymap = {
      preset = "default",
      ["<C-u>"] = { "scroll_documentation_up", "fallback" },
      ["<C-d>"] = { "scroll_documentation_down", "fallback" },
      ["<C-k>"] = { "select_prev", "fallback" },
      ["<C-j>"] = { "select_next", "fallback" },
      ["<CR>"] = { "accept", "fallback" },
    },
    completion = {
      -- <CR> only confirms an explicitly selected item
      list = { selection = { preselect = false } },
      documentation = { auto_show = true },
      menu = { border = "rounded" },
    },
    cmdline = { enabled = false },
    sources = {
      default = { "lsp", "path", "buffer" },
    },
  },
}
