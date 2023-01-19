local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "user.lsp.settings.clangd"

-- local servers = {
--   "clangd",
-- }

-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, servers)

-- for server in servers do
--   require("user.lsp.settings." .. server)
-- end
