local Log = require("lvim.core.log")

local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
	Log:error("Module 'which_key' not found.")
	return
end

local opts = {
	mode = "n", -- NORMAL mode
	prefix = "<leader>",
	buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
	silent = true, -- use `silent` when creating keymaps
	noremap = true, -- use `noremap` when creating keymaps
	nowait = true, -- use `nowait` when creating keymaps
}

local mappings = {
	t = {
		name = "Terminal",
		n = { "<cmd>lua _NODE_TOGGLE()<cr>", "Node" },
		u = { "<cmd>lua _NCDU_TOGGLE()<cr>", "NCDU" },
		t = { "<cmd>lua _HTOP_TOGGLE()<cr>", "Htop" },
		p = { "<cmd>lua _PYTHON_TOGGLE()<cr>", "Python" },
		f = { "<cmd>ToggleTerm direction=float<cr>", "Float" },
		h = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", "Horizontal" },
		v = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", "Vertical" },
	},
	v = {
		name = "VenvSelect",
		s = { "<cmd>:VenvSelect<cr>", "Select" },
		c = { "<cmd>:VenvSelectCached<cr>", "Cached" },
		d = { '<cmd>:lua require("venv-selector").deactivate_venv()<cr>', "Deactivate" },
	},
}

which_key.register(mappings, opts)
