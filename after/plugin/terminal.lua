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
function ToggleTerminal()
	if vim.bo.buftype == "terminal" then
		vim.cmd("q")
	else
		vim.cmd("botright vertical terminal")
	end
end
