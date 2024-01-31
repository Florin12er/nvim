local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
    {
        {
            "stevearc/conform.nvim",
            event = { "BufReadPre", "BufNewFile" },
        },
        "wbthomason/packer.nvim",
        "simrat39/symbols-outline.nvim",
        "mfussenegger/nvim-jdtls",
        { 'akinsho/toggleterm.nvim',     version = "*", config = true },
        "nvim-lua/plenary.nvim",
        {
            "folke/tokyonight.nvim",
            lazy = false,
            priority = 1000,
            opts = {},
        },
        "maxmellon/vim-jsx-pretty",
        "onsails/lspkind.nvim",
        {
            "barrett-ruth/live-server.nvim",
            build = "npm global add live-server",
            config = true,
        },
        { "rafamadriz/friendly-snippets" },
        {
            "nvim-telescope/telescope.nvim",
            tag = "0.1.5",
            dependencies = { "nvim-lua/plenary.nvim" },
        },
        {
            "nvim-lualine/lualine.nvim",
            dependencies = { "nvim-tree/nvim-web-devicons" },
        },
        {
            "jsongerber/nvim-px-to-rem",
            config = true,
        },
        { "kevinhwang91/nvim-ufo", dependencies = "kevinhwang91/promise-async" },
        {
            "Exafunction/codeium.vim",
        },
        "ThePrimeagen/vim-be-good",
        "nvim-lua/plenary.nvim",
        "brenoprata10/nvim-highlight-colors",
        "nvim-ts-autotag",
        "nvim-treesitter/nvim-treesitter",
        "windwp/nvim-ts-autotag",
        "ThePrimeagen/harpoon",
        "mbbill/undotree",
        {
            "kdheepak/lazygit.nvim",
            dependencies = {
                "nvim-lua/plenary.nvim",
            },
        },

        {
            "numToStr/Comment.nvim",
            opts = {
                -- add any options here
            },
            lazy = false,
        },
        {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "neovim/nvim-lspconfig",
        },
        { "hrsh7th/nvim-cmp",      "hrsh7th/cmp-nvim-lsp" },
        "nvim-tree/nvim-tree.lua",
        { "L3MON4D3/LuaSnip", dependencies = { "rafamadriz/friendly-snippets", "saadparwaiz1/cmp_luasnip" } },
        "nvim-tree/nvim-web-devicons",
        "wbthomason/packer.nvim",
        { "catppuccin/nvim",  name = "catppuccin",                                                          priority = 1000 },
        "maxmellon/vim-jsx-pretty",
        "onsails/lspkind.nvim",
        {
            "barrett-ruth/live-server.nvim",
            build = "npm global add live-server",
            config = true,
        },
        { "rafamadriz/friendly-snippets" },
        {
            "nvim-telescope/telescope.nvim",
            tag = "0.1.5",
            dependencies = { "nvim-lua/plenary.nvim" },
        },
        {
            "nvim-lualine/lualine.nvim",
            dependencies = { "nvim-tree/nvim-web-devicons" },
        },
        {
            "jsongerber/nvim-px-to-rem",
            config = true,
        },
        { "kevinhwang91/nvim-ufo",       dependencies = "kevinhwang91/promise-async" },
        {
            "Exafunction/codeium.vim",
            config = function()
                vim.keymap.set("i", "<C-g>", function()
                    return vim.fn["codeium#Accept"]()
                end, { expr = true, silent = true })
                vim.keymap.set("i", "<c-;>", function()
                    return vim.fn["codeium#CycleCompletions"](1)
                end, { expr = true, silent = true })
                vim.keymap.set("i", "<c-,>", function()
                    return vim.fn["codeium#CycleCompletions"](-1)
                end, { expr = true, silent = true })
                vim.keymap.set("i", "<c-x>", function()
                    return vim.fn["codeium#Clear"]()
                end, { expr = true, silent = true })
            end,
        },
        { "christoomey/vim-tmux-navigator", lazy = false },
        "ThePrimeagen/vim-be-good",
        "nvim-lua/plenary.nvim",
        "brenoprata10/nvim-highlight-colors",
        "nvim-ts-autotag",
        "nvim-treesitter/nvim-treesitter",
        "windwp/nvim-ts-autotag",
        "ThePrimeagen/harpoon",
        "mbbill/undotree",
        "tpope/vim-fugitive",
        "norcalli/nvim-colorizer.lua",
        {
            "numToStr/Comment.nvim",
            lazy = false,
        },
        {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "neovim/nvim-lspconfig",
        },
        "nvim-tree/nvim-tree.lua",
        "nvim-tree/nvim-web-devicons",
        {
            "rebelot/terminal.nvim",
            config = function()
                require("terminal").setup()
            end,
        },
    }

})
