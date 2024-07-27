print("Hello from there")

-- This allow ass to execute the commands like in vim configuration
-- if needed any vim commands as a configuration just use vim.cmd("command")

-- Package manager will go here
-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)



-- Plugins instalation
local plugins = {
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", 
            "MunifTanjim/nui.nvim",
        }
    }

}

local opts = {}

-- Setup lazy.nvim
require("lazy").setup(plugins, opts)


-- Setup the telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-f>', builtin.find_files, {})
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- Set the treesiter for the project here
local configs = require("nvim-treesitter.configs")
configs.setup({
    ensure_installed = {"lua", "javascript"},
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },  
})

-- setup the neo tree configuration and keybindings
vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>')

-- Setup the theme we will use catppuccin
require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"


vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

-- require("config.lazy")
-- require("config.telescope")
