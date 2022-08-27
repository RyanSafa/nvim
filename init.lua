require("ryansafa")
vim.cmd([[packadd packer.nvim]])
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap =
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
	vim.cmd([[packadd packer.nvim]])
end

require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	-- lsp and treesitter
	use("nvim-treesitter/nvim-treesitter")
	use("neovim/nvim-lspconfig")
	use("onsails/lspkind.nvim")
	use("JoosepAlviste/nvim-ts-context-commentstring")
	use("p00f/nvim-ts-rainbow")

	-- autcomplete
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")

	-- cmp additions
	use("windwp/nvim-ts-autotag")
	use("windwp/nvim-autopairs")
	use("L3MON4D3/LuaSnip")
	use("numToStr/Comment.nvim")

	-- fuzzy finder
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- status bar
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})

	-- git integration
	use({
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	})

	-- formatting and linting
	use({ "jose-elias-alvarez/null-ls.nvim", requires = { "nvim-lua/plenary.nvim" } })

	-- file explorer
	use({
		"kyazdani42/nvim-tree.lua",
		requires = {
			"kyazdani42/nvim-web-devicons", -- optional, for file icons
		},
	})

	-- colorschemes
	use({ "luisiacc/gruvbox-baby", branch = "main" })
	use({ "catppuccin/nvim", as = "catppuccin" })

	if packer_bootstrap then
		require("packer").sync()
	end
end)
