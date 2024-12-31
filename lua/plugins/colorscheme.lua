return {
  {
    "rebelot/kanagawa.nvim",
    opts = {
      -- compile = true, -- Call :KanagawaCompile after any changes
      transparent = true,
      dimInactive = false,

      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none",
            },
          },
        },
      },
      overrides = function(colors)
        local theme = colors.theme
        return {
          -- Float windows
          NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none" },
          FloatTitle = { bg = "none" },
          NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },
          LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
          MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },

          -- Proper transparency
          Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- add `blend = vim.o.pumblend` to enable transparency
          PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
          PmenuSbar = { bg = theme.ui.bg_m1 },
          PmenuThumb = { bg = theme.ui.bg_p2 },
        }
      end,
    },
  },
  {
    "catppuccin",
    opts = {
      transparent_background = true,
    },
  },

  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
    },
  },

  { "rose-pine/neovim", name = "rose-pine", opts = { styles = { transparency = true } } },
  -- { "scottmckendry/cyberdream.nvim", lazy = false, priority = 1000 },
  -- { "nyoom-engineering/oxocarbon.nvim" },
  -- { "navarasu/onedark.nvim", name = "onedark" },

  -- {
  --   "vague2k/vague.nvim",
  --   config = function()
  --     require("vague").setup({
  --       -- optional configuration here
  --     })
  --   end,
  -- },

  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        buffer_close_icon = "󰅖",
      },
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
      -- colorscheme = "catppuccin-macchiato",
    },
  },
}
