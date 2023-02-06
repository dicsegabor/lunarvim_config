local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "user.lsp.settings.clangd"
require "user.lsp.settings.sumneko-lua"
require "user.lsp.settings.pyright"
require "user.lsp.settings.jsonls"
require "user.lsp.settings.rust-tools"

-- local status_ok, lsp_manager = pcall(require, "lvim.lsp.manager")
-- if not status_ok then
--   return
-- end

-- local servers = {
--   "clangd",
--   "sumneko-lua",
--   "pyright",
--   "jsonls",
-- }

-- for server in servers do
--   local opts = require("user.lsp.settings." .. server)
--   lsp_manager.setup(server, opts)
-- end
