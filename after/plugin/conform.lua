require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua", lsp_format = "fallback" },
    rust = { "rustfmt" },
		cpp = {"clang-format"}
  },
})
