return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")
    harpoon:setup({})

    local function toggle_picker(harpoon_files)
      local items = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(items, { text = item.value, file = item.value })
      end

      Snacks.picker({
        title = "Harpoon",
        items = items,
        format = "file",
      })
    end

    vim.keymap.set("n", "<C-e>", function() toggle_picker(harpoon:list()) end, { desc = "Open harpoon window" })
    vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = "Add file to harpoon" })
  end,
}
