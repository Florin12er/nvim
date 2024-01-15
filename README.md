# Neovim Configuration

Welcome to my Neovim configuration! This setup is tailored for enhanced productivity and an optimized coding experience. Below, you'll find details about the plugins, configurations, and key remappings I've implemented.

## Plugin Manager

I use `lazy.nvim` as my plugin manager, simplifying plugin management and maintaining a well-organized Neovim setup.

## Language Server Protocol (LSP) and Autocomplete

I've configured LSP for various languages using `mason`, `mason-lsp-config`, and `lspconfig`. Autocompletion is handled by `nvim-cmp` with the `cmp-snippy` engine.

I use `conform.nvim` for code formatting and `nvim-highlight-colors` for color highlighting in CSS, HTML, and Tailwind.

## File Navigation

For file navigation, I use `nvim-tree` and `nvim-telescope` for fuzzy finding. Additionally, `harpoon` simplifies navigation and manages persistent terminals.

## Code Highlighting and Color Scheme

I've chosen the `tokyonight` color scheme for a visually appealing coding environment.

## Additional Plugins

- **fugitive:** A premier Git plugin for Vim.
- **undotree:** Visualizes the undo history and allows easy navigation between different undo branches.
- **vim-be-good:** A game to improve Neovim skills.
- **nvim-lsp-ts-autotag:** Uses treesitter to autoclose and autorename HTML tags.
- **codeium:** An AI-powered autocompletion plugin, considered essential for an enhanced coding experience.
- **nvim-ufo:** A plugin for managing folds in Neovim. press zr to unfold and zm to fold.

## Key Remappings

```lua
vim.g.mapleader = " "
vim.cmd("set termguicolors")
vim.cmd([[autocmd VimEnter * LspStart]])
vim.api.nvim_set_keymap("n", "<leader>ls", ":LspStart<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("x", "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "J", "mzJ`z", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "n", "nzzzv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "N", "Nzzzv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>p", ":_dP", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>x", ":!chmod +x %<CR>", { noremap = true, silent = true })
<leader>: Sets the leader key to a space.
set termguicolors: Enables true color support.
autocmd VimEnter * LspStart: Automatically starts the Language Server Protocol (LSP) on Vim startup.
<leader>ls: Maps <leader>ls to start the LSP, providing a quick way to initialize language servers.
xnoremap J: In visual mode, moves the selected lines down by one.
xnoremap K: In visual mode, moves the selected lines up by one.
`nnoremap J mzJz``: In normal mode, joins the current line with the line below and repositions the cursor at the start of the joined line.
nnoremap <C-d>: In normal mode, scrolls down by half a screen and centers the cursor line.
nnoremap <C-u>: In normal mode, scrolls up by half a screen and centers the cursor line.
nnoremap n: In normal mode, moves to the next search result and centers the cursor line.
nnoremap N: In normal mode, moves to the previous search result and centers the cursor line.
nnoremap <leader>p: Maps <leader>p to paste from the default register and...


##How to Set Up This Neovim Configuration


1. **Install Neovim**:
Make sure you have Neovim installed on your system. You can find installation instructions on the official Neovim website.

2. **Clone this Repository**:
git clone git@github.com:Florin12er/my-neovim-setup.git ~/.config/nvim
Replace your-username with your GitHub username or the appropriate URL for your repository.

## Enjoy!:
Start Neovim, and Lazy.nvim will automatically install the configured plugins.

## Set up Language Servers:
Depending on the languages you work with, you may need to install language servers and configure them. Refer to the documentation of mason, mason-lsp-config, and lspconfig for more information.

## Customize Further (Optional):
Feel free to explore and customize the configuration according to your preferences.
If you encounter any issues or have questions, don't hesitate to open an issue on this repository.
