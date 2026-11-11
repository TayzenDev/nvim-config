-- reload files changed outside of Neovim (e.g. by an AI agent)
local reload = vim.api.nvim_create_augroup("auto_reload", { clear = true })

vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "CursorHold", "TermLeave" }, {
  group = reload,
  callback = function()
    -- :checktime is not allowed in the command-line window
    if vim.fn.getcmdwintype() == "" then
      vim.cmd("checktime")
    end
  end,
})

vim.api.nvim_create_autocmd("FileChangedShellPost", {
  group = reload,
  callback = function(args) vim.notify("Reloaded " .. vim.fn.fnamemodify(args.file, ":~:."), vim.log.levels.INFO) end,
})
