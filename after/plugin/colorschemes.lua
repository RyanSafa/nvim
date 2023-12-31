-- ~~~~~ GRVBOX ~~~~~
local colors = require("gruvbox-baby.colors").config()
vim.g.gruvbox_baby_highlights = {
	NvimTreeNormal = {
		bg = "#282828",
	},
	NvimTreeNormalNC = {
		bg = "#282828",
	},
}
vim.g.gruvbox_baby_keyword_style = "italic"
vim.g.gruvbox_baby_use_original_palette = 1
vim.g.gruvbox_baby_background_color = "medium"
vim.g.gruvbox_baby_transparent_mode = 0
vim.cmd([[colorscheme gruvbox-baby]])

