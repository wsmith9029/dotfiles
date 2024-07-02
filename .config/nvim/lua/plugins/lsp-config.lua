return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "tsserver",
          "dockerls",
          "csharp_ls",
          "angularls",
          "cssls",
          "html",
          "jsonls",
          "jedi_language_server",
          "rust_analyzer",
          "sqlls",
          "yamlls",
        },
      })
      require("mason-lspconfig").setup_handlers({
        function(server_name)
          local capabilities = require('cmp_nvim_lsp').default_capabilities()
          require("lspconfig")[server_name].setup({
            capabilities = capabilities
          })
        end,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
