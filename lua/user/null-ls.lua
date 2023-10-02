local status_ok, formatters = pcall(require, "lvim.lsp.null-ls.formatters")
if not status_ok then
	return
end

formatters.setup({
	{
		command = "prettier",
		args = { "--print-width", "100" },
		filetypes = {
			"html",
			"css",
			"javascript",
			"javascriptreact",
			"typescript",
			"typescriptreact",
			"json",
			"scss",
			"less",
		},
	},
	{
		name = "black",
		command = "black -l 80 --preview",
	},
	{ command = "stylua", filetypes = { "lua" } },
	{ command = "rustfmt", filetypes = { "rust" } },
})

local status_ok, linters = pcall(require, "lvim.lsp.null-ls.linters")
if not status_ok then
	return
end

linters.setup({
	{
		command = "flake8",
		filetypes = { "python" },
	},
})
