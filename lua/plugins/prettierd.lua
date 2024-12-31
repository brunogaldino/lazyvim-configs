local prettierd_supported_langs = {
  "javascript",
  "javascriptreact",
  "typescript",
  "typescriptreact",
  "vue",
  "css",
  "scss",
  "less",
  "html",
  "json",
  "jsonc",
  "yaml",
  "markdown",
  "markdown.mdx",
  "graphql",
  "handlebars",
}

return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "prettierd")
    end,
  },

  {
    "nvimtools/none-ls.nvim",
    optional = true,
    opts = function(_, opts)
      local nls = require("null-ls")
      opts.sources = opts.sources or {}
      table.insert(opts.sources, nls.builtins.formatting.prettierd)
    end,
  },

  {
    "stevearc/conform.nvim",
    optional = true,

    opts = function(_, opts)
      opts.formatters_by_ft = opts.formatters_by_ft or {}
      for _, ft in ipairs(prettierd_supported_langs) do
        opts.formatters_by_ft[ft] = opts.formatters_by_ft[ft] or {}
        table.insert(opts.formatters_by_ft[ft], "prettierd")
      end

      -- opts.formatters = opts.formatters or {}
      -- opts.formatters.prettier = {
      --   condition = function(_, ctx)
      --     return M.has_parser(ctx) and (vim.g.lazyvim_prettier_needs_config ~= true or M.has_config(ctx))
      --   end,
      -- }
    end,
    -- opts = {
    --   formatters_by_ft = {
    --     ["javascript"] = { "prettierd" },
    --     ["javascriptreact"] = { "prettierd" },
    --     ["typescript"] = { "prettierd" },
    --     ["typescriptreact"] = { "prettierd" },
    --     ["vue"] = { "prettierd" },
    --     ["css"] = { "prettierd" },
    --     ["scss"] = { "prettierd" },
    --     ["less"] = { "prettierd" },
    --     ["html"] = { "prettierd" },
    --     ["json"] = { "prettierd" },
    --     ["jsonc"] = { "prettierd" },
    --     ["yaml"] = { "prettierd" },
    --     ["markdown"] = { "prettierd" },
    --     ["markdown.mdx"] = { "prettierd" },
    --     ["graphql"] = { "prettierd" },
    --     ["handlebars"] = { "prettierd" },
    --   },
    -- },
  },
}
