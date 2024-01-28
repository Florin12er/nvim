-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', { 'nvim-0.5' }) ~= 1 then
    vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
    return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()
    _G._packer = _G._packer or {}
    _G._packer.inside_compile = true

    local time
    local profile_info
    local should_profile = false
    if should_profile then
        local hrtime = vim.loop.hrtime
        profile_info = {}
        time = function(chunk, start)
            if start then
                profile_info[chunk] = hrtime()
            else
                profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
            end
        end
    else
        time = function(chunk, start) end
    end

    local function save_profiles(threshold)
        local sorted_times = {}
        for chunk_name, time_taken in pairs(profile_info) do
            sorted_times[#sorted_times + 1] = { chunk_name, time_taken }
        end
        table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
        local results = {}
        for i, elem in ipairs(sorted_times) do
            if not threshold or threshold and elem[2] > threshold then
                results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
            end
        end
        if threshold then
            table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
        end

        _G._packer.profile_output = results
    end

    time([[Luarocks path setup]], true)
    local package_path_str =
    "/home/sebastian/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/sebastian/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/sebastian/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/sebastian/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
    local install_cpath_pattern = "/home/sebastian/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
    if not string.find(package.path, package_path_str, 1, true) then
        package.path = package.path .. ';' .. package_path_str
    end

    if not string.find(package.cpath, install_cpath_pattern, 1, true) then
        package.cpath = package.cpath .. ';' .. install_cpath_pattern
    end

    time([[Luarocks path setup]], false)
    time([[try_loadstring definition]], true)
    local function try_loadstring(s, component, name)
        local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
        if not success then
            vim.schedule(function()
                vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result,
                    vim.log.levels.ERROR, {})
            end)
        end
        return result
    end

    time([[try_loadstring definition]], false)
    time([[Defining packer_plugins]], true)
    _G.packer_plugins = {
        LuaSnip = {
            loaded = true,
            path = "/home/sebastian/.local/share/nvim/site/pack/packer/start/LuaSnip",
            url = "https://github.com/L3MON4D3/LuaSnip"
        },
        ["cmp-nvim-lsp"] = {
            loaded = true,
            path = "/home/sebastian/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
            url = "https://github.com/hrsh7th/cmp-nvim-lsp"
        },
        cmp_luasnip = {
            loaded = true,
            path = "/home/sebastian/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
            url = "https://github.com/saadparwaiz1/cmp_luasnip"
        },
        ["conform.nvim"] = {
            config = { "\27LJ\2\2O\0\1\4\0\6\0\t6\1\0\0'\2\1\0B\1\2\0029\1\2\0015\2\4\0009\3\3\0=\3\5\2B\1\2\1K\0\1\0\nbufnr\1\0\0\bbuf\vformat\fconform\frequire<\0\0\2\1\2\0\5-\0\0\0009\0\0\0005\1\1\0B\0\2\1K\0\1\0\0À\1\0\2\15timeout_ms\3ô\3\nasync\1\vformat˜\5\1\0\a\0,\00146\0\0\0'\1\1\0B\0\2\0029\1\2\0005\2\28\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0=\4\15\0035\4\16\0=\4\17\0035\4\18\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\3=\3\29\0025\3\30\0=\3\31\0026\3 \0009\3!\0039\3\"\3'\4#\0005\5$\0003\6%\0=\6&\5B\3\3\0?\3\0\0B\1\2\0016\1 \0009\1'\0019\1(\0015\2)\0'\3*\0003\4+\0B\1\4\0012\0\0€K\0\1\0\0\14<leader>z\1\3\0\0\6n\6v\bset\vkeymap\rcallback\0\1\0\1\fpattern\6*\16BufWritePre\24nvim_create_autocmd\bapi\bvim\19format_on_save\1\0\3\nasync\1\17lsp_fallback\2\15timeout_ms\3ô\3\21formatters_by_ft\1\0\0\fphython\1\2\0\0\npyink\vgolang\1\2\0\0\fgolines\blua\1\2\0\0\vstylua\fgraphql\1\2\0\0\rprettier\tjson\1\2\0\0\rprettier\thtml\1\2\0\0\rprettier\bcss\1\2\0\0\rprettier\vsvelte\1\2\0\0\rprettier\20typescriptreact\1\2\0\0\rprettier\20javascriptreact\1\2\0\0\rprettier\15typescript\1\2\0\0\rprettier\15javascript\1\0\0\1\2\0\0\rprettier\nsetup\fconform\frequire\3€€À™\4\0" },
            loaded = false,
            needs_bufread = false,
            only_cond = false,
            path = "/home/sebastian/.local/share/nvim/site/pack/packer/opt/conform.nvim",
            url = "https://github.com/stevearc/conform.nvim"
        },
        ["custom-elements-language-server"] = {
            loaded = true,
            path = "/home/sebastian/.local/share/nvim/site/pack/packer/start/custom-elements-language-server",
            url = "https://github.com/Matsuuu/custom-elements-language-server"
        },
        ["efmls-configs-nvim"] = {
            loaded = true,
            path = "/home/sebastian/.local/share/nvim/site/pack/packer/start/efmls-configs-nvim",
            url = "https://github.com/creativenull/efmls-configs-nvim"
        },
        ["friendly-snippets"] = {
            loaded = true,
            path = "/home/sebastian/.local/share/nvim/site/pack/packer/start/friendly-snippets",
            url = "https://github.com/rafamadriz/friendly-snippets"
        },
        ["gruvbox.nvim"] = {
            loaded = true,
            path = "/home/sebastian/.local/share/nvim/site/pack/packer/start/gruvbox.nvim",
            url = "https://github.com/ellisonleao/gruvbox.nvim"
        },
        harpoon = {
            loaded = true,
            path = "/home/sebastian/.local/share/nvim/site/pack/packer/start/harpoon",
            url = "https://github.com/ThePrimeagen/harpoon"
        },
        ["live-server.nvim"] = {
            commands = { "LiveServer", "LiveServerStart", "LiveServerStop" },
            loaded = false,
            needs_bufread = false,
            only_cond = false,
            path = "/home/sebastian/.local/share/nvim/site/pack/packer/opt/live-server.nvim",
            url = "https://github.com/aurum77/live-server.nvim"
        },
        ["lualine.nvim"] = {
            loaded = true,
            path = "/home/sebastian/.local/share/nvim/site/pack/packer/start/lualine.nvim",
            url = "https://github.com/nvim-lualine/lualine.nvim"
        },
        ["mason-lspconfig.nvim"] = {
            loaded = true,
            path = "/home/sebastian/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
            url = "https://github.com/williamboman/mason-lspconfig.nvim"
        },
        ["mason.nvim"] = {
            loaded = true,
            path = "/home/sebastian/.local/share/nvim/site/pack/packer/start/mason.nvim",
            url = "https://github.com/williamboman/mason.nvim"
        },
        ["nvim-cmp"] = {
            loaded = true,
            path = "/home/sebastian/.local/share/nvim/site/pack/packer/start/nvim-cmp",
            url = "https://github.com/hrsh7th/nvim-cmp"
        },
        ["nvim-colorizer.lua"] = {
            loaded = true,
            path = "/home/sebastian/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
            url = "https://github.com/norcalli/nvim-colorizer.lua"
        },
        ["nvim-highlight-colors"] = {
            loaded = true,
            path = "/home/sebastian/.local/share/nvim/site/pack/packer/start/nvim-highlight-colors",
            url = "https://github.com/brenoprata10/nvim-highlight-colors"
        },
        ["nvim-lspconfig"] = {
            loaded = true,
            path = "/home/sebastian/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
            url = "https://github.com/neovim/nvim-lspconfig"
        },
        ["nvim-px-to-rem"] = {
            config = { "\27LJ\2\2<\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19nvim-px-to-rem\frequire\0" },
            loaded = true,
            path = "/home/sebastian/.local/share/nvim/site/pack/packer/start/nvim-px-to-rem",
            url = "https://github.com/jsongerber/nvim-px-to-rem"
        },
        ["nvim-tree.lua"] = {
            loaded = true,
            path = "/home/sebastian/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
            url = "https://github.com/nvim-tree/nvim-tree.lua"
        },
        ["nvim-treesitter"] = {
            loaded = true,
            path = "/home/sebastian/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
            url = "https://github.com/nvim-treesitter/nvim-treesitter"
        },
        ["nvim-web-devicons"] = {
            loaded = false,
            needs_bufread = false,
            path = "/home/sebastian/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons",
            url = "https://github.com/nvim-tree/nvim-web-devicons"
        },
        ["packer.nvim"] = {
            loaded = true,
            path = "/home/sebastian/.local/share/nvim/site/pack/packer/start/packer.nvim",
            url = "https://github.com/wbthomason/packer.nvim"
        },
        ["plenary.nvim"] = {
            loaded = true,
            path = "/home/sebastian/.local/share/nvim/site/pack/packer/start/plenary.nvim",
            url = "https://github.com/nvim-lua/plenary.nvim"
        },
        ["tabnine-nvim"] = {
            loaded = true,
            path = "/home/sebastian/.local/share/nvim/site/pack/packer/start/tabnine-nvim",
            url = "https://github.com/codota/tabnine-nvim"
        },
        ["telescope.nvim"] = {
            loaded = true,
            path = "/home/sebastian/.local/share/nvim/site/pack/packer/start/telescope.nvim",
            url = "https://github.com/nvim-telescope/telescope.nvim"
        },
        ["terminal.nvim"] = {
            config = { "\27LJ\2\0026\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rterminal\frequire\0" },
            loaded = true,
            path = "/home/sebastian/.local/share/nvim/site/pack/packer/start/terminal.nvim",
            url = "https://github.com/rebelot/terminal.nvim"
        },
        ["typescript-vim"] = {
            loaded = true,
            path = "/home/sebastian/.local/share/nvim/site/pack/packer/start/typescript-vim",
            url = "https://github.com/leafgarland/typescript-vim"
        },
        undotree = {
            loaded = true,
            path = "/home/sebastian/.local/share/nvim/site/pack/packer/start/undotree",
            url = "https://github.com/mbbill/undotree"
        },
        ["vim-be-good"] = {
            loaded = true,
            path = "/home/sebastian/.local/share/nvim/site/pack/packer/start/vim-be-good",
            url = "https://github.com/ThePrimeagen/vim-be-good"
        },
        ["vim-closetag"] = {
            loaded = true,
            path = "/home/sebastian/.local/share/nvim/site/pack/packer/start/vim-closetag",
            url = "https://github.com/alvan/vim-closetag"
        },
        ["vim-fugitive"] = {
            loaded = true,
            path = "/home/sebastian/.local/share/nvim/site/pack/packer/start/vim-fugitive",
            url = "https://github.com/tpope/vim-fugitive"
        },
        ["vim-jsx-typescript"] = {
            loaded = true,
            path = "/home/sebastian/.local/share/nvim/site/pack/packer/start/vim-jsx-typescript",
            url = "https://github.com/peitalin/vim-jsx-typescript"
        }
    }

    time([[Defining packer_plugins]], false)
    -- Config for: nvim-px-to-rem
    time([[Config for nvim-px-to-rem]], true)
    try_loadstring(
    "\27LJ\2\2<\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19nvim-px-to-rem\frequire\0", "config",
        "nvim-px-to-rem")
    time([[Config for nvim-px-to-rem]], false)
    -- Config for: terminal.nvim
    time([[Config for terminal.nvim]], true)
    try_loadstring(
    "\27LJ\2\0026\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rterminal\frequire\0", "config",
        "terminal.nvim")
    time([[Config for terminal.nvim]], false)

    -- Command lazy-loads
    time([[Defining lazy-load commands]], true)
    pcall(vim.api.nvim_create_user_command, 'LiveServerStop', function(cmdargs)
            require('packer.load')({ 'live-server.nvim' },
                { cmd = 'LiveServerStop', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs
                .args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {
            nargs = '*',
            range = true,
            bang = true,
            complete = function()
                require('packer.load')({ 'live-server.nvim' }, {}, _G.packer_plugins)
                return vim.fn.getcompletion('LiveServerStop ', 'cmdline')
            end
        })
    pcall(vim.api.nvim_create_user_command, 'LiveServerStart', function(cmdargs)
            require('packer.load')({ 'live-server.nvim' },
                { cmd = 'LiveServerStart', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs
                .args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {
            nargs = '*',
            range = true,
            bang = true,
            complete = function()
                require('packer.load')({ 'live-server.nvim' }, {}, _G.packer_plugins)
                return vim.fn.getcompletion('LiveServerStart ', 'cmdline')
            end
        })
    pcall(vim.api.nvim_create_user_command, 'LiveServer', function(cmdargs)
            require('packer.load')({ 'live-server.nvim' },
                { cmd = 'LiveServer', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods =
                cmdargs.mods }, _G.packer_plugins)
        end,
        {
            nargs = '*',
            range = true,
            bang = true,
            complete = function()
                require('packer.load')({ 'live-server.nvim' }, {}, _G.packer_plugins)
                return vim.fn.getcompletion('LiveServer ', 'cmdline')
            end
        })
    time([[Defining lazy-load commands]], false)

    vim.cmd [[augroup packer_load_aucmds]]
    vim.cmd [[au!]]
    -- Event lazy-loads
    time([[Defining lazy-load event autocommands]], true)
    vim.cmd [[au BufReadPre * ++once lua require("packer.load")({'conform.nvim'}, { event = "BufReadPre *" }, _G.packer_plugins)]]
    vim.cmd [[au BufNewFile * ++once lua require("packer.load")({'conform.nvim'}, { event = "BufNewFile *" }, _G.packer_plugins)]]
    time([[Defining lazy-load event autocommands]], false)
    vim.cmd("augroup END")

    _G._packer.inside_compile = false
    if _G._packer.needs_bufread == true then
        vim.cmd("doautocmd BufRead")
    end
    _G._packer.needs_bufread = false

    if should_profile then save_profiles() end
end)

if not no_errors then
    error_msg = error_msg:gsub('"', '\\"')
    vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: ' ..
    error_msg .. '" | echom "Please check your config for correctness" | echohl None')
end
