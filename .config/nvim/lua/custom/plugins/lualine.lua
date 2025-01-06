return {
  "nvim-lualine/lualine.nvim",
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  event = { "UIEnter" },
  enabled = true,
  config = function()
    require("lualine").setup {}
  end,
}
