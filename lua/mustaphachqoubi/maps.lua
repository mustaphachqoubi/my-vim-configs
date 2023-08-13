local keymap = vim.keymap

-- new tab
keymap.set('n', 'ee', ':tabedit<Return>', { silent = true })

-- select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- screen splits
keymap.set('n', 'sv', ':vsplit<Return>', { silent = true })
keymap.set('n', 'sh', ':split<Return>', { silent = true })

-- paste
vim.api.nvim_set_keymap('n', '<leader>p', '"*p', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>p', '"*p', { noremap = true })


-- incolla

keymap.set('n', 'ii', ':Incolla<Return>', { silent = true })
