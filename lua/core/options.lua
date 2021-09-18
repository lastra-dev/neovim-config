local o = vim.opt

-- Appearance
o.colorcolumn = '80'
o.cursorline = true
o.relativenumber = true
o.showmode = false
o.signcolumn = 'yes'
o.termguicolors = true
o.wrap = false
o.ruler = false
o.guicursor = ''

-- Backups
o.backup = false
o.swapfile = false

-- Completion
o.completeopt = 'menuone,noselect'
o.pumheight = 8


-- General
o.clipboard = 'unnamedplus'
o.hidden = true
o.scrolloff = 8
o.sidescrolloff = 8
o.updatetime = 100
o.incsearch = true
o.errorbells = false
o.hlsearch = false
o.nu = true
o.undofile = true

-- Tabs
o.expandtab = true
o.softtabstop = 2
o.tabstop = 2
o.smartindent = true
o.autoindent = true

-- Shortmess
o.shortmess = o.shortmess + {
  c = true
}

-- Fzf settings
-- vim.g.fzf_action = {
    -- \ 'ctrl-t': 'tab split',
    -- \ 'ctrl-s': 'split',
    -- \ 'ctrl-v': 'vsplit'
-- \}


-- Testing
vim.g['test#strategy'] = 'neovim'
vim.g['test#neovim#term_position'] = 'below 13'

-- Auto Dart Format
vim.g.dart_format_on_save = 1

-- Snippets flutter
vim.api.nvim_command([[
    autocmd BufRead,BufNewFile,BufEnter *.dart UltiSnipsAddFiletypes dart-flutter
]])

-- Python venv
vim.g.python3_host_prog = '~/.local/venv/nvim/bin/python'

-- Disable bloated programs in nvim
local disabled_built_ins = {
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "gzip",
    "zip",
    "zipPlugin",
    "tar",
    "tarPlugin",
    "getscript",
    "getscriptPlugin",
    "vimball",
    "vimballPlugin",
    "2html_plugin",
    "logipat",
    "rrhelper",
    "spellfile_plugin",
    "matchit"
}

for _, plugin in pairs(disabled_built_ins) do
    vim.g["loaded_" .. plugin] = 1
end
