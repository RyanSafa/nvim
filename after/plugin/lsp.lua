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
			elseif client.name == "lua_ls" then
				local path = client.workspace_folders[1].name
				if not vim.loop.fs_stat(path .. "/.luarc.json") and not vim.loop.fs_stat(path .. "/.luarc.jsonc") then
					client.config.settings = vim.tbl_deep_extend("force", client.config.settings, {
						Lua = {
							runtime = {
								version = "LuaJIT",
							},
							-- Make the server aware of Neovim runtime files
							workspace = {
								checkThirdParty = false,
								library = {
									vim.env.VIMRUNTIME,
								},
							},
						},
					})
				end
				client.notify("workspace/didChangeConfiguration", { settings = client.config.settings })
				client.server_capabilities.documentFormattingProvider = false
			elseif client.name == "rust_analyzer" then
				client.server_capabilities.document_formatting = false
			elseif client.name == "clangd" then
				client.server_capabilities.documentFormattingProvider = false
			elseif client.name == "pyright" then
				client.server_capabilities.documentFormattingProvider = false
			end
			nnoremap("gd", function() -- go to definition
				vim.lsp.buf.definition()
			end, { buffer = 0 })
			nnoremap("vd", function()  -- vertical split, then go to definition
				vim.cmd([[vsplit]])
				vim.lsp.buf.definition()
			end, {buffer = 0 })
			nnoremap("K", function() -- type definition hover
				vim.lsp.buf.hover()
			end, { buffer = 0 })
			nnoremap(
				"<leader>s", -- diagnostic hover
				'<cmd>lua vim.diagnostic.open_float({ border = "rounded" })<CR>',
				{ silent = true, buffer = 0 }
			)
			nnoremap("<leader>df", function() -- go to next diagnostic error
				vim.diagnostic.goto_next()
			end, { buffer = 0 })
			nnoremap("<leader>dp", function() -- go to previous diagnostic error
				vim.diagnostic.goto_prev()
			end, { buffer = 0 })
			nnoremap("<leader>ca", function() 
				vim.lsp.buf.code_action()
			end, { buffer = 0 })
			nnoremap("<leader>re", function()
				vim.lsp.buf.references()
			end, { buffer = 0 })
			nnoremap("<leader>fd", function()
				vim.lsp.buf.format()
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
lspconfig.pyright.setup(config())
lspconfig.lua_ls.setup(config())
lspconfig.rust_analyzer.setup(config())
lspconfig.clangd.setup(config())
