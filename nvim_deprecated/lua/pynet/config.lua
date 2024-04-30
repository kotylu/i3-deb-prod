-- colorscheme
vim.o.termguicolors = true
vim.cmd [[colorscheme ayu-mirage]]

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- tab size
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- search
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8 -- min number of lines displayed to edge of screen

-- Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'


-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'
