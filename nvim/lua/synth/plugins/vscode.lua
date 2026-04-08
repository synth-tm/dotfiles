local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end
local function italic_comments()
    vim.api.nvim_set_hl(0, 'Comment', { italic=true })
end
local function underline_links()
    vim.api.nvim_set_hl(0, "@markup.link", { underline = true })
    vim.api.nvim_set_hl(0, "@markup.link.url", { underline = true })
end    
return {
    {
        "mofiqul/vscode.nvim",
        priority = 1000,
        config = function()
            require('vscode').setup({
                enable_transparency(),
                italic_comments(),
                underline_links(),
            })
        end
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        opts = {
            theme = 'vscode',
        },
    },
}
