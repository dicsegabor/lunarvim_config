local status_ok, formatters = pcall(require, "lvim.lsp.null-ls.formatters")
if not status_ok then
  return
end

formatters.setup {
  {
    command = "prettier",
    filetypes = {},
    "css",
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "json",
    "scss",
    "less",
  },
}
