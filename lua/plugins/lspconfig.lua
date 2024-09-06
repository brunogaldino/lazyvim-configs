return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        vtsls = {
          settings = {
            typescript = {
              preferences = {
                importModuleSpecifier = "relative",
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
