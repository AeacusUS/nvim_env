return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "lua", "python", "javascript", "java" },
      sync_install = false, -- install parsers asynchronously
      auto_install = true, -- automatically install missing parsers when entering buffer
      ignore_install = {}, -- no parsers to ignore
      modules = {}, -- reserved for module configs (leave empty)
      highlight = {
        enable = true,
      },
    })
  end,
}
