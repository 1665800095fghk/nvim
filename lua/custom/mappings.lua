---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

M.fghk = {
  n = {
    ["<C-a>"] = {
      "gg<S-v>G",
      "select all",
      opts = {
        noremap = true,
      },
    },
  },
  i = {
    ["<C-h>"] = { "<C-w>", "Ctrl + BackSpace remove a word", opts = { noremap = true } },
  },
}

-- more keybinds!

return M
