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
require("onedark").setup({
	style = "warmer", -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
	transparent = false, -- Show/hide background
	term_colors = true, -- Change terminal color as per the selected theme style
	ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
	cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
	toggle_style_key = "<leader>ts", -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
	toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" }, -- List of styles to toggle between
	code_style = {
		comments = "italic",
		keywords = "none",
		functions = "none",
		strings = "none",
		variables = "none",
	},
	lualine = {
		transparent = false, -- lualine center bar transparency
	},
	colors = {}, -- Override default colors
	highlights = {}, -- Override highlight groups
	diagnostics = {
		darker = true, -- darker colors for diagnostic
		undercurl = true, -- use undercurl instead of underline for diagnostics
		background = true, -- use background color for virtual text
	},
})
