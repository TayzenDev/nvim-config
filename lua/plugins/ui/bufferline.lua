-- highlights tweaked on top of the transparent background
local custom_highlights = {
  buffer_selected = { italic = false, bold = true },
  diagnostic_selected = { italic = false },
  hint_selected = { italic = false },
  pick_selected = { italic = false },
  pick_visible = { italic = false },
  pick = { italic = false },
  separator = { bg = "#1f2335", fg = "#1f2335" },
}

return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = { "nvim-tree/nvim-web-devicons", "folke/tokyonight.nvim" },
  opts = {
    -- clear every bufferline background to keep the transparency
    highlights = function(config)
      local highlights = {}
      for name, hl in pairs(config.highlights) do
        highlights[name] = vim.tbl_extend("force", hl, { bg = "NONE" })
      end
      return vim.tbl_deep_extend("force", highlights, custom_highlights)
    end,
    options = {
      offsets = {
        {
          filetype = "neo-tree",
          separator = false,
          text_align = "left",
        },
      },
      diagnostics = "nvim_lsp",
      separator_style = "thick",
      modified_icon = "●",
      show_close_icon = false,
      show_buffer_close_icons = true,
      diagnostics_indicator = function(count, level)
        local icon = level:match("error") and " " or (level:match("warning") and " ") or " "
        return " " .. icon .. count
      end,
    },
  },
}
