local nnoremap = require("ryansafa.keymap").nnoremap
local vnoremap = require("ryansafa.keymap").vnoremap

nnoremap("<C-H>", "<C-W>h")
nnoremap("<C-J>", "<C-W>j")
nnoremap("<C-K>", "<C-W>k")
nnoremap("<C-L>", "<C-W>l")

nnoremap("U", ":m .-2<CR>==")
nnoremap("B", ":m .+1<CR>==")
vnoremap("U", ":m '<-2<CR>gv=gv")
vnoremap("B", ":m '>+1<CR>gv=gv")
