-- Bootstrap lazy.nvim, LazyVim, and your plugins
require("config.lazy")
require("config.uni")

-- # Autowrite for History Tracker
vim.api.nvim_create_autocmd({ "TextChanged", "TextChangedI" }, {
    pattern = "~/Uni/**/*",
    command = "silent! write",
})
