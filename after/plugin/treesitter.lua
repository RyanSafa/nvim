local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup({
	ensure_installed = "all",
	sync_installed = false,
	ignore_install = { "phpdoc", "jsdoc", "comment" },
	highlight = {
		enable = true,
		disable = { "" },
		additional_vim_regex_highlighting = false,
	},
	autotag = {
		enable = true,
	},
	rainbow = {
		enable = true,
		extended_mode = true,
		max_file_lines = 1000,
	},
	context_commentstring = {
		enabel = true,
		enable_autocmd = false,
		javascript = {
			__default = "// %s",
			jsx_element = "{/* %s */}",
			jsx_fragment = "{/* %s */}",
			jsx_attribute = "// %s",
			comment = "// %s",
			__parent = {
				-- if a node has this as the parent, use the `//` commentstring
				jsx_expression = "// %s",
			},
		},
	},
})
