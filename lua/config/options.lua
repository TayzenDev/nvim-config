-- Set leader key (before lazy.nvim is loaded)
vim.g.mapleader = " "

-- Using 2 spaces for indentation
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.opt.number = true
vim.opt.relativenumber = true

-- sync system clipboard
vim.opt.clipboard = "unnamedplus"

-- no swap files (files are often edited by other tools in parallel)
vim.opt.swapfile = false

vim.opt.background = "dark"

-- which-key delay
vim.opt.timeout = true
vim.opt.timeoutlen = 300

-- Diagnostic printing
vim.diagnostic.config({
  virtual_text = false,
  -- show the full diagnostic below the current line only
  virtual_lines = { current_line = true },
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = " ",
      [vim.diagnostic.severity.WARN] = " ",
      [vim.diagnostic.severity.HINT] = "󰍉 ",
      [vim.diagnostic.severity.INFO] = " ",
    },
  },
  underline = true,
  update_in_insert = true,
  severity_sort = true,
})
