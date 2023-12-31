vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.errorbells = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.smartindent = true

vim.opt.wrap = false
vim.g.termguicolors = true
vim.opt.scrolloff = 8

vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Give more space for displaying messages.
vim.opt.cmdheight = 1

-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
vim.opt.updatetime = 50

-- Don't pass messages to |ins-completion-menu|.
vim.opt.shortmess:append("c")

vim.g.mapleader = " "

vim.opt.signcolumn = "yes"
vim.opt.cursorline = true

vim.o.ls = 0
vim.o.ch = 0
vim.cmd [[ set guicursor=n-v-c-i:block ]]
vim.cmd [[set clipboard+=unnamedplus]]

vim.api.nvim_command("set splitbelow splitright")
vim.api.nvim_command("filetype plugin indent on")
