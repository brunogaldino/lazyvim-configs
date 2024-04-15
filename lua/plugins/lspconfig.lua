return {
  "neovim/nvim-lspconfig",
  opts = {
    server = {
      tsserver = {
        init_options = {
          preferences = {
            importModuleSpecifierPreference = "relative",
            importModuleSpecificEnding = "minimal",
          },
        },
      },
    },
  },
}
