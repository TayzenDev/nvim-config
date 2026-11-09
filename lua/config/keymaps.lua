local wk = require("which-key")

-- paste without overwriting
vim.keymap.set("v", "p", "P")

-- redo
vim.keymap.set("n", "U", "<C-r>")

-- movement
vim.keymap.set("n", "C-u", "<C-u>zz")
vim.keymap.set("n", "C-d", "<C-d>zz")
vim.keymap.set("n", "W", "5w")
vim.keymap.set("n", "B", "5b")

-- jump back and forward
vim.keymap.set("n", "C-H", "<C-o>")
vim.keymap.set("n", "C-L", "<C-i>")

-- clear search highlighting
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<cr>")

-- skip folds (down, up)
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")

-- Picker
vim.keymap.set("n", "<C-p>", function() Snacks.picker.files() end, {})

-- Neo-tree
vim.keymap.set("n", "<C-b>", "<cmd>Neotree toggle<cr>", {})

-- Which-key labels and keymaps
wk.add({
  -- No groups
  { "<leader>a", hidden = true },
  { "<leader>K", "<cmd>lua vim.lsp.buf.hover()<CR>", desc = "LSP hover" },
  { "<leader>w", "<cmd>wall!<CR>", desc = "Save all files" },
  { "<leader>Q", "<cmd>wqall!<CR>", desc = "Save and Quit" },
  { "<leader>b", "<cmd>BufferLinePick<CR>", desc = "Buffer switcher" },

  -- Code
  { "<leader>c", group = "+code" },
  { "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", desc = "Code action" },
  { "<leader>cf", "<cmd>lua require('conform').format({ async = true })<CR>", desc = "Format" },
  { "<leader>cr", ":IncRename ", desc = "Rename" },
  { "c", group = "+code" },
  { "ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", desc = "Code action" },
  { "cf", "<cmd>lua require('conform').format({ async = true })<CR>", desc = "Format" },
  { "cr", ":IncRename ", desc = "Rename" },

  -- Find
  { "<leader>f", group = "+find" },
  { "<leader>ff", "<cmd>lua Snacks.picker.files()<CR>", desc = "Find Files" },
  { "<leader>fg", "<cmd>lua Snacks.picker.grep()<CR>", desc = "Live Grep" },
  { "<leader>fb", "<cmd>lua Snacks.picker.buffers()<CR>", desc = "Buffers" },
  { "<leader>fh", "<cmd>lua Snacks.picker.help()<CR>", desc = "Help Tags" },

  -- Goto
  { "<leader>g", group = "+goto" },
  { "<leader>ga", "<cmd>lua vim.lsp.buf.code_action()<CR>", desc = "Code Action" },
  { "<leader>gb", "<cmd>lua Snacks.gitbrowse()<CR>", desc = "Open in browser", mode = { "n", "v" } },
  { "<leader>gh", "<cmd>lua vim.lsp.buf.hover()<CR>", desc = "Hover" },
  { "<leader>gd", "<cmd>lua vim.lsp.buf.definition()<CR>", desc = "Definition" },
  { "<leader>gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", desc = "Declaration" },
  { "<leader>gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", desc = "Implementation" },
  { "<leader>gr", "<cmd>lua vim.lsp.buf.references()<CR>", desc = "References" },
  { "g", group = "+goto" },
  { "ga", "<cmd>lua vim.lsp.buf.code_action()<CR>", desc = "Code Action" },
  { "gh", "<cmd>lua vim.lsp.buf.hover()<CR>", desc = "Hover" },
  { "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", desc = "Definition" },
  { "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", desc = "Declaration" },
  { "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", desc = "Implementation" },
  { "gr", "<cmd>lua vim.lsp.buf.references()<CR>", desc = "References" },

  -- LSP
  { "<leader>l", group = "+lsp" },
  { "<leader>lf", "<cmd>lua require('conform').format({ async = true })<CR>", desc = "Format" },
  { "<leader>lr", ":IncRename ", desc = "Rename" },

  -- Trouble
  { "<leader>x", group = "+trouble" },
  { "<leader>xx", "<cmd>Trouble diagnostics toggle<CR>", desc = "Toggle" },
  { "<leader>xw", "<cmd>Trouble diagnostics toggle<CR>", desc = "Workspace Diagnostics" },
  { "<leader>xd", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>", desc = "Document Diagnostics" },
  { "<leader>xq", "<cmd>Trouble qflist toggle<CR>", desc = "Quickfix" },
  { "<leader>xl", "<cmd>Trouble loclist toggle<CR>", desc = "Loclist" },
})
