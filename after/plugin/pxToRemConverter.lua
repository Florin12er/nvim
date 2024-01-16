require("nvim-px-to-rem").setup({
	root_font_size = 16,
	decimal_count = 4,
	show_virtual_text = true,
	add_cmp_source = true,
	disable_keymaps = false,
	filetypes = {
		"css",
		"scss",
		"sass",
	},
})
require("nvim-px-to-rem").setup({
	root_font_size = 16,
	decimal_count = 4,
	show_virtual_text = true,
	add_cmp_source = true,
	disable_keymaps = false,
	filetypes = {
		"css",
		"scss",
		"sass",
	},
})
vim.api.nvim_set_keymap("n", "<leader>cx", ":PxToRemLine<CR>", { noremap = true })
