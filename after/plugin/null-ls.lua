local null_ls = require("null-ls")
-- local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local formatting = null_ls.builtins.formatting

null_ls.setup({
	debug = false,
	sources = {
		formatting.prettier,
		formatting.stylua,
		formatting.rustfmt,
		formatting.clang_format,
	},
})
