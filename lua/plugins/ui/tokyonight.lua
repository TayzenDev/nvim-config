return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    transparent = true, -- Enable this to disable setting the background color
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
    -- the default gutter color is invisible on the terminal background (#3e4251)
    on_highlights = function(hl, c)
      hl.LineNr = { fg = c.dark5 }
      hl.LineNrAbove = { fg = c.dark5 }
      hl.LineNrBelow = { fg = c.dark5 }
      hl.SnacksIndent = { fg = c.dark3, nocombine = true }
    end,
  },
  config = function(_, opts)
    require("tokyonight").setup(opts)
    vim.cmd.colorscheme("tokyonight-storm")
  end,
}
