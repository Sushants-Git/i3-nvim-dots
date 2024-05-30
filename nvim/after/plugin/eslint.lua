vim.api.nvim_set_keymap('n', '<leader>ee', ':!bash -c "npx eslint . --fix"<CR>', { noremap = true, silent = true })
