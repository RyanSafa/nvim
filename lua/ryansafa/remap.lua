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

vnoremap("<Tab>", ">gv")
vnoremap("<S-Tab>", "<gv")

nnoremap('hx', require('harpoon.mark').add_file)
nnoremap('((', require('harpoon.ui').nav_next)
nnoremap('))', require('harpoon.ui').nav_prev)
nnoremap('hm', require('harpoon.ui').toggle_quick_menu)

for i=1, 9 do
	nnoremap('<leader>' .. i, function() require('harpoon.ui').nav_file(i) end)
end
