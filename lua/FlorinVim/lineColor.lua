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
vim.cmd([[colorscheme tokyonight]])
require("tokyonight").setup({
	style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
	light_style = "day", -- The theme is used when the background is set to light
	transparent = false, -- Enable this to disable setting the background color
	terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
	styles = {
		comments = { italic = true },
		keywords = { italic = true },
		functions = {},
		variables = {},
		sidebars = "dark", -- style for sidebars, see below
		floats = "dark", -- style for floating windows
	},
	sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
	day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
	hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
	dim_inactive = false, -- dims inactive windows
	lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold
	---@param colors ColorScheme
	on_colors = function(colors) end,
	---@param highlights Highlights
	---@param colors ColorScheme
	on_highlights = function(highlights, colors) end,
})
