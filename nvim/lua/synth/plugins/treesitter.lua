return {
    'nvim-treesitter/nvim-treesitter',
    event = { 'BufReadPre', 'BufNewFile' },
    lazy = false,
    build = ':TSUpdate',
    dependencies = {
        "windwp/nvim-ts-autotag",
    },
    config = function()
        require('nvim-treesitter').setup {
            install_dir = vim.fn.stdpath('data') .. '/site',
            highlight = { enable = true },
            indent = { enable = true },
            autotag = { enable = true },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<C-space>",
                    node_incremental = "<C-space>",
                    scope_incremental = false,
                    node_decremental = "<bs>",
                },
            },
        }
        require('nvim-treesitter').install({ 
            'bash',
            'css',
            'html',
            'hyprlang',
            'javascript',
            'json',
            'lua'
        })
    end
}

