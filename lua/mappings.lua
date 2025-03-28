require "nvchad.mappings"

-- Add custom mappings
local map = vim.keymap.set

-- Neovim completion keybindings
map("i", "<Tab>", 'pumvisible() ? "<C-y>" : "<Tab>"', { noremap = true, silent = true, expr = true })
map("i", "<C-j>", 'pumvisible() ? "<C-n>" : "<C-j>"', { noremap = true, silent = true, expr = true })
map("i", "<C-k>", 'pumvisible() ? "<C-p>" : "<C-k>"', { noremap = true, silent = true, expr = true })

-- Other mappings
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- vim.api.nvim_buf_set_option(
--   "n",
--   "<Leader>ne",
--   "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>",
--   { noremap = true, silent = true }
-- )

-- Splitting mappings
map("n", "<Leader>h", ":split<CR>", { desc = "Split horizontal" })
map("n", "<Leader>v", ":vsplit<CR>", { desc = "Split vertical" })
map("n", "<Leader>cc", ":close<CR>", { desc = "Close current window" })
map("n", "<Leader>q", ":q<CR>", { desc = "Close current tab window" })
map("n", "<Leader>ww", ":w<CR>", { desc = "Save current file" })

-- Tab switch
map("n", "<Leader>tn", "<Cmd>tabnext<CR>", { desc = "Move to the next tab" })
map("n", "<Leader>tp", "<Cmd>tabprevious<CR>", { desc = "Move to the previous tab" })
map("n", "<Leader>t1", "1gt", { desc = "Move to the first tab" })
map("n", "<Leader>t2", "2gt", { desc = "Move to the second tab" })

-- Open folder
map("n", "<Leader>of", function()
  local dir = vim.fn.expand "%:p:h"
  vim.cmd("!open " .. dir)
end, { desc = "Open current Folder in finder" })

-- Tmux Navigator Mappings
-- map("n", "<C-h>", ":TmuxNavigateLeft<CR>", { noremap = true, silent = true })
-- map("n", "<C-j>", ":TmuxNavigateDown<CR>", { noremap = true, silent = true })
-- map("n", "<C-k>", ":TmuxNavigateUp<CR>", { noremap = true, silent = true })
-- map("n", "<C-l>", ":TmuxNavigateRight<CR>", { noremap = true, silent = true })
-- map("n", "<C-\\>", ":TmuxNavigatePrevious<CR>", { noremap = true, silent = true })
--
-- Spectre mappings

map("n", "<leader>S", ":lua require('spectre').open()<CR>", opts)

-- Search current word
map("n", "<leader>sw", ":lua require('spectre').open_visual({select_word=true})<CR>", opts)

-- Search in visual selection
map("v", "<leader>sw", ":lua require('spectre').open_visual()<CR>", opts)

-- Search and replace in the current file
map("n", "<leader>sf", ":lua require('spectre').open_file_search()<CR>", opts)

map("n", "<Leader>re", vim.lsp.buf.rename, { desc = "Rename symbol" })
