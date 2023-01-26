local opts = {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim", "lvim", },
      },
      workspace = {
        library = {
          [vim.fn.expand("$VIMRUNTIME/lua")] = true,
          [vim.fn.stdpath("config") .. "/lua"] = true,
        },
      },
    },
  },
}

require("lvim.lsp.manager").setup("sumneko-lua", opts)
