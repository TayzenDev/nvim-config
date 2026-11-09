-- nvim-treesitter `main` branch: only installs parsers, highlighting and
-- indentation are enabled per buffer (requires the `tree-sitter` CLI)
local function start(buf, lang)
  vim.treesitter.start(buf, lang)
  vim.bo[buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
end

return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    local ts = require("nvim-treesitter")
    local available = ts.get_available()

    vim.api.nvim_create_autocmd("FileType", {
      group = vim.api.nvim_create_augroup("treesitter_start", { clear = true }),
      callback = function(args)
        local buf, lang = args.buf, vim.treesitter.language.get_lang(args.match)
        if not lang then
          return
        end

        if vim.treesitter.language.add(lang) then
          start(buf, lang)
        elseif vim.tbl_contains(available, lang) then
          -- auto install missing parsers
          ts.install(lang):await(function()
            if vim.api.nvim_buf_is_valid(buf) then
              start(buf, lang)
            end
          end)
        end
      end,
    })
  end,
}
