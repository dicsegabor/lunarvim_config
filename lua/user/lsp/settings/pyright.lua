local opts = {
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "off",
      },
    },
  },
}

require("lvim.lsp.manager").setup("pyright", opts)
