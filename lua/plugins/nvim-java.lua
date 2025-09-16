-- plugins/java.lua
return {
    "nvim-java/nvim-java",
    ft = { "java" },
    keys = {
        {
            "<leader>ca",
            function()
                vim.lsp.buf.code_action()
            end,
            desc = "code_action()",
            mode = "n",
            buffer = true,
        },
    },
    config = function()
        -- 1. Setup nvim-java first
        require("java").setup()

        -- 2. Setup jdtls with lspconfig (now works like any other server)
        require("lspconfig").jdtls.setup({})
    end,
}
