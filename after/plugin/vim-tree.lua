local nnoremap = require("ryansafa.keymap").nnoremap
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
