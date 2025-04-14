require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jj", "<ESC>")

map({ "n", "t" }, "<A-i>", function()
  require("nvchad.term").toggle {
    pos = "float",
    id = "floatTerm",
    float_opts = {
      relative = "editor",
      width = 0.9,
      height = 0.8,
      border = "single",
      row = 0.05, -- this centers vertically (1 - height) / 2
      col = 0.05, -- this centers horizontally (1 - width) / 2
    },
  }
end, { desc = "terminal toggle floating term" })

-- TODO: Close all opened bufers at once.
map("n", "<leader>X", ":bufdo bd<CR>", { desc = "close all buffers" })
