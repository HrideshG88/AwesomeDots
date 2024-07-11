vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.incsearch = true
vim.opt.hlsearch = false

vim.opt.updatetime = 50

--vim.opt.termguicolors = true

vim.api.nvim_create_user_command('PeekOpen', require('peek').open, {})
vim.api.nvim_create_user_command('PeekClose', require('peek').close, {})
