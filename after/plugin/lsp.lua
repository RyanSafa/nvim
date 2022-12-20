local Remap = require("ryansafa.keymap")
local nnoremap = Remap.nnoremap

-- Setup Diagnostic Settings
local diagnostic_setup = function()
	local signs = {
		{ name = "DiagnosticSignError", text = "" },
		{ name = "DiagnosticSignWarn", text = "" },
		{ name = "DiagnosticSignHint", text = "" },
		{ name = "DiagnosticSignInfo", text = "" },
	}

	for _, sign in ipairs(signs) do
		vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
	end

	local config = {
		-- disable virtual text
		virtual_text = false,
		-- show signs
		signs = {
			active = signs,
		},
		update_in_insert = true,
		underline = true,
		severity_sort = true,
		float = {
			focusable = false,
			style = "minimal",
			border = "rounded",
			source = "always",
			header = "",
			prefix = "",
		},
	}

	vim.diagnostic.config(config)

	vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
		border = "rounded",
	})

	vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
		border = "rounded",
	})
end

diagnostic_setup()

local function config(_config)
	return vim.tbl_deep_extend("force", {
		capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities()),
		on_attach = function(client)
			if client.name == "tsserver" then
				client.server_capabilities.documentFormattingProvider = false
			elseif client.name == "sumneko_lua" then
				client.server_capabilities.documentFormattingProvider = false
			elseif client.name == "rust_analyzer" then
				client.resolved_capabilities.document_formatting = false
			end
			nnoremap("gd", function()
				vim.lsp.buf.definition()
			end, { buffer = 0 })
			nnoremap("K", function()
				vim.lsp.buf.hover()
			end, { buffer = 0 })
			nnoremap(
				"<leader>s",
				'<cmd>lua vim.diagnostic.open_float({ border = "rounded" })<CR>',
				{ silent = true, buffer = 0 }
			)
			nnoremap("<leader>df", function()
				vim.diagnostic.goto_next()
			end, { buffer = 0 })
			nnoremap("<leader>dp", function()
				vim.diagnostic.goto_prev()
			end, { buffer = 0 })
			nnoremap("<leader>ca", function()
				vim.lsp.buf.code_action()
			end, { buffer = 0 })
			nnoremap("<leader>vrr", function()
				vim.lsp.buf.references()
			end, { buffer = 0 })
			nnoremap("<leader>rn", function()
				vim.lsp.buf.rename()
			end, { buffer = 0 })
		end,
	}, _config or {})
end

local lspconfig = require("lspconfig")
lspconfig.tsserver.setup(config())
lspconfig.cssls.setup(config())
lspconfig.html.setup(config())
lspconfig.sumneko_lua.setup(config({
	settings = {
		Lua = {
			runtime = {
				-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
				version = "LuaJIT",
			},
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = { "vim" },
			},
			workspace = {
				-- Make the server aware of Neovim runtime files
				library = vim.api.nvim_get_runtime_file("", true),
			},
			-- Do not send telemetry data containing a randomized but unique identifier
			telemetry = {
				enable = false,
			},
		},
	},
}))
lspconfig.rust_analyzer.setup(config())
