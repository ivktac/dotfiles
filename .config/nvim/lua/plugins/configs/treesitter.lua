return {
	ensure_installed = {
    "python",
    "bash",
		"lua",
		"rust",
		"gleam",
		"templ",
	},
	highlight = {
		enable = true,
		use_languagetree = true,
	},
	indent = { enable = true },
	autotag = {
		enable = true,
		enable_rename = true,
		enable_close = true,
		enable_close_on_slash = true,
		filetypes = { "html", "xml" },
	},
}