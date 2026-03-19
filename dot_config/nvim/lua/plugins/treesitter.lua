return (
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "master",
        lazy = "false",
        event = { "BufReadPost", "BufNewFile" },
        build = ":TSUpdate",
        config = function()
            local config = require("nvim-treesitter.configs")
            config.setup({
                ensure_installed = {"lua", "javascript", "typescript", "cpp", "vim", "html", "css", "c"},
                highlight = { enable = true },
                indent = { enable = true }
            })
        end
    }
)
