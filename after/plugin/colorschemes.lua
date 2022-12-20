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

-- ~~~~~ KANAGAWA ~~~~~
-- require("kanagawa").setup({
-- 	undercurl = true, -- enable undercurls
-- 	commentStyle = { italic = true },
-- 	functionStyle = {},
-- 	keywordStyle = { italic = true },
-- 	statementStyle = { bold = true },
-- 	typeStyle = {},
-- 	variablebuiltinStyle = { italic = true },
-- 	specialReturn = true, -- special highlight for the return keyword
-- 	specialException = true, -- special highlight for exception handling keywords
-- 	transparent = false, -- do not set background color
-- 	dimInactive = false, -- dim inactive window `:h hl-NormalNC`
-- 	globalStatus = false, -- adjust window separators highlight for laststatus=3
-- 	terminalColors = true, -- define vim.g.terminal_color_{0,17}
-- 	colors = {},
-- 	overrides = {
-- 		normal = {
-- 			bg = "#16161D",
-- 		},
-- 		NvimTreeFolderIcon = {
-- 			fg = "#E6C384",
-- 		},
-- 		NvimTreeRootFolder = {
-- 			fg = "#D27E99",
-- 		},
-- 		NormalFloat = {
-- 			bg = "#1F1F28",
-- 		},
-- 	},
-- 	theme = "default", -- Load "default" theme or the experimental "light" theme
-- })
--
-- vim.cmd([[colorscheme kanagawa]])
--
-- -- ~~~~~ ONE DARK ~~~~~
-- require("onedarkpro").setup({
-- 	dark_theme = "onedark", -- The default dark theme
-- 	light_theme = "onelight", -- The default light theme
-- 	colors = {}, -- Override default colors by specifying colors for 'onelight' or 'onedark' themes
-- 	highlights = {}, -- Override default highlight groups
-- 	ft_highlights = {}, -- Override default highlight groups for specific filetypes
-- 	plugins = { -- Override which plugin highlight groups are loaded
-- 		-- See the Supported Plugins section for a list of available plugins
-- 	},
-- 	styles = { -- Choose from "bold,italic,underline"
-- 		strings = "NONE", -- Style that is applied to strings.
-- 		comments = "NONE", -- Style that is applied to comments
-- 		keywords = "NONE", -- Style that is applied to keywords
-- 		functions = "NONE", -- Style that is applied to functions
-- 		variables = "NONE", -- Style that is applied to variables
-- 		virtual_text = "NONE", -- Style that is applied to virtual text
-- 	},
-- 	options = {
-- 		bold = true, -- Use the colorscheme's opinionated bold styles?
-- 		italic = true, -- Use the colorscheme's opinionated italic styles?
-- 		underline = false, -- Use the colorscheme's opinionated underline styles?
-- 		undercurl = false, -- Use the colorscheme's opinionated undercurl styles?
-- 		cursorline = false, -- Use cursorline highlighting?
-- 		transparency = false, -- Use a transparent background?
-- 		terminal_colors = false, -- Use the colorscheme's colors for Neovim's :terminal?
-- 		window_unfocused_color = false, -- When the window is out of focus, change the normal background?
-- 	},
-- })
-- vim.cmd("colorscheme onedarkpro") -- Lua
