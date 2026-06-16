return {
    "williamboman/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
            "jsonls",
            "hyprls",
            "cssls",
            "bashls",
            "marksman",
            "lua_ls",
            "clojure_lsp",
            "elixirls",
        },
    },
    dependencies = {
        {
            "mason-org/mason.nvim",
            opts = {
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    },
                },
            },
        },
        {
            "neovim/nvim-lspconfig"
        },
    },
}
