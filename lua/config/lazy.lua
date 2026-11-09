local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    { import = "plugins" },
    { import = "plugins.ui" },
    { import = "plugins.navigation" },
    { import = "plugins.lsp" },
    { import = "plugins.coding" },
    { import = "plugins.git" },
  },
  install = { colorscheme = { "tokyonight-storm" } },
  change_detection = { notify = false },
  rocks = { enabled = false },
})
