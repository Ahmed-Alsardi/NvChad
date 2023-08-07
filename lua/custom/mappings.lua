local M = {}

M.abc = {

        i = {
                ["jj"] = {"<ESC>", "Escape", opts = {nowait=true}},
                ["jk"] = {"<ESC>", "Escape", opts = {nowait=true}},
                ["kj"] = {"<ESC>", "Escape", opts = {nowait=true}},
                ["kk"] = {"<ESC>", "Escape", opts = {nowait=true}},
        }
}

M.gopher = {
  plugin = true,
  n = {
    ["<leader>gsj"] = {
      "<cmd> GoTagAdd json <CR>",
      "Add json struct tags"
    },
    ["<leader>gsy"] = {
      "<cmd> GoTagAdd yaml <CR>",
      "Add yaml struct tags"
    }
  }
}

return M
