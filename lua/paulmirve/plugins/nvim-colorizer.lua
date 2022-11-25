local status, nvimcolorizer = pcall(require, "colorizer")

if not status then
	return
end

nvimcolorizer.setup()
