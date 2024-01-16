vim.opt.guicursor = ""

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.wo.number = true

vim.wo.relativenumber = true

vim.o.winfixheight = true

vim.cmd("set t_Co=256")
vim.o.compatible = false

vim.cmd("filetype plugin on")

vim.cmd("syntax on")
vim.cmd("set termguicolors")
vim.cmd([[autocmd VimEnter * LspStart<CR>]])
