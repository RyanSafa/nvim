-- ~~~~~ CATPUCCIN SETUP ~~~~~
vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha

require("catppuccin").setup({
	dim_inactive = {
		enabled = false,
		shade = "dark",
		percentage = 0.15,
	},
	transparent_background = true,
	term_colors = true,
	compile = {
		enabled = false,
		path = vim.fn.stdpath("cache") .. "/catppuccin",
	},
	styles = {
		comments = { "italic" },
		conditionals = { "italic" },
		loops = {},
		functions = {},
		keywords = {},
		strings = {},
		variables = {},
		numbers = {},
		booleans = {},
		properties = {},
		types = {},
		operators = {},
	},
	integrations = {
		treesitter = true,
		native_lsp = {
			enabled = true,
			virtual_text = {
				errors = { "italic" },
				hints = { "italic" },
				warnings = { "italic" },
				information = { "italic" },
			},
			underlines = {
				errors = { "underline" },
				hints = { "underline" },
				warnings = { "underline" },
				information = { "underline" },
			},
		},
		coc_nvim = true,
		lsp_trouble = false,
		cmp = true,
		lsp_saga = false,
		gitgutter = false,
		gitsigns = true,
		leap = false,
		telescope = true,
		nvimtree = {
			enabled = true,
			show_root = true,
			transparent_panel = true,
		},
		neotree = {
			enabled = false,
			show_root = true,
			transparent_panel = false,
		},
		dap = {
			enabled = false,
			enable_ui = false,
		},
		which_key = false,
		indent_blankline = {
			enabled = false,
			colored_indent_levels = false,
		},
		dashboard = false,
		neogit = false,
		vim_sneak = false,
		fern = false,
		barbar = false,
		bufferline = true,
		markdown = true,
		lightspeed = false,
		ts_rainbow = true,
		hop = false,
		notify = true,
		telekasten = true,
		symbols_outline = true,
		mini = false,
		aerial = false,
		vimwiki = true,
		beacon = true,
		navic = false,
		overseer = false,
	},
	color_overrides = {},
	highlight_overrides = {},
})

vim.cmd([[colorscheme catppuccin]])

-- ~~~~~ NORD THEME SETUP ~~~~~

-- vim.g.nord_cursor_line_number_background = 1
-- vim.g.nord_bold = 1
-- vim.g.nord_italic = 1
-- vim.g.nord_italic_comments = 1
-- vim.g.nord_underline = 1
--
-- vim.cmd([[colorscheme nord]])

-- ~~~~~ EVERFOREST SETUP ~~~~~

-- For dark version.

-- vim.cmd([[set background=dark]])
--
-- vim.g.everforest_diagnostic_text_highlight = 1
-- vim.g.everforest_enable_italic = 1
-- vim.g.everforest_diagnostic_virtual_text = "colored"
-- vim.g.everforest_background = "hard"

-- -- Available values: 'hard', 'medium'(default), 'soft'
-- vim.g.everforest_transparent_background = 1

-- -- For better performance
--
-- vim.g.everforest_better_performance = 1
-- vim.cmd([[colorscheme everforest]])

--  ~~~ GRUVBOX-BABY ~~~~

-- vim.g.gruvbox_baby_keyword_style = "italic"
-- vim.g.gruvbox_baby_use_original_palette = 1
-- vim.g.gruvbox_baby_transparent_mode = 0
-- vim.cmd([[colorscheme gruvbox-baby]])
