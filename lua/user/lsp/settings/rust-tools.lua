local status_ok, rt = pcall(require, "rust-tools")
if not status_ok then
  return
end

local custom_on_attach = function(client, bufnr)
  require("lvim.lsp").common_on_attach(client, bufnr)

  local opts = { noremap = true, silent = true, buffer = bufnr }

  vim.keymap.set("n", "<C-Space>", rt.hover_actions.hover_actions, opts)
  vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, opts)
end

local opts = {
  on_attach = custom_on_attach,
}

require("lvim.lsp.manager").setup("rust-tools", opts)
