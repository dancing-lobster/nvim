-- Key Mappings
vim.keymap.set("n", "<leader>e", ":Neotree<CR>")

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Telescope - Find Files" })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "Telescope - Grep" })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "Telescope - Find Buffers" })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "Telescope - Search Help Tags" })

-- Undotree
vim.keymap.set('n', '<leader>u', ':UndotreeToggle<CR>', { desc = "Undotree" })

-- Which-Key
vim.keymap.set('n', '<leader>w', ':WhichKey<CR>', { desc = "WhichKey - Normal" })
