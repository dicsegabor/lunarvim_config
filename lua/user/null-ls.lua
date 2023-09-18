local status_ok, formatters = pcall(require, "lvim.lsp.null-ls.formatters")
if not status_ok then
  return
end

formatters.setup {
  {
    name = "prettier",
    command = "prettier",
    args = { "--print-width", "100" },
    filetypes = {
      "css",
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
      "json",
      "scss",
      "less",
      "lua",
      "python",
      "rust",
    },
  },
}
