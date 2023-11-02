require'nvim-treesitter.configs'.setup {
  ensure_installed = { "javascript", "typescript", "go", "java","html", "css", "json", "c", "lua", "vim", "vimdoc", "query" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}


vim.o.termguicolors = true
vim.o.background = "dark" 
vim.cmd([[colorscheme gruvbox]])


vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup()

