vim.cmd([[
  command! OpenTerminal botright vertical terminal
]])
vim.api.nvim_exec(
	[[
  autocmd BufEnter * if &buftype == 'terminal' | startinsert | endif
]],
	false
)

require("terminal").setup({
	layout = { open_cmd = "botright new" },
	cmd = { vim.o.shell },
	autoclose = false,
})
local term_map = require("terminal.mappings")
vim.keymap.set({ "n", "x" }, "<leader>tc", term_map.operator_send, { expr = true })

function ToggleTerminal()
	if vim.bo.buftype == "terminal" then
		vim.cmd("q")
	else
		vim.cmd("botright vertical terminal")
	end
end

vim.api.nvim_set_keymap("n", "<leader>to", [[:lua ToggleTerminal()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>tn", ":botright vertical terminal<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>tO", term_map.toggle({ open_cmd = "enew" }))
vim.keymap.set("n", "<leader>tr", term_map.run)
vim.keymap.set("n", "<leader>tR", term_map.run(nil, { layout = { open_cmd = "enew" } }))
vim.keymap.set("n", "<leader>tk", term_map.kill)
vim.keymap.set("n", "<leader>tcn", term_map.cycle_next)
vim.keymap.set("n", "<leader>tcp", term_map.cycle_prev)
vim.keymap.set("n", "<leader>tl", term_map.move({ open_cmd = "belowright vnew" }))
vim.keymap.set("n", "<leader>tL", term_map.move({ open_cmd = "botright vnew" }))
vim.keymap.set("n", "<leader>th", term_map.move({ open_cmd = "belowright new" }))
vim.keymap.set("n", "<leader>tH", term_map.move({ open_cmd = "botright new" }))
vim.keymap.set("n", "<leader>tf", term_map.move({ open_cmd = "float" }))
