vim.api.nvim_create_autocmd({ "InsertLeave", "CursorHoldI", "TextChanged" }, {
    callback = function()
        local path = vim.fn.expand("%:p") -- full file path
        if path:find(vim.fn.expand("~/Uni/")) == 1 then -- match start of path
            if vim.bo.modified and vim.bo.modifiable and not vim.bo.readonly then
                vim.cmd("silent! write")
            end
        end
    end,
})
