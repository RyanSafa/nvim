local nnoremap = require("ryansafa.keymap").nnoremap
-- nnoremap <leader>h :NERDTree<CR>
-- map <silent> <leader>n :NERDTreeToggle<CR>
-- map <leader>r :NERDTreeFind<cr>
require("nvim-tree").setup({
	disable_netrw = true,
	filters = {
		dotfiles = true,
		custom = {
			"^.git$",
			"^node_modules",
		},
	},
})
nnoremap("<leader>n", ":NvimTreeToggle<CR>")
