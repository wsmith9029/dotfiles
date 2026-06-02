vim.o.autocomplete = true

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(ev)
        local client = assert(vim.lsp.get_client_by_id(ev.data.client_id))
        if client:supports_method('textDocument/completion') then
            vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
        end
    end,
})

vim.opt.complete:append('o')
vim.opt.completeopt = { 'menuone', 'noinsert', 'noselect', 'fuzzy' }

vim.o.pumheight = 5

vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            diagnostics = { globals = { "vim", "hl" } },
            workspace = {
                library = {
                    vim.env.VIMRUNTIME,
                    "/usr/share/hypr/stubs"
                },
                checkThirdParty = false
            }
        }
    }
})

vim.lsp.config("qml-language-server", {
    cmd = { "qml-language-server" },
    filetypes = { "qml" },
    root_markers = { { "qmldir", "shell.qml" }, ".git" },
})


vim.lsp.enable({ 'clangd', 'lua_ls', 'pyright', 'jsonls', 'cssls', 'qml-language-server' })
