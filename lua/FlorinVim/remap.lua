vim.g.mapleader = " "
vim.api.nvim_set_keymap("n", "<Leader>ls", ":LspStart<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set("n", "<leader>cl", vim.cmd.HighlightColorsOn)
vim.keymap.set("n", "<leader>q", vim.cmd.q)

vim.keymap.set("n", "<leader>wq", vim.cmd.wq)
vim.keymap.set("n", "<leader>lv", vim.cmd.LiveServerStart)
vim.keymap.set("n", "<leader>lq", vim.cmd.LiveServerStop)

vim.keymap.set("n", "gt", ":LazyGit<CR>")

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
-- exit terminal mode
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })

-- close terminal
vim.api.nvim_set_keymap("t", "<C-q>", "<C-\\><C-n>:q<CR>", { noremap = true, silent = true })


require 'toggleterm'.setup {
    shade_terminals = false
}
vim.keymap.set("n", "<leader>t", ":ToggleTerm<CR>", { noremap = true, silent = true })
--harpoon
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>m", mark.add_file)
vim.keymap.set("n", "<leader>e", ui.toggle_quick_menu)

vim.keymap.set("n", "<M-w>", function()
    ui.nav_file(1)
end)
vim.keymap.set("n", "<M-a>", function()
    ui.nav_file(2)
end)
vim.keymap.set("n", "<M-s>", function()
    ui.nav_file(3)
end)
vim.keymap.set("n", "<M-d>", function()
    ui.nav_file(4)
end)
vim.keymap.set("n", "<M-c>", function()
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

--move windows

-- Move to the window to the left
-- vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
-- Move to the window below
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
-- Move to the window above
-- vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
-- Move to the window to the right
-- vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<C-w>", ":split<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-e>", ":vsplit<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-q>", "<C-w>q", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-y>", "<C-w>+", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-z>", "<C-w>-", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-c>", "<C-w>>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-x>", "<C-w><", { noremap = true, silent = true })
