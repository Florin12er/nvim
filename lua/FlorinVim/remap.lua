vim.g.mapleader = " "


vim.api.nvim_set_keymap('n', 'ed', '$', { noremap = true, silent = true })


--this is a remap for the :w(save command)
vim.keymap.set("n", "<leader>w" , vim.cmd.w)

--this is a remap for the :q(quit command)

vim.keymap.set("n", "<leader>q" , vim.cmd.q) 

--this is a remap for the :qw(quit and save command)

vim.keymap.set("n", "<leader>wq" , vim.cmd.wq)

vim.wo.number = true 

vim.wo.relativenumber = true 

vim.cmd([[
  command! OpenTerminal botright vertical terminal
]])
vim.api.nvim_exec([[
  autocmd BufEnter * if &buftype == 'terminal' | startinsert | endif
]], false)

vim.o.winfixheight = true
vim.cmd [[packadd packer.nvim]]


local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>gg', builtin.find_files, {})
vim.keymap.set('n', '<leader>fs', function()
        builtin.grep_string({ search = vim.fn.input("Find > ") })
end)


local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n" , "<C-e>" , ui.toggle_quick_menu)

vim.keymap.set("n" , "<C-h>" , function() ui.nav_file(1) end)
vim.keymap.set("n" , "<C-t>" , function() ui.nav_file(2) end)
vim.keymap.set("n" , "<C-n>" , function() ui.nav_file(3) end)
vim.keymap.set("n" , "<C-s>" , function() ui.nav_file(4) end)


vim.keymap.set("n", "<leader>gt" , vim.cmd.Git)


vim.keymap.set("n" , "<leader>u", vim.cmd.UndotreeToggle)


vim.keymap.set("n", "<leader>md", ":NvimTreeFindFileToggle<CR>")



require("terminal").setup({
    layout = { open_cmd = "botright new" },
    cmd = { vim.o.shell },
    autoclose = false,
})
local term_map = require("terminal.mappings")
vim.keymap.set({ "n", "x" }, "<leader>ts", term_map.operator_send, { expr = true })


function ToggleTerminal()
  if vim.bo.buftype == 'terminal' then
    vim.cmd('q')
  else
    vim.cmd('botright vertical terminal')
  end
end

vim.api.nvim_set_keymap('n', '<leader>to', [[:lua ToggleTerminal()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tn', ':botright vertical terminal<CR>', { noremap = true, silent = true })
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
