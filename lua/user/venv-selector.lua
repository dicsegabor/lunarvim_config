local status_ok, venv_selector = pcall(require, "venv-selector")
if not status_ok then
	return
end

venv_selector.setup()
