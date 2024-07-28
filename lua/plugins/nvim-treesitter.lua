return {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed = {"lua", "javascript"},
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },  
        })
    end
}

