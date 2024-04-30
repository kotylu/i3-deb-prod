-- [[ Basic Keymaps ]]
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- gets folder view

-- center move 
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<c-d>", "<c-d>zz")
vim.keymap.set("n", "<c-u>", "<c-u>zz")
vim.keymap.set("n", "J", "mzJ")

-- reset to transparent background
vim.keymap.set("n", "<leader>cs", ":lua ResetBackground()<CR>")

-- NerdTree
--vim.keymap.set("n", "<c-t>", ":NERDTreeToggle<CR>")
vim.keymap.set("n", "<leader>t", ":NERDTreeToggle<CR>")

-- tab, view, buffer
vim.keymap.set("n", "<leader>w", "<c-w><c-w>") -- goto next buffer
-- original <c-q> = visual block
vim.keymap.set("n", "<c-q>", ":bd<CR>")

-- Telescope
-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin')
	.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    	winblend = 10,
    	previewer = false,
  	})
end, { desc = '[/] Fuzzily search in current buffer]' })


