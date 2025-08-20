-- Bootstrap lazy.nvim, LazyVim, and your plugins
require("config.lazy")

-- Vimtex configuration
vim.cmd([[
  filetype plugin indent on
  syntax enable
]])

vim.g.vimtex_view_method = "zathura"

-- If you prefer to use Okular instead of Zathura, uncomment the following lines:
-- vim.g.vimtex_view_method = 'general'
-- vim.g.vimtex_view_general_viewer = 'okular'
-- vim.g.vimtex_view_general_options = '--unique file:@pdf#src:@line@tex'

vim.g.vimtex_compiler_method = "latexrun"

-- # Autowrite for History Tracker
vim.api.nvim_create_autocmd({ "TextChanged", "TextChangedI" }, {
  pattern = "~/Uni/**/*",
  command = "silent! write",
})
