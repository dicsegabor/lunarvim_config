lvim.log.level = "warn"
-- lvim.lsp.null_ls.setup = {
--   log = {
--     level = "debug",
--   },
-- }

lvim.colorscheme = "lunar"
vim.diagnostic.config({ virtual_text = false })
lvim.format_on_save.enabled = true
lvim.format_on_save.pattern = { "*.py", "*.json", "*.html", "*.css", "*.rs", "*.lua" }
