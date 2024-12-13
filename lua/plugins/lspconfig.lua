return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        vtsls = {
          settings = {
            typescript = {
              updateImportsOnFileMove = { enabled = "always" },
              preferences = {
                importModuleSpecifier = "project-relative",
                importModuleSpecifierEnding = "minimal",
              },
            },
          },
          -- init_options = {
          --   preferences = {
          --     importModuleSpecifierPreference = "relative",
          --     importModuleSpecifierEnding = "minimal",
          --   },
          -- },
        },
      },
    },
  },
}
