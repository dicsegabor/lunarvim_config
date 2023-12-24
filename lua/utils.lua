local Log = require("lvim.core.log")

M = {}

function M.ReloadUserConfig()
	Log:debug("Config reload started")

	local hls_status = vim.v.hlsearch
	for name, _ in pairs(package.loaded) do
		if name:match("^user") then
			Log:debug("Module " .. name .. " set to nil")
			package.loaded[name] = nil
		end
	end

	require("lvim.config"):reload()
	Log:debug("Modules reloaded")

	-- dofile(vim.env.MYVIMRC)
	-- if hls_status == 0 then
	-- 	vim.opt.hlsearch = false
	-- end
end

return M
