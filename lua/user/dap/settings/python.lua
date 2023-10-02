local status_ok, dap = pcall(require, "dap-python")
if not status_ok then
	return
end

dap.setup("~/.virtualenvs/debugpy/bin/python")
