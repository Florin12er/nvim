vim.g.mapleader = " "

vim.api.nvim_set_keymap("n", "ed", "$", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>w", vim.cmd.w)

vim.keymap.set("n", "<leader>q", vim.cmd.q)

vim.keymap.set("n", "<leader>wq", vim.cmd.wq)

vim.wo.number = true

vim.wo.relativenumber = true

vim.o.winfixheight = true
vim.cmd([[packadd packer.nvim]])

vim.keymap.set("n", "<leader>gt", vim.cmd.Git)

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

vim.keymap.set("n", "<leader>md", ":NvimTreeFindFileToggle<CR>")

vim.opt.guicursor = ""

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.api.nvim_set_keymap("n", "<leader>as", ":ASToggle<CR>", {})

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
