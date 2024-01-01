require("colorizer").setup()

require("colorizer").setup({
	"css",
	"javascript",
	html = {
		mode = "foreground",
	},
})

require("colorizer").setup({
	"css",
	"javascript",
	html = { mode = "background" },
}, { mode = "foreground" })
require("colorizer").setup({
	"*",
	css = { rgb_fn = true },
	html = { names = true },
})

require("colorizer").setup({
	"*",
	"!vim",
})
require("nvim-highlight-colors").setup({
	render = "background", -- or 'foreground' or 'first_column'
	enable_named_colors = true,
	enable_tailwind = true,
	custom_colors = {
		{ label = "%-%-theme%-font%-color", color = "#fff" },
		{ label = "%-%-theme%-background%-color", color = "#23222f" },
		{ label = "%-%-theme%-primary%-color", color = "#0f1219" },
		{ label = "%-%-theme%-secondary%-color", color = "#5a5d64" },
		{ label = "%-%-theme%-contrast%-color", color = "#fff" },
		{ label = "%-%-theme%-accent%-color", color = "#55678e" },
	},
})
-- Default options:
require("gruvbox").setup({
	terminal_colors = true, -- add neovim terminal colors
	undercurl = true,
	underline = true,
	bold = true,
	italic = {
		strings = true,
		emphasis = true,
		comments = true,
		operators = false,
		folds = true,
	},
	strikethrough = true,
	invert_selection = false,
	invert_signs = false,
	invert_tabline = false,
	invert_intend_guides = false,
	inverse = true, -- invert background for search, diffs, statuslines and errors
	contrast = "", -- can be "hard", "soft" or empty string
	palette_overrides = {},
	overrides = {},
	dim_inactive = false,
	transparent_mode = false,
})
vim.cmd("colorscheme gruvbox")
