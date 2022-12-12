local setup, bufferline = pcall(require, "bufferline")
if not setup then
	return
end

local utilssetup, utils = pcall(require, "bufferline.utils")
if not utilssetup then
	return
end

local hl = utils.hl
local bg_current = hl.bg_or_default({'Normal'}, "#000000", 255)
local fg_current = hl.fg_or_default({'Normal'}, "#e63946",255)
-- local bg_current = hl.bg_or_default({ "Normal" }, "#efefef")
-- local fg_current  = hl.fg_or_default({'Normal'}, '#e63946', 255)

hl.set("BufferDefaultCurrentTarget", bg_current, fg_current)

bufferline.setup()
