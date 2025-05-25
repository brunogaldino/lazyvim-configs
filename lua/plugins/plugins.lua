return {
  {
    "numToStr/Comment.nvim",
    opts = {},
    lazy = false,
  },

  {
    "rest-nvim/rest.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = true,
    cmd = { "RestNvim", "RestNvimPreview", "RestNvimLast" },
    config = function()
      require("rest-nvim").setup({})
    end,
  },

  -- {
  --   "stevearc/oil.nvim",
  --   opts = {},
  --   lazy = false,
  --   dependencies = { { "echasnovski/mini.icons", opts = {} } },
  --   config = function()
  --     require("oil").setup({
  --       view_options = {
  --         show_hidden = true,
  --       },
  --     })
  --   end,
  -- },
}
