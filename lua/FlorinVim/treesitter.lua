require("nvim-treesitter.configs").setup({
	sync_install = false,
	ensure_installed = { "tsx", "lua", "json", "css", "html", "javascript", "typescript" },
	auto_install = true,
	autotag = {
		enable = true,
	},
	indent = {
		enable = true,
	},
	highlight = {
		enable = true,
	},
})

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
require("nvim-tree").setup({
	sort = {
		sorter = "case_sensitive",
	},
	view = {
		width = 30,
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
	},
})
require("ufo").setup({
	provider_selector = function(bufnr, filetype, buftype)
		return { "treesitter", "indent" }
	end,
})
