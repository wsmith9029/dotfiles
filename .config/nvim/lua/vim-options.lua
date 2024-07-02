vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.breakindent = true
vim.opt.smartindent = true
vim.opt.termguicolors = true
vim.opt.signcolumn = 'yes'
vim.opt.cursorline = true
vim.opt.title = true


vim.keymap.set({'n','i'}, "<Up>", "<NOP>", {})
vim.keymap.set({'n','i'}, "<Down>", "<NOP>", {})
vim.keymap.set({'n','i'}, "<Left>", "<NOP>", {})
vim.keymap.set({'n','i'}, "<Right>", "<NOP>", {})
