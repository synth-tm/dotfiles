local c = require('vscode.colors').get_colors()

return {
    {
        "mofiqul/vscode.nvim",
        require('vscode').setup({
            priority = 1000,
            transparent = true,
            italic_comments = true,
            italic_inlayhints = true,
            underline_links = true,
            disable_nvimtree_bg = true,
            terminal_colors = true,
            color_overrides = {
                vscLineNumber = '#FFFFFF',
            },
            group_overrides = {
                Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold=true },
            }
        }),
        require('vscode').load('dark')
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
