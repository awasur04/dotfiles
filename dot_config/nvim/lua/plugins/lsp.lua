return (
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.diagnostic.config({
                virtual_text = true,
            })
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            vim.lsp.config("gopls", {
                cmd = {"gopls"},
                filetypes = {"go", "gomod"},
                capabilities = capabilities,
            })
            vim.lsp.enable("gopls")

            vim.lsp.config("html", {
                cmd = {"vscode-html-language-server", "--stdio"},
                filestypes = {"html", "tmpl"},
                capabilities = capabilities,
            })
            vim.lsp.enable("html")
        end,
    }
)
