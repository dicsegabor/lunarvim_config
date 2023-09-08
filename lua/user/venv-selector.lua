local status_ok, venv_select = pcall(require, "venv-selector")
if not status_ok then
  return
end

local custom_keys = {{
		"<leader>vs", "<cmd>:VenvSelect<cr>",
		"<leader>vc", "<cmd>:VenvSelectCached<cr>"
}}

local custom_event = "VeryLazy"

venv_select.setup({keys = custom_keys, event = custom_event,})
