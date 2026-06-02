vim.api.nvim_create_user_command("PackAdd", function(opts)
    vim.pack.add(opts.fargs)
end, { nargs = "+", desc = "Add plugin(s) - (:PackAdd user/repo)"})

vim.api.nvim_create_user_command("PackDel", function(opts)
    vim.pack.del(opts.fargs)
end, { nargs = "+", desc = "Delete plugin(s) - (:PackDel plug1 plug2)"})


vim.api.nvim_create_user_command("PackUpdate", function(opts)
    -- Check if anything passed in
    if opts.args:match("%S") then
        -- Updpate specific plugins
        local plugins = vim.split(opts.args, "%s+", { triempty = true })
        vim.pack.update(plugins)
    else
        -- Update all
        vim.pack.update()
    end
end, { nargs = "*", desc = "Update all plugins or specific ones" })

