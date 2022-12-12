local status, toggleterm = pcall(require, "toggleterm")
if not status then
  return
end

toggleterm.setup({
  open_mapping = [[<c-/>]],
  start_in_insert = true,
  direction = "float",
  terminal_mappigns = true,
  float_opts = {
    border = "curved",
  },
  on_close = function() 
    -- vim.cmd(vim.api.nvim_replace_termcodes('normal <C-h>', true, true, true))
  end,
})

local Terminal = require("toggleterm.terminal").Terminal
local node = Terminal:new({ cmd = "node", hidden = true })
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })

function _LAZYGIT_TOGGLE()
  lazygit:toggle()
end

function _NODE_TOGGLE()
  node:toggle()
end
