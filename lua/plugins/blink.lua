return {
  "saghen/blink.cmp",
  dependencies = { "onsails/lspkind.nvim" },
  opts = {
    completion = {
      menu = {
        winhighlight = "Normal:None,FloatBorder:None,CursorLine:CursorLine,Search:None",
        border = "rounded",
        draw = {
          treesitter = { "lsp" },
          columns = {
            { "label", gap = 1 },
            { "kind_icon", "kind" },
          },
          components = {
            kind_icon = {
              text = function(item)
                local kind = require("lspkind").symbol_map[item.kind] or ""
                return kind .. " "
              end,
            },
            label = {
              text = function(item)
                return item.label
              end,
            },
            kind = {
              text = function(item)
                return item.kind
              end,
            },
          },
        },
      },
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 250,
        treesitter_highlighting = true,
        window = {
          border = "rounded",
          winhighlight = "Normal:None,FloatBorder:None,EndOfBuffer:BlinkCmpDoc,NormalFloat:None",
        },
      },
    },
    appearance = {
      use_nvim_cmp_as_default = false,
      nerd_font_variant = "mono",
    },
    fuzzy = { implementation = "prefer_rust_with_warning" },
  },
}
