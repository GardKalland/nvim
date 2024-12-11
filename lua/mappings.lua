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
  local dir = vim.fn.expand("%:p:h")
  vim.cmd("!open " ..dir)
end, { desc = "Open current file directory in Finder" })
