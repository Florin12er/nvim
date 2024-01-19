vim.g.mapleader = " "
vim.api.nvim_set_keymap("n", "<Leader>ls", ":LspStart<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set("n", "<leader>cl", vim.cmd.HighlightColorsOn)
vim.keymap.set("n", "<leader>q", vim.cmd.q)

vim.keymap.set("n", "<leader>wq", vim.cmd.wq)
vim.keymap.set("n", "<leader>lv", vim.cmd.LiveServerStart)

vim.keymap.set("n", "<leader>gt", vim.cmd.Git)

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

vim.keymap.set("n", "<leader>md", ":NvimTreeFindFileToggle<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set({ "n", "v" }, "<leader>d", [["_dd]])
vim.keymap.set("n", "<leader>so", function()
	vim.cmd("so")
end)

--telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>gg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fs", function()
	builtin.grep_string({ search = vim.fn.input("Find > ") })
end)

vim.keymap.set("n", "<leader>o", ":SymbolsOutline<CR>", { noremap = true, silent = true })

--terminal
local term_map = require("terminal.mappings")
vim.keymap.set({ "n", "x" }, "<leader>tc", term_map.operator_send, { expr = true })
vim.api.nvim_set_keymap("n", "<leader>t", [[:lua ToggleTerminal()<CR>]], { noremap = true, silent = true })
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

--harpoon
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>m", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<C-h>", function()
	ui.nav_file(1)
end)
vim.keymap.set("n", "<C-t>", function()
	ui.nav_file(2)
end)
vim.keymap.set("n", "<C-n>", function()
	ui.nav_file(3)
end)
vim.keymap.set("n", "<C-s>", function()
	ui.nav_file(4)
end)
vim.keymap.set("n", "<C-w>", function()
	ui.nav_file(5)
end)

--conform
local conform = require("conform")
vim.keymap.set({ "n", "v" }, "<leader>z", function()
	conform.format({
		async = false,
		timeout_ms = 500,
	})
end)

--px to rem

vim.keymap.set({ "n", "v" }, "<leader>px", ":PxToRemLine<CR>", { noremap = true, silent = true })
