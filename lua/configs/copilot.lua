vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<S-CR>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

-- Optionally, add other Copilot settings here
