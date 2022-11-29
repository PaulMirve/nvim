local status, toggleterm = pcall(require, "toggleterm")
if not status then
	return
end

toggleterm.setup({
	open_mapping = [[<c-/>]],
	direction = "float",
	float_opts = {
		border = "curved",
	},
})

local Terminal = require("toggleterm.terminal").Terminal
local node = Terminal:new({ cmd = "node", hidden = true })

function _NODE_TOGGLE()
	node:toggle()
end
