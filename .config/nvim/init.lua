require("vim._core.ui2").enable({})
require("options")
require("keymaps")
require("commands")
require("packages")
require("lsp")
-- vim.cmd.colorscheme("<scheme>")
--
require("nvim-autopairs").setup({})
require("colorizer").setup({})
require("tree-sitter-manager").setup({})
require("mason").setup({})
require("conform").setup({
    format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
    },
    formatters_by_ft = {
        python = { "black" }
    }
})

require('gitsigns').setup({
    -- Inform gitsigns about bare repository
    worktrees = {
        {
            toplevel = vim.env.HOME,
            gitdir = vim.env.HOME .. '/.dotfiles'
        }
    }
})

require("fzf-lua").setup({})
