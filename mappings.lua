---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    -- Buffer management
    ["<leader>q"] = {"<cmd> q! <CR>", "exit current tab"},
    ["<leader>w"] = {"<cmd> w <CR>", "save buffer"},
    ["<leader>s"] = {"<cmd> wq <CR>", "save & exit buffer"},
    ["<leader>t"] = {"<cmd> tabedit <CR>", "new tab"},

    -- Code Runner
    ["rr"] = {
      function()
        if vim.bo.modified then
          vim.api.nvim_command(":w")
        end
        local filename = vim.fn.expand('%')
        require("nvterm.terminal").send(" run " .. filename, "horizontal")
        vim.defer_fn(function()
          vim.cmd("wincmd j")
        end, 50)
      end,
      "spawn code-runner"
    },

    -- splitting
    -- overriding
    ["<leader>v"] = {"<cmd> vsplit <CR>", "split vertically"},
    ["<leader>h"] = {"<cmd> split <CR>", "split horizontally"},

    -- new terminals
    ["<leader>ht"] = {
      function()
        require("nvterm.terminal").new "horizontal"
      end,
      "new horizontal term",
    },

    ["<leader>vt"] = {
      function()
        require("nvterm.terminal").new "vertical"
      end,
      "new vertical term",
    },

    ["<leader>ft"] = {
      function()
        require("nvterm.terminal").new "float"
      end,
      "new floating term",
    },
  },

  -- Changing buffers directly from terminal mode
  t = {
    ["<C-j>"] = { vim.api.nvim_replace_termcodes("<C-\\><C-N><C-w>j", true, true, true), "move to buffer just below, in terminal mode" },
    ["<C-k>"] = { vim.api.nvim_replace_termcodes("<C-\\><C-N><C-w>k", true, true, true), "move to buffer just above, in terminal mode" },
    ["<C-h>"] = { vim.api.nvim_replace_termcodes("<C-\\><C-N><C-w>h", true, true, true), "move to buffer just left, in terminal mode" },
    ["<C-l>"] = { vim.api.nvim_replace_termcodes("<C-\\><C-N><C-w>l", true, true, true), "move to buffer just right, in terminal mode" },
  },
}

return M
