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
  --   "karb94/neoscroll.nvim",
  --   config = function()
  --     require("neoscroll").setup({})
  --   end,
  -- },

  {
    "echasnovski/mini.animate",
    event = "VeryLazy",
    cond = vim.g.neovide == nil,
    config = function()
      require("mini.animate").setup({
        open = { enable = false },
        close = { enable = false },
      })
    end,
  },
}
