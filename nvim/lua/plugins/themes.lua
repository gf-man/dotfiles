return {
  "Mofiqul/adwaita.nvim",
  lazy = false,
  priority = 1000,

  config = function()
    vim.g.adwaita_transparent = true
    vim.g.adwaita_disable_cursorline = true
    vim.cmd("colorscheme adwaita")
  end,
}
