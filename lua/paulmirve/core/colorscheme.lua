local status, _ = pcall(vim.cmd, "colorscheme carbonfox")
if not status then
	print("color scheme not found")
	return
end
