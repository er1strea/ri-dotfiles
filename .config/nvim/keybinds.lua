-- Mapping leader
vim.g.mapleader = " "

-- Buffers
vim.keymap.set('n', 'H', ':bp<CR>', { desc = 'Previous buffer' })
vim.keymap.set('n', 'L', ':bn<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '<leader>bd', ':bd<CR>', { desc = 'Delete buffer' })

-- Nvim-tree
vim.keymap.set('n', '<leader>tt', ':NvimTreeToggle<CR>', { desc = 'Toggle Nvim-Tree' })
vim.keymap.set('n', '<leader>tf', ':NvimTreeFocus<CR>', { desc = 'Focus Nvim-Tree' })

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
