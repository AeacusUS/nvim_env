-- Bootstrap lazy.nvim, LazyVim, and your plugins
require("config.debloat")
require("config.lazy")

if vim.env.PERSONAL == 1 then
    require("env.personal")
elseif vim.env.CSEL == 1 then
    require("env.uni")
end

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.autoindent = true

vim.api.nvim_create_autocmd("BufNewFile", {
    pattern = "*.java",
    callback = function(args)
        local file = args.file
        if not file:match(vim.fn.expand("$HOME/Uni/")) then
            vim.cmd("0r !~/.config/nvim/templates/java-boilerplate.sh " .. file)
        else
            vim.cmd("0r !~/.config/nvim/templates/uni-java-boilerplate.sh " .. file)
        end
    end,
})
