-- ~~~~~ GRVBOX ~~~~~
-- local colors = require("gruvbox-baby.colors").config()
-- vim.g.gruvbox_baby_highlights = {
-- 	NvimTreeNormal = {
-- 		bg = "#282828",
-- 	},
-- 	NvimTreeNormalNC = {
-- 		bg = "#282828",
-- 	},
-- }
-- vim.g.gruvbox_baby_keyword_style = "italic"
-- vim.g.gruvbox_baby_use_original_palette = 1
-- vim.g.gruvbox_baby_background_color = "medium"
-- vim.g.gruvbox_baby_transparent_mode = 0
-- vim.cmd([[colorscheme gruvbox-baby]])

-- ~~~~~ KANAGAWA ~~~~~
require("kanagawa").setup({
	undercurl = true, -- enable undercurls
	commentStyle = { italic = true },
	functionStyle = {},
	keywordStyle = { italic = true },
	statementStyle = { bold = true },
	typeStyle = {},
	variablebuiltinStyle = { italic = true },
	specialReturn = true, -- special highlight for the return keyword
	specialException = true, -- special highlight for exception handling keywords
	transparent = false, -- do not set background color
	dimInactive = false, -- dim inactive window `:h hl-NormalNC`
	globalStatus = false, -- adjust window separators highlight for laststatus=3
	terminalColors = true, -- define vim.g.terminal_color_{0,17}
	colors = {},
	overrides = {
		normal = {
			bg = "#16161D",
		},
		NvimTreeFolderIcon = {
			fg = "#E6C384",
		},
		NvimTreeRootFolder = {
			fg = "#D27E99",
		},
		NormalFloat = {
			bg = "#1F1F28",
		},
	},
	theme = "default", -- Load "default" theme or the experimental "light" theme
})

vim.cmd([[colorscheme kanagawa]])
