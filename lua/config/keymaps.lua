-- Core keymaps only, plugin keymaps live in their spec (`keys`)
-- and which-key groups in plugins/ui/which-key.lua

-- paste without overwriting
vim.keymap.set("v", "p", "P")

-- redo
vim.keymap.set("n", "U", "<C-r>")

-- movement
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up (centered)" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down (centered)" })
vim.keymap.set("n", "W", "5w")
vim.keymap.set("n", "B", "5b")

-- clear search highlighting
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<cr>")

vim.keymap.set("n", "<leader>w", "<cmd>wall!<CR>", { desc = "Save all files" })
vim.keymap.set("n", "<leader>Q", "<cmd>wqall!<CR>", { desc = "Save and Quit" })

-- LSP (other LSP keymaps are Neovim defaults: K, gra, grr, gri, grn, grt, gO, see :help lsp-defaults)
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Definition" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Declaration" })
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Definition" })
vim.keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, { desc = "Declaration" })
